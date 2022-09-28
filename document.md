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

![EC2 Creation](./img/1.ec2_creation.png)

2. Go into the directory where the downloaded private key resides and change the permission using this command
`sudo chmod 0400 <private-key-name>.pem

3. connect to the instance from your terminal by running
`ssh -i <private-key-name>.pem ubuntu@<Public-IP-address>`

## INSTALL APACHE AND UPDATE THE FIREWALL



