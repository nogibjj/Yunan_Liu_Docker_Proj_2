#! /usr/bin/env bash
 
echo "What's your name?"
read name
if [ $name ]; then 
    echo "Hello $name!"
else
    echo "Please enter a valid name"
fi

echo "Enter the file name"
read file
if [ -e "$file" ]; then
    sort "$file" -o sorted_file.txt
    while read -r line
    do
        echo "$line"
    done < "sorted_file.txt"
else
    echo "$file does not exist"
fi