#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username: "
read USERNAME
USER=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")

if [[ -z $USER ]]
then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  ADD_USER=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')")
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER")
  BEST_GAME=$($PSQL "SELECT min(guesses) FROM games WHERE user_id = $USER")
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

NUMBER=$(($RANDOM % 1001))
#echo $NUMBER
GUESSES=0

echo -e "\nGuess the secret number between 1 and 1000:"

until [[ $GUESS -eq $NUMBER ]]
do

read GUESS

  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
  else
    GUESSES=$(( $GUESSES + 1 ))
    if [[ $GUESS -gt $NUMBER ]]
    then
      echo -e "\nIt's lower than that, guess again:"
    elif [[ $GUESS -lt $NUMBER ]]
    then
      echo -e "\nIt's higher than that, guess again:"
    fi
  fi
done

USER=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'")
INSERT_DATA=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER, $GUESSES)")

echo -e "\nYou guessed it in $GUESSES tries. The secret number was $NUMBER. Nice job!"
