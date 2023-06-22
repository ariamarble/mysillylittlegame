#!/bin/bash
#
# Variables
#
# name - name of player
# realm - reason user is visiting the magical realm
# question - willing to embark on quest

# User input dialog
name=$(zenity --entry --title "What is your name?" --text "Enter your name:")

# Check if the user clicked "Cancel" or provided empty input
if [[ -z $name ]]; then
    zenity --error --text "Name cannot be empty."
    exit 1
fi

zenity --info --text "Hello, $name! What brings you to my realm?"

realm=$(zenity --entry --title "Why are you here??" --text "Enter your answer:")

# Error check
if [[ -z $realm ]]; then
    zenity --error --text "Reason for visiting realm cannot be empty."
    exit 1
fi

zenity --info --text "Interesting... I would not have expected $realm would bring you to me $name."

question=$(zenity --entry --title "Are you ready?" --text "$name, are you willing to embark on an epic quest to acquire $realm?")

# if-else statements
if [ "$question" == "yes" ]; then
    zenity --info --text "Glad to hear it! Let's begin..."
elif [ "$question" == "no" ]; then
    zenity --info --text "I am very sad to hear that $name... Leave this realm at once!!!"
else
    zenity --error --text "Your answer must be either 'yes' or 'no'."
    exit 1
fi
