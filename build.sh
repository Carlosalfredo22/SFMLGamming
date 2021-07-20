#!/bin/bash

appRunning=1
while [ $appRunning ]; do
  echo Compile and run[1], Compile[2], Compile[3]
  read user
  if [[ $user == 1 ]]; then
    echo Compiling and then running...
    g++ -c ventanaSMFL.cpp
    g++ ventanaSMFL.o -o sfml-app -lsfml-graphics -lsfml-window -lsfml-system
  elif [[ $user == 2 ]]; then
    ./sfml-app
  elif [[ $user == 3 ]]; then
    exit
  fi
done
