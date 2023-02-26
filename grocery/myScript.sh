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
    # case "$item" in
    #     *"ananas"*|*"apple"*|*"bananas"*|*"blueberry"*|*"pear"*|*"raspberry"*)
    #         mv -v "$item" ./fruit/
    #         echo 'Fruit'
    #         ;;
    #     *"cucumber"*|*"eggplant"*|*"salad"*|*"tomato"*|*"zucchini"*)
    #         mv "$item" ./vegetable/
    #         echo -v 'Vegetable'
    #         ;;
    # esac
for file in *.txt; do
    LIST+=("$file")
done
for item in "${LIST[@]}"; do
    if [[ "$item" == *"ananas"* || "$item" == *"apple"* || "$item" == *"bananas"* || "$item" == *"blueberry"* || "$item" == *"pear"* || "$item" == *"raspberry"* ]]; then
    echo "$item has been moved to fruit folder."
    mv "$item" ./fruit/
    elif  [[ "$item" == *"cucumber"* || "$item" == *"eggplant"* || "$item" == *"salad"* || "$item" == *"tomato"* || "$item" == *"zucchini"* ]]; then
    echo "$item has been moved to vegetable folder."
    mv "$item" ./vegetable/
    fi
done
