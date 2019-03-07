# host SPA

https://medium.com/@hiiamyes/deploy-2-domain-name-virtual-host-46511fdbe2b6?source=your_stories_page

```
cd /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/xxx.hiiamyes.com /etc/nginx/sites-enabled/
sudo service nginx restart
```

# host web backend
https://eladnava.com/binding-nodejs-port-80-using-nginx/
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
```
