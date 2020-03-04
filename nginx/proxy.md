# Proxy

https://www.digitalocean.com/community/tutorials/understanding-nginx-http-proxying-load-balancing-buffering-and-caching

The servers that Nginx proxies requests to are known as upstream servers.

## Config

```
location / {
  proxy_redirect off;
  proxy_set_header host $host;
  proxy_set_header X-real-ip $remote_addr;
  proxy_set_header X-forward-for \$proxy_add_x_forwarded_for;
  proxy_pass http://127.0.0.1:3000;
}
```

`proxy_pass`

http://nginx.org/en/docs/http/ngx_http_proxy_module.html#proxy_pass

`proxy_set_header`

http://nginx.org/en/docs/http/ngx_http_proxy_module.html#proxy_set_header
