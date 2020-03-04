#!/bin/bash
# Берем мак адрес сетевухи в переменную
MAC=$(cat /sys/class/net/eth0/address)
#Пишем переменную в конфиг первого интерфейса
sed -i 's/.*HWADDR=.*/HWADDR='$MAC'/' /etc/sysconfig/network-scripts/ifcfg-eth0
# Берем в переменную мак второй сетевухи
MAC2=$(cat /sys/class/net/eth1/address)
# И вписываем его
sed -i 's/.*HWADDR=.*/HWADDR='$MAC2'/' /etc/sysconfig/network-scripts/ifcfg-eth1

