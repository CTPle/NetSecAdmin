#!/bin/bash

ssh 192.168.10.10 poweroff
sleep 3
echo main

ssh 192.168.10.30 poweroff
sleep 3
echo server2

ssh 192.168.10.20 poweroff
