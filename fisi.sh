#!/bin/bash

if [ -f "~/.bash_history" ] ;
then
	history -a
else
	/usr/bin/touch ~/.bash_history || exit 0
	history -a
fi

for i in $(/bin/cat ~/.bash_history | /usr/bin/awk '{print $1}' | /usr/bin/sort -u ) ;
do
	/usr/bin/which "$i"
done > /tmp/file 2>/dev/null

if [ -f "/tmp/file" ] ;
then

	/bin/cat /tmp/file || exit 0
	/bin/rm /tmp/file || exit 0

else
	echo "File not fountain!"
fi


