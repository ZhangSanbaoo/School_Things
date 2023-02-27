#!/bin/bash

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
exit 0