#!/bin/bash
for i in {1..1000000}; do                  # send requests 10 times
  ab -n 1 -c 1 https://shop-dev.wordup.com.tw/ # send 1 request at a time
  sleep 1                             # wait for 1 second before sending the next request
done
