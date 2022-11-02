# WEB SOLUTION WITH WORDPRESS

1. Servers, one acts as the database and the other as the webserver
![console](img/1.png)

2. Create and attach 3 Vloumes for the webserver
![volumes](img/2.png)

3. Use the `lsblk` command to see the volumes created
![lsblk](img/3.png)

4.`df h` to see the free space in the server
![df -h](img/4.png)

5. `gdisk` utility to craete single partitions on each disk
![gdisk](img/5.png)

![lsblk](img/6.png)

6. Install lvm2: LVM2 refers to the userspace toolset that provide logical volume management facilities on linux
![lvm2](img/7.png)

7. check for available partition
![img](img/8.png)

8. Volumes added to a group names webdata-vg
![img](img/9.png)

9. `lvcreate` to create logical volumes
![img](img/10.png)

10. view the entire set up with
`sudo vgdisplay -v #view complete setup - VG, PV, and LV
sudo lsblk `
![img](img/11.png)

11. 

 
 