# noindex

The `noindex` directive is a value that can be used in the `meta` tag of an HTML page to instruct search engines not to index the content of a page. When search engine bots crawl the web, they look for this directive to determine whether to include a page in their search results or not. If a page includes the `noindex` directive, the search engines should respect this request and not include the page in their indices.

Here's how you can use `noindex` in an HTML document:

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Your Page Title</title>
    <meta name="robots" content="noindex" />
  </head>
  <body>
    <!-- Your page content here -->
  </body>
</html>
```

In addition to using it in the `meta` tag, you can also specify `noindex` in the HTTP headers:

```http
X-Robots-Tag: noindex
```

**Points to Note:**

- Using `noindex` prevents the page from appearing in search engine results, but the page can still be crawled by search engine bots.
- If you want to prevent both indexing and crawling, you can use `noindex, nofollow` in the `content` attribute of the `meta` tag.

Here's an example that uses both `noindex` and `nofollow`:

```html
<meta name="robots" content="noindex, nofollow" />
```
