#!/bin/bash

curl -X POST \
-H 'Content-Type: application/json' \
-H 'Authorization:DZjMdhCAJcMZKL4C5kM5rw==' \
-H 'Accept: application/json' \
-d '{"username" : "hwang" , "password" : "BLue1998"}'  \
https://photoserver.mde.epf.fr/api/Session::login

albumID=$(curl -X POST \
-H 'Content-Type: application/json' \
-H 'Authorization:DZjMdhCAJcMZKL4C5kM5rw==' \
-H 'Accept: application/json' \
-s https://photoserver.mde.epf.fr/api/Albums::get \
| jq '.albums[0].id' \
| awk -F '"' '{print $2}')

photo_title=($(curl -X POST \
                    -H 'Authorization: DZjMdhCAJcMZKL4C5kM5rw==' \
                    -H 'Content-Type: application/json' \
                    -H 'Accept: application/json' \
                    -b lychee_cookie.cookie \
                    -d '{"albumID":"'$albumID'"}' \
                    -s https://photoserver.mde.epf.fr/api/Album::get \
                    | jq -r ".photos[].title"))

if mount | grep -w "192.168.138.246.*home/datasource" > /dev/null; then
    for file in /home/datasource/*.jpg; do
        file_name=$(basename "$file" .jpg)
        if echo "${photo_title[@]}" | grep -q "$file_name"; then
            photo_title=(${photo_title[*]/$file_name})
        fi
    done
fi

list_id_title=$(curl -X POST \
                    -H 'Authorization: DZjMdhCAJcMZKL4C5kM5rw==' \
                    -H 'Content-Type: application/json' \
                    -H 'Accept: application/json' \
                    -b lychee_cookie.cookie \
                    -d '{"albumID":"'$albumID'"}' \
                    https://photoserver.mde.epf.fr/api/Album::get \
                    | jq -r '.photos[] | [.id, .title] | @json' | paste -sd "," -)
list_id_title="[$list_id_title]"

for photo in "${photo_title[@]}"; do
    photoID=$(echo $list_id_title | jq -r '.[] | select(.[1] == "'$photo'") | .[0]')
    curl -X POST \
        -H 'Content-Type: application/json' \
        -H 'Authorization:DZjMdhCAJcMZKL4C5kM5rw==' \
        -H 'Accept: application/json' \
        -d '{"shall_override" : true , "photoIDs" : ["'$photoID'"]}' \
        https://photoserver.mde.epf.fr/api/Photo::delete
done

curl -X POST \
-H 'Content-Type: application/json' \
-H 'Authorization:DZjMdhCAJcMZKL4C5kM5rw==' \
-H 'Accept: application/json' \
-d '{"username" : "hwang" , "password" : "BLue1998"}'  \
https://photoserver.mde.epf.fr/api/Session::logout

exit 0


for file in /home/datasource/*.jpg; do
        file_name=$(basename "$file" .jpg)
done

if echo "${photo_title[@]}" | grep -q "$file_name"; then
    echo "in local and site"
fi
if ! echo "${photo_title[@]}" | grep -q "$file_name"; then
    echo "not in site"
fi