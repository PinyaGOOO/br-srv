#!/bin/bash
dnf remove -y git
nmcli con modify ens18 ipv4.method manual ipv4.addresses 192.168.100.10/28
nmcli con modify ens18 ipv4.gateway 192.168.100.1

timedatectl set-timezone Europe/Moscow
sed -i '3s/^/#/' /etc/chrony.conf
sed -i '4s/^/#/' /etc/chrony.conf
sed -i '5s/^/#/' /etc/chrony.conf
sed -i '6s/^/#/' /etc/chrony.conf
sed -i '7a\server 172.16.100.1 iburst prefer' /etc/chrony.conf

useradd -c "Branch admin" Branch_admin -U
echo "Branch_admin:P@ssw0rd" | chpasswd
useradd -c "Network Admin" Network_admin -U
echo "Network_admin:P@ssw0rd" | chpasswd

hostnamectl set-hostname BR-SRV; exec bash






