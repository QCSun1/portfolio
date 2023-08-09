#!/bin/bash

netInfo="$(ifconfig)"

addresses=$(echo "$netInfo" | sed -n '/inet / {
    s/inet/IP Address:/
    s/netmask/\n\t\tSubnet Mask: /
    s/broadcast/\n\t\tBroadcast Address/
    p
    }')

    echo -e "The IP Address on this computer are: \n$addresses"