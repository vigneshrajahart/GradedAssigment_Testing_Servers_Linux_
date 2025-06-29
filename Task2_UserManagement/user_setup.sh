#!/bin/bash
for user in sarah mike; do
  sudo adduser --disabled-password --gecos "" $user
  echo "$user:SecurePass123" | sudo chpasswd
  sudo mkdir -p /home/$user/workspace
  sudo chown $user:$user /home/$user/workspace
  sudo chmod 700 /home/$user/workspace
  sudo chage -M 30 $user
done
