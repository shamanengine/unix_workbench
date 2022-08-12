#!/usr/bin/bash
# File: guessinggame.sh

function guess {
    if [[ $1 -eq $2 ]]; then
        echo "You guessed"
        result=true
    elif [[ $1 -lt $2 ]]; then
        echo "There are less files in the directory"
    else
        echo "There are more files in the directory"
    fi
}

num_of_files=$(ls | wc -l)
result=false
while [[ "$result" = false ]]
do
    echo -n "Try to guess, how many files are in the current directory: "
    read response
    guess $num_of_files $response
done
