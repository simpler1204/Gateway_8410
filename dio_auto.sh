#!/bin/bash

sleep 1 
/bin/kill -9 `ps x | grep sids_dio | grep -v grep| awk '{print $1}'` &> /dev/null
sleep 2
nohup /root/sids_dio &




