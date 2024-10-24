#!/bin/bash
NAME="Haimen_Abbas"
SUFFIX="_labb"

echo "$NAME"

mkdir "$NAME$SUFFIX" || { echo "Failed to create directory"; exit 1; }

for f in *.java
do
    cp -v "$f" "$NAME$SUFFIX" || { echo "Failed to copy $f"; exit 1; }
done

cd Haimen_Abbas_labb/

pwd

echo "Compiling all java files.."

javac *.java || { echo "Compiling failed"; exit 1; }

echo "Running game.."

java GuessingGame || { echo "Failed to run game"; exit 1; }

echo "Game finished"

for f in *.class
do
    rm "$f" || { echo "Failed to delete $f"; exit 1; }
done

ls 
