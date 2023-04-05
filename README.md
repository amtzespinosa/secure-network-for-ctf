# Secure Intranet for CTFs on VirtualBox
The process is quite easy but it allows you to run VulnHub machines without any risks. This way you can be safe while you hack into vulnerable machines as these machines won't be connected to the Internet. 

**Note:** This guide is for Windows and VirtualBox. 

We have to create a DHCP server where our VirtalBox machines can connect and comunicate between them. For that, we just need a simple command so let's run our Windows Terminal. 

 1. Ctrl + R
 2. `cmd`
 3. Enter

Now we have our terminal. Change directory to **C:/Program Files/Oracle/VirtualBox/** with the command `cd`:

    cd C:/Program Files/Oracle/VirtualBox/

Now let's add our DHCP server to the VBox configuration:

    vboxmanage dhcpserver add --network=[network name] --server-ip=[server IP] --lower-ip=[lower IP] --upper-ip=[upper IP] --netmask=255.255.255.0 --enable

- **[network name]:** here you can name your intranet as you wish.
- **[server IP]:** here you can set the IP for your server. I went for 192.168.1.1
- **[lower IP]:** the first IP to be assign once you use the network for the first time.
- **[upper IP]:** the last IP that would be assign.

In case you want to copy my setup:

    vboxmanage dhcpserver add --network=SecureNetwork --server-ip=192.168.1.1 --lower-ip=192.168.1.10 --upper-ip=192.168.1.200 --netmask=255.255.255.0 --enable

Now, on VBox, before firing you Kali Machine up, go to Settings -- Network. Here you want to change the configuration of your first Network Adapter to Intranet and choose the DHCP server you just configured. **Then you can enable a second Network Adapter with a NAT configuration so your Kali machine will be conected to both Internet and Intranet. Useful for downloading payloads.**

For the vulnerable machines, just connect them to the same Intranet and you are ready to go.

If you need any help, do not hesitate to contact me! Happy Hacking!
