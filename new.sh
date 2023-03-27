photo_title=($(curl -X POST \
                    -H 'Authorization: DZjMdhCAJcMZKL4C5kM5rw==' \
                    -H 'Content-Type: application/json' \
                    -H 'Accept: application/json' \
                    -b lychee_cookie.cookie \
                    -d '{"albumID":"'$albumID'"}' \
                    -s https://photoserver.mde.epf.fr/api/Album::get \
                    | jq -r ".photos[].title"))
echo "${photo_title[@]}"
if mount | grep -w "192.168.138.246.*home/datasource" > /dev/null; then

    for file in /home/test/*.jpg; do
        echo $file
        file_name=$(basename "$file" .jpg)
        echo $file_name
        if echo "${photo_title[@]}" | grep -q "$file_name"; then
            photo_title=(${photo_title[*]/$file_name})
            echo "${photo_title[@]}"
        elif ! echo "${photo_title[@]}" | grep -q "$file_name"; then
            echo "${photo_title[@]}"
            echo "tags"
            echo "photo_uploaded"
        fi
    done
fi

photo_title=($(curl -X POST \
                    -H 'Authorization: DZjMdhCAJcMZKL4C5kM5rw==' \
                    -H 'Content-Type: application/json' \
                    -H 'Accept: application/json' \
                    -b lychee_cookie.cookie \
                    -d '{"albumID":"'$albumID'"}' \
                    -s https://photoserver.mde.epf.fr/api/Album::get \
                    | jq -r ".photos[].title"))
echo "${photo_title[@]}"
 if echo "${photo_title[@]}" | grep -q "$file_name"; then
            photo_title=(${photo_title[*]/$file_name})
            echo "${photo_title[@]}"
        fi

counter=5
if [ $counter == 5 ] ;then
    echo "1"
fi
if [ $counter -gt 2 ] ;then
    echo "2"
fi