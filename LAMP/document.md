# LAMP STACK IMPLEMENTATION WITH AWS

## STACK
* Linux
* Apache
* MySQL
* PHP

## PRE-REQUISITE
1. Create an EC2 instance on AWS with the  following specification
> Instance ID : t2.micro
  Type : Ubuntu server 22.04 LTS (HVM)

![EC2 Creation](/img/img1.png)

2. Go into the directory where the downloaded private key resides and change the permission using this command
`sudo chmod 0400 <private-key-name>.pem

3. connect to the instance from your terminal by running
`ssh -i <private-key-name>.pem ubuntu@<Public-IP-address>`

## INSTALL APACHE AND UPDATE THE FIREWALL
Apache server is a widely used web server and runs on 67% of all webservers in the world
1. Install Apache by running the command
`#update a list of packages in package manager
sudo apt update

#run apache2 package installation
sudo apt install apache2`

run `sudo systemctl status apache2` to verify that apache is running, it should be green

2. We'll need to open port 80 so our web server can access the internet, so add an inbound rule to the ec2 configuration to allow access through port 80

![EC2 Creation](/img/img2.png)

3. We can access the server both locally and from our browser
`curl http://localhost:80 #accessing through DNS name
or
curl http://127.0.0.1:80` #accessing through IP address

To access throught the internet, run
`http://<Public-IP-Address>:80`

## INSTALL MYSQL
MySQL is a popular Database Management System and we'll be using it here to store and manage data for the site.
1. Run the command to install the software 
`sudo apt install mysql-server`
you'll be prompted to confirm the installation, press 'Y'

2. After installation log into the MySQL  console by running:
`sudo mysql`
sudo indicates thet you'll be connecting to the database server as the root user

3. Set the password for the root user  using mysql_native_password as the default authentication method. We'll be using 064Rm1U!i96M as the password here
`ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '064Rm1U!i96M';`
tyoe exit to leave the mysql shell

4. It's recommended to run a security script that comes pre-installed with MySQL, to remove some default settings that might be insecure.
`sudo mysql_secure_installation`
This will ask if you want to configure the VALIDATE PASSWORD PLUGIN
