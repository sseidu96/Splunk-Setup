#!/bin/bash
Author : Safiatu Safiatu
Date : April 26 2026

winning_number=10

echo "Welcome to 1xbet! good luck !!"
sleep 3

read -p "please enter a choice between between (1-1000)" USER_CHOICE

if [ $USER_CHOICE -eq $winning_number ]

then

echo "Congratulation You won !!!"

else
echo "Sorry come back when You make more money"

fi