#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

#start by emptying the rows in the tables of the database so we can rerun the file
echo $($PSQL "TRUNCATE TABLE games, teams")


# read the games.csv file using cat and apply a while loop to read row by row
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != 'winner' ]]
  then WINNER_TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
      if [[ -z $WINNER_TEAM_NAME ]]
      then INSERT_WINNER_TEAM_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
          if [[ $INSERT_WINNER_TEAM_NAME == 'INSERT 0 1' ]]
          then echo Insert winner team name $WINNER_TEAM_NAME 
          fi
      fi  
  fi

  if [[ $OPPONENT != 'opponent' ]]
  then OPPONENT_TEAM_NAME=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
      if [[ -z $OPPONENT_TEAM_NAME ]]
      then INSERT_OPPONENT_TEAM_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
          if [[ $INSERT_OPPONENT_TEAM_NAME == 'INSERT 0 1' ]]
          then echo Insert opponent team name $OPPONENT_TEAM_NAME 
          fi
      fi  
  fi

  if [[ YEAR != "year" ]]
    then
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
        if [[ $INSERT_GAMES == 'INSERT 0 1' ]]
          then echo New games $YEAR $ROUND $WINNER_ID $OPPONENT_ID $WINNER_GOALS $OPPONENT_GOALS
        fi
  fi
  
done
