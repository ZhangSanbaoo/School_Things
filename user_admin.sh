#!/bin/bash
echo -e "Welcome in EPF Users’ administration Super Script \nScript by WANG. v20230227.1"
loop=0
while [ $loop -eq 0 ]; do
    echo "1 – Show user accounts present on the system"
    echo "2 – Test if a user account is present on the system"
    echo "3 – Quit the program"
    LIST=()
    while read line
    do
        LIST+=("$line")
    done < /etc/passwd
    read selection
    case $selection in
        [1])
            cat /etc/passwd
        ;;
        [2])
        echo "Please enter the account that you want to search."
            read user_search
            found=false
            counter=0
            for item in "${LIST[@]}"; do
                counter=$((counter+1))
                if [[ "$item" == *"${user_search}"* ]]; then
                    found=true
                    echo "${user_search} is in the user list, do you want to delete it? [y/n]"
                    read reponse
                    if [[ "$reponse" == "y" || "$reponse" == "Y" ]];then
                        sudo userdel -r "${user_search}"
                        echo "${user_search} has been deleted."
                    fi
                    break
                fi
            done
            if [ $found == false ]; then
                echo "${user_search} isn't in the user list, do you want to create it? [y/n]"
                read reponse
                if [[ "$reponse" == "y" || "$reponse" == "Y" ]];then
                    echo "Please enter the password of your account."
                    read password
                    sudo adduser $user_search --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
                    echo "$user_search:$password" | sudo chpasswd
                    echo "${user_search} has been created."
                fi
            fi
        ;;
        [3])
            echo "Bye Bye!"
            loop=1
        ;;
        *)
            echo "wrong entry, please try again."
        ;;
    esac
done
exit 0