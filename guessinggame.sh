
#!/bin/bash

# Function to count files in current directory
count_files() {
    find . -maxdepth 1 -type f ! -name '.*' | wc -l | tr -d ' '
}

# Get the number of files
total_files=$(count_files)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Ask the user until the answer is correct
while true
do
    read -r -p "Enter your guess: " guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid number."
    elif [ "$guess" -lt "$total_files" ]
    then
        echo "Your guess is too low. Try again!"
    elif [ "$guess" -gt "$total_files" ]
    then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed correctly!"
        echo "The number of files is $total_files."
        break
    fi
done
