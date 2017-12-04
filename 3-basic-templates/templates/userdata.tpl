#!/bin/bash
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install -y ${webserver}
sudo service ${webserver} restart