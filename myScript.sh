#!/bin/bash
# for item in ./grocery/*.txt
# do
#         case "$item" in
#             ananas*|apple*|bananas*|blueberry*|pear*|raspberry*)
#             mv "$item" ./grocery/fruit
#             echo 'twat'
#             ;;
#             cucumber*|eggplant*|salad*|tomato*|zucchini*)
#             mv "$item" .grocery/vegetable
#             ;;
#             esac
#     done

LIST = grep ./grocery/*.txt
for item in LIST; do
    case "$item" in
        ananas*|apple*|bananas*|blueberry*|pear*|raspberry*)
            mv "$item" ./fruit/
            echo 'twat'
            ;;
        cucumber*|eggplant*|salad*|tomato*|zucchini*)
            mv "$item" ./vegetable/
            ;;
    esac
done
