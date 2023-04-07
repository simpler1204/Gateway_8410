#!/bin/bash
sleep 60 

while [ 1 ]
do
  pid=`ps -ef | grep "sids_client" | grep -v 'grep' | awk '{print $2}'`
  if [ -z $pid ]; then
  cd /root
  ./client_auto.sh
  fi

  sleep 30
  pid=`ps -ef | grep "sids_dio" | grep -v 'grep' | awk '{print $2}'`
  if [ -z $pid ]; then
  cd /root
  ./dio_auto.sh
  fi
  sleep 30
done


