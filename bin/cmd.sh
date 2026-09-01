#!/bin/bash

if [ $# -eq 0 ] ; then
	echo "Usage: $0 CMD"
	exit 1
fi

echo "---- main.example.com ----"
ssh main $*
echo ; echo
echo "---- server1.example.com ----"
ssh server1 $*
echo ; echo
echo "---- server2.example.com ----"
ssh server2 $*

