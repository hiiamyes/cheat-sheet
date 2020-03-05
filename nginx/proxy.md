# Proxy

https://www.digitalocean.com/community/tutorials/understanding-nginx-http-proxying-load-balancing-buffering-and-caching

The servers that Nginx proxies requests to are known as upstream servers.

## Config

https://gist.github.com/Stanback/7145487
https://gist.github.com/iki/1247cd182acd1aa3ee4876acb7263def

```
server {
  listen {{PARTNER_PORTAL_CONNECT_API_PORT}};
  server_name localhost;

  add_header 'Access-Control-Allow-Origin' $http_origin always;
  add_header 'Access-Control-Allow-Credentials' 'true';
  add_header 'Access-Control-Allow-Headers' 'Accept,Authorization,Cache-Control,Content-Type,DNT,If-Modified-Since,Keep-Alive,Origin,User-Agent,X-Requested-With' always;
  add_header 'Access-Control-Allow-Methods' 'GET, POST, OPTIONS, PUT, DELETE, PATCH';

  location / {

    if ($request_method = 'OPTIONS') {
      add_header 'Access-Control-Max-Age' 1728000;
      add_header 'Content-Type' 'text/plain; charset=UTF-8';
      add_header 'Content-Length' 0;
      return 204;
    }

    proxy_redirect off;
    proxy_pass {{EMQ_CORE_GENERIC_API_BASE_URL}};
  }
}
```

`proxy_pass`

http://nginx.org/en/docs/http/ngx_http_proxy_module.html#proxy_pass

`proxy_set_header`

http://nginx.org/en/docs/http/ngx_http_proxy_module.html#proxy_set_header

## Issues

Get works, but post not works??

https://stackoverflow.com/questions/35946006/nginx-cors-doesnt-work-for-post

Add `always`
