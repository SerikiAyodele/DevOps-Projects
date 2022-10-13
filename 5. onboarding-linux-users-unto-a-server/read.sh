#!/bin/bash
userfile = /shell/names.csv
username =$(cat /shell/names.csv | tr 'A-Z' 'a-z')

for user in username
do
  grep $user
  useradd $user
  useradd -g developers $user
  usermod -d /home $user
  test -d /.ssh && echo exists
  mkdir /home/$user/.ssh
  touch /home/$user/.ssh/authorized_keys
done 