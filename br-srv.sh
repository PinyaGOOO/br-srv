#!/bin/bash
dnf remove -y git
nmcli con modify ens18 ipv4.method manual ipv4.addresses 192.168.100.10/28
nmcli con modify ens18 ipv4.gateway 192.168.100.1

nmcli con modify ens18 ipv6.method manual ipv6.addresses FD24:192::10/124
nmcli con modify ens18 ipv6.gateway FD24:192::1

useradd -c "Branch admin" branch_admin -U
echo "branch_admin:P@ssw0rd" | chpasswd
useradd -c "Network Admin" network_admin -U
echo "network_admin:P@ssw0rd" | chpasswd

hostnamectl set-hostname br-srv; exec bash






