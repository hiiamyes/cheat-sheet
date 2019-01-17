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
curl \
  -i \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{"username":"yes","password":"yes"}' \
  http://localhost:3000/signup 
```
- [`--data, -d`]((https://curl.haxx.se/docs/manpage.html#-d)): Sends the specified data in a POST request to the HTTP server.
- --include, -i: All HTTP replies contain a set of response headers that are normally hidden, use curl's --include (-i) option to display them as well as the rest of the document.
- --request, -X : Change the method keyword curl selects.
