#!/bin/bash

os_name=$(cat /etc/os-release | awk -F '=' '/^NAME/{print $2}' | awk '{print $1}' | tr -d '"')

case $os_name in
    "Ubuntu")
       echo "system is ubuntu"
       os_versionid=$(cat /etc/os-release | awk -F '=' '/^VERSION_ID/{print $2}' | awk '{print $1}' | tr -d '"')
       if [ "$os_versionid" = "20.04" ]
       then
         wget http://downloads.cinc.sh/files/stable/cinc/17.10.0/ubuntu/20.04/cinc_17.10.0-1_amd64.deb
         sudo dpkg -r cinc
         sudo dpkg -i cinc_17.10.0-1_amd64.deb
       fi
    ;;
    "CentOS")
       echo "system is centos"
       os_versionid=$(cat /etc/os-release | awk -F '=' '/^VERSION_ID/{print $2}' | awk '{print $1}' | tr -d '"')
       if [ "$os_versionid" = "7" ]
       then
         wget http://downloads.cinc.sh/files/stable/cinc/17.10.0/el/7/cinc-17.10.0-1.el7.x86_64.rpm
         sudo rpm -e cinc
         sudo rpm -i cinc-17.10.0-1.el7.x86_64.rpm
      fi
    ;;  
    "Rocky")
       echo "system is rocky"
       os_versionid=$(cat /etc/os-release | awk -F '=' '/^VERSION_ID/{print $2}' | awk '{print $1}' | tr -d '"')
       if [ "$os_versionid" = "8.5" ]
       then
         wget http://downloads.cinc.sh/files/stable/cinc/17.10.0/el/8/cinc-17.10.0-1.el8.x86_64.rpm
         sudo rpm -e cinc
         sudo rpm -i cinc-17.10.0-1.el8.x86_64.rpm
       fi
esac 
