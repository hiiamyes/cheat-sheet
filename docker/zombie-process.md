# Zombie Process

## When it happens

Docker + puppeteer

## Solution

List zombie processes

```
apt-get update && apt-get install procps
ps aux | grep 'Z'
```

dumb-init?
