#!/bin/bash

sudo apt update;
sudo apt install mysql-server;
sudo systemctl start mysql.service;
sudo mysql_secure_installation;
sudo mysql;


