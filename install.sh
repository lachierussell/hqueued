#!/bin/bash

sudo cp ./hqueued /usr/local/bin/hqueued
sudo cp ./hqueued.service /lib/systemd/system/hqueued.service
sudo cp ./hqueued.conf /etc/opt/
sudo cp ./hqueued.data /var/opt/hqueued.data
sudo chmod 666 /var/opt/hqueued.data

sudo systemctl daemon-reload
