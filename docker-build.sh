#!/bin/bash

source docker-vars.sh

SAMPLES=''

for SAMPLE in $SAMPLES; do
    if [ ! -f $SAMPLE ]; then
        wget https://raw.githubusercontent.com/n0mjs710/HBlink/HB_Bridge/$SAMPLE
    fi
done

sudo docker build -t $NAME .


