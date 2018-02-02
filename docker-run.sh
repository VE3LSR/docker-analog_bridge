#!/bin/bash

source docker-vars.sh

sudo docker rm $APP
sudo docker run -it \
    --name $APP \
    -p 62031:62031/udp \
      -v /home/Repos/LSR/hblink/hblink.cfg:/opt/HBlink/hblink.cfg \
      -v /home/Repos/LSR/hblink/hb_routing_rules.py:/opt/HBlink/hb_routing_rules.py \
      -v /home/Repos/LSR/hblink/hb_confbridge_rules.py:/opt/HBlink/hb_confbridge_rules.py \
    $NAME

