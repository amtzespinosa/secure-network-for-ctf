cd C:/Program Files/Oracle/VirtualBox/

vboxmanage dhcpserver add --network=SecureNetwork --server-ip=192.168.1.1 --lower-ip=192.168.1.10 --upper-ip=192.168.1.200 --netmask=255.255.255.0 --enable
