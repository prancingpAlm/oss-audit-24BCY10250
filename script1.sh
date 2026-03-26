#!/bin/bash
# Script 1: System Identity Report
# Author: [your name]
# Description: [displays system details like kernel,user,uptime,etc]

student_name="Nitya N Gopalakrishnan"
software="Linus OS"
kernel=$(uname -r)
user_name=$(whoami)
uptime=$(uptime -p)
DATE_Time=$(date)
distro=$(cat /etc/os-release | grep PRETTY_name | cut -d= -f2 | tr -d '"')

echo " System Identity Report"
echo "-----------------------"
echo "Student name : $student_name"
echo "user : $user_name"
echo "home directory : $HOME"
echo "kernel : $kernel"
echo "distribution : $distro"
echo "uptime : $uptime"
echo "Date and Time : $DATE_Time"
echo "License : This OS is covered under GPL "

