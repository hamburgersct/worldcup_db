#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

echo $($PSQL "TRUNCATE teams, games;")
# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOAL O_GOAL
do
  if [[ $YEAR != "year" ]]
    then
      # first, insert team information
      W_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
      O_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
      # if not found
      if [[ -z $W_TEAM_ID ]]
      then 
        INSERT_W_TEAM_RESULT=$($PSQL "INSERT INTO teams (name) VALUES ('$WINNER');")
        echo $INSERT_W_TEAM_RESULT
      fi
      if [[ -z $O_TEAM_ID ]]
      then
        INSERT_O_TEAM_RESULT=$($PSQL "INSERT INTO teams (name) VALUES ('$OPPONENT');")
        echo $INSERT_O_TEAM_RESULT
      fi

      # second, insert game information
      W_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
      O_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
      INSERT_GAME_RESULT=$($PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $W_TEAM_ID, $O_TEAM_ID, $W_GOAL, $O_GOAL);")
      if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted game, $WINNER - $OPPONENT
      fi
  fi
done