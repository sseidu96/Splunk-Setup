#!/bin/bash
# Author: Safiatu Safiatu
# Date: April 26 2026

winning_number=10

echo "Welcome to 1xbet! Good luck!!"
sleep 3

read -p "Please enter a choice between (1-1000): " USER_CHOICE

if [ "$USER_CHOICE" -eq "$winning_number" ]
then
    echo "Congratulations! You won!!!"

elif [ "$USER_CHOICE" -lt "$winning_number" ]
then
    echo "Your choice is less than the winning number. Please try again."

elif [ "$USER_CHOICE" -gt "$winning_number" ]
then
    echo "Please choose a lower number."

else
    echo "Sorry, come back when you make more money."
fi