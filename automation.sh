#!/bin/sh
sudo apt update
sudo apt install -y apache2 apache2-utils
sudo systemctl status apache2
sudo systemctl enable apache2
