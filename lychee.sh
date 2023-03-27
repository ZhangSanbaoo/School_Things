#!/bin/bash

#Login to photo server.
curl -X POST \
-H 'Content-Type: application/json' \
-H 'Authorization:DZjMdhCAJcMZKL4C5kM5rw==' \
-H 'Accept: application/json' \
-d '{"username" : "hwang" , "password" : "BLue1998"}'  \
https://photoserver.mde.epf.fr/api/Session::login

#Get personal albumID.
albumID=$(curl -X POST \
-H 'Content-Type: application/json' \
-H 'Authorization:DZjMdhCAJcMZKL4C5kM5rw==' \
-H 'Accept: application/json' \
-s https://photoserver.mde.epf.fr/api/Albums::get \
| jq '.albums[0].id' \
| awk -F '"' '{print $2}')

#Get the title of all the photos in the album.
photo_title=($(curl -X POST \
                    -H 'Authorization: DZjMdhCAJcMZKL4C5kM5rw==' \
                    -H 'Content-Type: application/json' \
                    -H 'Accept: application/json' \
                    -b lychee_cookie.cookie \
                    -d '{"albumID":"'$albumID'"}' \
                    -s https://photoserver.mde.epf.fr/api/Album::get \
                    | jq -r ".photos[].title"))

#Check if the directory is mounted.
if mount | grep -w "192.168.138.246.*home/datasource" > /dev/null; then

    #for all photo in datasource folder.
    for file in /home/datasource/*.jpg; do

        #Capture file's name(remove the directory address and .jpg suffix)
        file_name=$(basename "$file" .jpg)

        #Check if the photo is already in the album
        if echo "${photo_title[@]}" | grep -q "$file_name"; then
            #If so, delete it from the photo_title list
            #So the photo_title contains only titles which don't exist in the directory.
            #This will help us to delete it.
            photo_title=(${photo_title[*]/$file_name})

        #If the photo is not in the album, upload it and add tags
        elif ! echo "${photo_title[@]}" | grep -q "$file_name"; then

            #Get tags by using getColor.py script.
            tags='["'$(/home/datasource/getColor.py "$file" | sed 's/,/","/g')'"]'

            #Upload the photo.
            photo_uploaded=$(curl -X POST \
                                -H 'Content-Type: multipart/form-data' \
                                -H 'Authorization:DZjMdhCAJcMZKL4C5kM5rw==' \
                                -H 'Accept: application/json' \
                                -F "albumID=$albumID" \
                                -F "file=@$file" \
                                -s https://photoserver.mde.epf.fr/api/Photo::add)

            #Get the uploaded photo's id.
            photoIDs=$(echo "$photo_uploaded" | grep -oP '(?<="id":")[^"]*')

            #With the id we just get, we can upload its tags.
            curl -X POST \
                -H 'Content-Type: application/json' \
                -H 'Authorization:DZjMdhCAJcMZKL4C5kM5rw==' \
                -H 'Accept: application/json' \
                -d '{"shall_override" : true , "photoIDs" : ["'$photoIDs'"] , "tags" : '$tags'}' \
                -s https://photoserver.mde.epf.fr/api/Photo::setTags
        fi
    done
fi

#Create a list which contains all photo's id and title in the album.
list_id_title=$(curl -X POST \
                    -H 'Authorization: DZjMdhCAJcMZKL4C5kM5rw==' \
                    -H 'Content-Type: application/json' \
                    -H 'Accept: application/json' \
                    -b lychee_cookie.cookie \
                    -d '{"albumID":"'$albumID'"}' \
                    -s https://photoserver.mde.epf.fr/api/Album::get \
                    | jq -r '.photos[] | [.id, .title] | @json' | paste -sd "," -)

#Make it an array.
list_id_title="[$list_id_title]"

for photo in "${photo_title[@]}"; do
    #Found the id of the photo we want to delete.
    photoID=$(echo $list_id_title | jq -r '.[] | select(.[1] == "'$photo'") | .[0]')

    #Delete that photo by using the id we just found.
    curl -X POST \
        -H 'Content-Type: application/json' \
        -H 'Authorization:DZjMdhCAJcMZKL4C5kM5rw==' \
        -H 'Accept: application/json' \
        -d '{"shall_override" : true , "photoIDs" : ["'$photoID'"]}' \
        -s https://photoserver.mde.epf.fr/api/Photo::delete
done

#Logout from the photo server.
curl -X POST \
-H 'Content-Type: application/json' \
-H 'Authorization:DZjMdhCAJcMZKL4C5kM5rw==' \
-H 'Accept: application/json' \
-d '{"username" : "hwang" , "password" : "BLue1998"}'  \
https://photoserver.mde.epf.fr/api/Session::logout

exit 0

