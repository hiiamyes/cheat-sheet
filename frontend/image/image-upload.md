# S3

# Library

[uppy](https://uppy.io/docs/aws-s3/)

# SAAS

[imgix](https://www.imgix.com/)

# Self-made

s3 presigned url + cors

put object

```
<?xml version="1.0" encoding="UTF-8"?>
<CORSConfiguration xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
<CORSRule>
    <AllowedOrigin>*</AllowedOrigin>
    <AllowedMethod>GET</AllowedMethod>
    <AllowedMethod>PUT</AllowedMethod>
    <MaxAgeSeconds>3000</MaxAgeSeconds>
       <AllowedHeader>*</AllowedHeader>
</CORSRule>
</CORSConfiguration>
```

````
const result = await axios.request({
            method: 'put',
            url,
            data: file,
            headers: {
              'Content-Type': 'image/jpeg',
            },
          });
          ```
````
