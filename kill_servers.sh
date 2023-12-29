#!/bin/bash

# Get a list of PIDs for processes named 'server' run by 'ysemlali'
pids=$(pgrep -u ysemlali server)

# Loop over the PIDs
for pid in $pids
do
  # Kill the process and print its PID
  echo "Killing server with PID: $pid"
  kill -15 $pid
done
