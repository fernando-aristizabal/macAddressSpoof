#!/bin/bash

#test file

# New
hexchars="0123456789abcdef"
end=$( for i in {1..6} ; do echo -n ${hexchars:$(( $RANDOM % 16 )):1} ; done | sed -e 's/\(..\)/:\1/g' )

ifconfig eth0 down hw ether 00:c0:a8$end
sleep 20
ifconfig eth0 up 



#############################################################################################################
# Change Your MAC Address
#echo 'Your current MAC is:'
#ifconfig $1 | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'
#echo ''
#echo 'Shutting down your NIC and applying the settings'
#ifconfig $1 down hw ether $2 || echo 'Well that wasn't supposed to happen'
#ifconfig $1 up
# Uncomment the line below this if you would like the NIC to automatically grab a DHCP address.
#dhclient $1
#echo ''
#echo 'Your new MAC is:'
#ifconfig $1 | grep -o -E '([[:xdigit:]]{1,2}:){5}[[:xdigit:]]{1,2}'




 


