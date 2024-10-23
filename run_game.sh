#!/bin/bash
NAME="Haimen_Abbas"
SUFFIX="_labb"

echo "$NAME"

mkdir "$NAME$SUFFIX"

for f in *.java
do
    cp -v "$f" "$NAME$SUFFIX"
done

cd Haimen_Abbas_labb/

pwd

echo "Compiling all java files.."

javac *.java

echo "Running game.."

java GuessingGame

echo "Game finished"

for f in *.class
do
    rm "$f" 
done

ls 
