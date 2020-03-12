# Yarn

[2/4] Fetching packages...
info There appears to be trouble with your network connection. Retrying...

Add `.yarnrc` file

```.yarnrc
network-timeout 600000
```

## With Docker

```
yarn --pure-lockfile
```

How to prevent re-install packages all the time!!
