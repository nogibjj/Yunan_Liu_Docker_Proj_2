#! /usr/bin/env bash
 
#print greeting message
echo "What's your name?"
read name
if [ $name ]; then 
    echo "Hello $name!"
else
    echo "Please enter a valid name"
fi

#file sorting function
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

#add to the end of file
echo "Enter the content you want to add to the end of the sorted file"
read content
echo "$content" >> sorted_file.txt