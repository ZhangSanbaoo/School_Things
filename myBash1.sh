#!/bin/bash
condition=0
while [ $condition == 0 ]; do
    echo "How old are you ?"
    read age
    if [ $age -lt 0 ] || [ $age -gt 120 ] ; then
        echo "Wrong age"
    elif [ $age -ge 18 ] ; then
        echo "You are major."
        condition=1
        else
        echo "You are not major (yet)."
        condition=1
        fi
done
exit 0