# Ngrok

Rewrite the host header

https://ngrok.com/docs#http-host-header

```
ngrok http -host-header=yes.lee.localhost 8080
```

ngrok http -hostname=ex.com 1234 # request tunnel 'ex.com' (DNS CNAME)

```
ngrok http -hostname=en.at.localhost 8080
```

Tunnels on custom domains (white label URLs)
