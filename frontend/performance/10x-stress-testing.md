ab - Apache HTTP server benchmarking tool

https://httpd.apache.org/docs/2.4/programs/ab.html
https://blog.miniasp.com/post/2008/06/30/Using-ApacheBench-ab-to-to-Web-stress-test
https://ithelp.ithome.com.tw/articles/10233147

-n requests
Number of requests to perform for the benchmarking session. The default is to just perform a single request which usually leads to non-representative benchmarking results.

-c concurrency
Number of multiple requests to perform at a time. Default is one request at a time.

```
ab -n 100 -c 2 http://127.0.0.1:8082/
ab -n 10 -c 2 https://www.google.com/
```

```
#!/bin/bash

for i in {1..10}; do  # send requests 10 times
    ab -n 1 -c 1 http://localhost:8082/  # send 1 request at a time
    sleep 1           # wait for 1 second before sending the next request
done
```
