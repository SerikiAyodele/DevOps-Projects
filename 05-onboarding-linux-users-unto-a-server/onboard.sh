#!/bin/bash
userfile=$(cat names.csv)
PASSWORD=password

   if [ $(id -u) -eq 0]; then
:
      for user in $userfile;
      do
         echo $user
      if id "$user" &>/dev/null
      then
         echo "User Exist"
      else

      useradd -m -d /home/$user -s /bin/bash -g developers $user
      echo "New User Created"
      echo

      su - -c "mkdir ~/.ssh" $user
      echo ".ssh directory created for new user"
      echo 

      su - -c "chmod 700 ~/.ssh" $user
      echo "user permission for .ssh directory set"
      echo

      su - -c "touch ~/.ssh/authorized_keys" $user
      echo "Authorized File Created"
      echo

      su - -c "chmod 600 ~/.ssh/authorized_keys" $user
      echo "user permission for the Authorised Key File set"
      echo

      cp -R "/home/ubuntu/shell/id_rsa.pub" "/home/$user/.ssh/authorized_keys"
      echo "copied the public key to the New User account on the server"
      echo
      echo

      echo "USER CREATED"

sudo echo -e "$PASSWORD\n$PASSWORD" | sudo passwd "$user"
sudo passwd -x 5 $user
            fi
         done
   else
   echo "only admins can onboard a user"
   fi
