https://developer.mozilla.org/zh-TW/docs/Web/HTTP/Status
https://developer.mozilla.org/en-US/docs/Web/HTTP/Status

1xx

# 2xx

200 OK

201 Created

# 3xx

301 Moved Permanently

302 Found

Difference between 301 and 302 redirect?

To a user they seem to work the same way, but they aren’t the same as far as search engines are concerned. Search engines sense the different types of redirects, and handle them differently. A 301 redirect means that the page has permanently moved to a new location. A 302 redirect means that the move is only temporary. Search engines need to figure out whether to keep the old page, or replace it with the one found at the new location. If the wrong type of redirect has been set up, search engines may become confused, resulting in a loss of traffic.

# 4xx

Client errors

400 Bad Request: https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/400

401 Unauthorized

403 Forbidden: https://developer.mozilla.org/en-US/docs/Web/HTTP/Status/403

The HTTP 403 Forbidden client error status response code indicates that the server understood the request but refuses to authorize it.

This status is similar to 401, but in this case, re-authenticating will make no difference. The access is permanently forbidden and tied to the application logic, such as insufficient rights to a resource.

404 Not Found

# 5xx

500 Internal Server Error
