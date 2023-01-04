# DevOps Tooling Website Solution
Some of the developers from Nautilus project team have asked for SFTP access to at least one of the app server in Stratos DC. After going through the requirements, the system admins team has decided to configure the SFTP server on App Server 2 server in Stratos Datacenter. Please configure it as per the following instructions:



a. Create an SFTP user mark and set its password to Rc5C9EyvbU.

b. Password authentication should be enabled for this user.

c. Set its ChrootDirectory to /var/www/webapp.

d. SFTP user should only be allowed to make SFTP connections.



```
[ec2-user@ip-172-31-1-111 ~]$ systemctl status php-fpm.service
● php-fpm.service - The PHP FastCGI Process Manager
     Loaded: loaded (/usr/lib/systemd/system/php-fpm.service; enabled; vendor preset: disabled)
     Active: active (running) since Wed 2023-01-04 08:39:35 UTC; 1min 35s ago
   Main PID: 14439 (php-fpm)
     Status: "Processes active: 0, idle: 5, Requests: 0, slow: 0, Traffic: 0req/sec"
      Tasks: 6 (limit: 4384)
     Memory: 12.6M
        CPU: 57ms
     CGroup: /system.slice/php-fpm.service
             ├─14439 "php-fpm: master process (/etc/php-fpm.conf)"
             ├─14440 "php-fpm: pool www"
             ├─14441 "php-fpm: pool www"
             ├─14442 "php-fpm: pool www"
             ├─14443 "php-fpm: pool www"
             └─14444 "php-fpm: pool www"

Jan 04 08:39:35 ip-172-31-1-111.ec2.internal systemd[1]: Starting The PHP FastCGI Process Manager...
Jan 04 08:39:35 ip-172-31-1-111.ec2.internal systemd[1]: Started The PHP FastCGI Process Manager.
```