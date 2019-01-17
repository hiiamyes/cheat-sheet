- [Everything curl](https://ec.haxx.se/)

# Get Request Time

```
-w %{time_connect}:%{time_starttransfer}:%{time_total}
```


# Get 
```
curl http://localhost:3000/users
```


# Post
```
curl -X POST http://localhost:3000/signup
```
