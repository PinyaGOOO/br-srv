#!/bin/bash
nmcli con modify Проводное\ подключение\ 1 ipv4.method manual ipv4.addresses 192.168.100.10/28
nmcli con modify Проводное\ подключение\ 1 ipv4.method manual ipv4.gateway 192.168.100.1

nmcli con modify Проводное\ подключение\ 1 ipv6.method manual ipv6.addresses FD24:192::10/124
nmcli con modify Проводное\ подключение\ 1 ipv6.method manual ipv6.gateway FD24:192::1






