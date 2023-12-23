#!/bin/sh
echo ifname:bt cmd:BT_ON > /dev/bes2600
rfkill unblock bluetooth
hciattach -s 1500000 /dev/ttyS1 any 1500000 flow nosleep
hciconfig hci0 up
