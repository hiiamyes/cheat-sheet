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
curl -i -X POST http://localhost:3000/signup
```
- --include, -i: All HTTP replies contain a set of response headers that are normally hidden, use curl's --include (-i) option to display them as well as the rest of the document.
- --request, -X : Change the method keyword curl selects.
