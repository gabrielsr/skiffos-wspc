# /etc/network/interfaces:

auto eth0
#iface eth0 inet dhcp
iface eth0 inet static
   address 192.168.1.191
   netmask 255.255.255.0
   gateway 192.168.1.1
   dns-nameservers 192.168.1.1


# sudo service networking restart

# Change hostname
hostnamectl
hostnamectl set-hostname pine641