# host SPA

https://medium.com/@hiiamyes/deploy-2-domain-name-virtual-host-46511fdbe2b6?source=your_stories_page

```
cd /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/xxx.hiiamyes.com /etc/nginx/sites-enabled/
sudo service nginx restart
```

# host web backend

https://eladnava.com/binding-nodejs-port-80-using-nginx/

## Backend server

```
server {
    listen 80;
    server_name example.com;

    location / {
        proxy_set_header   X-Forwarded-For $remote_addr;
        proxy_set_header   Host $http_host;
        proxy_pass         "http://127.0.0.1:1337";
    }
}

// cat /etc/nginx/sites-available/api-paaaack.hiiamyes.com
server {
    listen 80;
    server_name api-paaaack.hiiamyes.com;

    location / {
        proxy_set_header   X-Forwarded-For $remote_addr;
        proxy_set_header   Host $http_host;
        proxy_pass         "http://127.0.0.1:3000";
    }
}
```

## Frontend SPA

```
// cat /etc/nginx/sites-available/hiiamyes.com
server {
  listen 80;
  listen [::]:80;
  server_name hiiamyes.com;
  root /srv/portfolio;
  index index.html;
  location / {
    try_files $uri $uri/ =404;
  }
}
```

- [location](http://nginx.org/en/docs/http/ngx_http_core_module.html#location): Sets configuration depending on a request URI.
- [try_files](http://nginx.org/en/docs/http/ngx_http_core_module.html#try_files): Checks the existence of files in the specified order and uses the first found file for request processing.
