#! /bin/bash

mapfile -t myArray < ./functions/global_vars.sh
for stat in "${myArray[@]}"; do
 echo "$stat" >> ./test_2.sh
done
echo ""
