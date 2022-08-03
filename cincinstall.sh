#!/bin/bash

os_name=$(cat /etc/os-release | awk -F '=' '/^NAME/{print $2}' | awk '{print $1}' | tr -d '"')

if [ "$os_name" = "Ubuntu" ]
then
        echo "system is ubuntu"
        os_versionid=$(cat /etc/os-release | awk -F '=' '/^VERSION_ID/{print $2}' | awk '{print $1}' | tr -d '"')
        if [ "$os_versionid" = "20.04" ]
        then
         wget http://downloads.cinc.sh/files/stable/cinc/17.10.0/ubuntu/20.04/cinc_17.10.0-1_amd64.deb
         sudo dpkg -r cinc
         sudo dpkg -i cinc_17.10.0-1_amd64.deb
        fi        
fi
