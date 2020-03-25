# Headers

## XMLHttpRequest.withCredentials

https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/withCredentials
https://github.com/axios/axios/issues/2714

https://stackoverflow.com/questions/54845053/express-react-with-cors-setting-http-only-secure-cookie-for-react-spa

So after trying some different things, the issue was with setting the domain in res.cookie to the subdomain. I changed that code to:

```
              res.cookie('jwt', token, {
                domain: 'mysite.co',
                secure: true,
                httpOnly: true,
                maxAge: parseInt(process.env.JWT_EXPIRATION_MS, 10),
              });
```

and now the cookie is being set.
