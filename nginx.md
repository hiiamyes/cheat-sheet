# host SPA

https://medium.com/@hiiamyes/deploy-2-domain-name-virtual-host-46511fdbe2b6?source=your_stories_page

```
cd /etc/nginx/sites-available/

sudo ln -s /etc/nginx/sites-available/xxx.hiiamyes.com /etc/nginx/sites-enabled/
sudo service nginx restart
```

## host web backend

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

## CLI

https://www.nginx.com/resources/wiki/start/topics/tutorials/commandline/

-g directives: Set global directives. (version >= 0.7.4)

## Daemon??

What's daemon?

https://stackoverflow.com/questions/18861300/how-to-run-nginx-within-a-docker-container-without-halting

have Nginx installed on a Docker container, and am trying to run it like this:

docker run -i -t -p 80:80 mydockerimage /usr/sbin/nginx
The problem is that the way Nginx works, is that the initial process immediately spawns a master Nginx process and some workers, and then quits. Since Docker is only watching the PID of the original command, the container then halts.

How do I prevent the container from halting? I need to be able to tell it to bind to the first child process, or stop Nginx's initial process from exiting.

nginx, like all well-behaved programs, can be configured not to self-daemonize.

Use the daemon off configuration directive described in http://wiki.nginx.org/CoreModule.

```
CMD ["nginx", "-g", "daemon off;"]
```
