# Ngrok

## -host-header

Rewrite the host header

https://ngrok.com/docs#http-host-header

```
ngrok http -host-header=yes.lee.localhost 8080
```

## -hostname

https://ngrok.com/docs/guides/how-to-set-up-a-custom-domain/

ngrok http -hostname=ex.com 1234 # request tunnel 'ex.com' (DNS CNAME)

Tunnels on custom domains (white label URLs)

```
ngrok http -hostname=en.at.localhost 8080
```

➜ nuxt git:(tt) ngrok http -hostname=en.at.localhost 8080
Only Personal, Pro and Enterprise plans may bind custom hostnames.
Failed to bind the custom hostname 'en.at.localhost' for the account 'yes.lee@amazingtalker.com'.
This account is on the 'Free' plan.

Upgrade to a paid plan at: https://dashboard.ngrok.com/billing/subscription

ERR_NGROK_314
