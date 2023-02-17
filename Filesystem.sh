#!/bin/bash
date=`date +"%y-%m-%d_%T"| tr ':' '_'`
Filename=Documents/Bash/Filename_$date.txt
Pathname=Documents/Bash

Result=`df -h | awk '0+$5>=1' | wc | awk '{print $1}'`

if [ $Result -ge 1 ]

then

echo "statictics collected at: $(date) ">>Filename

echo"\n--------------------------------">>Filename

df -h |awk '0+$5 >1 {print $1 "Filesystem has "$5" occupied " }'>>Filename

else

echo "No match found"

fi
