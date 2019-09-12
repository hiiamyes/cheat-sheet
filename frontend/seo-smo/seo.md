# SEO

[What’s in the head? Metadata in HTML - Learn web development | MDN](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML)
[<meta>: The Document-level Metadata element - HTML | MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta)
[List of Usable HTML Meta and Link Tags](https://gist.github.com/kevinSuttle/1997924)
[The Open Graph protocol](http://ogp.me/)
[最佳作法 - 分享](https://developers.facebook.com/docs/sharing/best-practices/)

HTML `<meta>` element

```js
<Helmet>
  <meta charSet="utf-8" />
  <title>玉山主峰</title>
  <link rel="canonical" href="http://hiking-trails-taiwan.com/" />

  {/* Open Graph protocol */}
  <meta property="og:title" content="玉山主峰2天1夜 - 登山計畫" />
  <meta property="og:type" content="website" />
  <meta property="og:url" content="https://hiking-trails-taiwan.com/yushan" />
  <meta
    property="og:description"
    content="玉山主峰2天1夜 - 登山計劃 - 地圖、時間行程、海拔變化"
  />
  <meta
    property="og:image"
    content="https://s3.amazonaws.com/hiking-plan/trails/yushan.jpg"
  />
</Helmet>
```

# Canonical URL

- [Consolidate duplicate URLs](https://support.google.com/webmasters/answer/139066)
- [Consolidating your website traffic on canonical URLs](https://webmasters.googleblog.com/2019/02/consolidating-your-website-traffic-on.html)

## Favicon

https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML

```html
<head>
  <!-- third-generation iPad with high-resolution Retina display: -->
  <link
    rel="apple-touch-icon-precomposed"
    sizes="144x144"
    href="https://developer.cdn.mozilla.net/static/img/favicon144.a6e4162070f4.png"
  />
  <!-- iPhone with high-resolution Retina display: -->
  <link
    rel="apple-touch-icon-precomposed"
    sizes="114x114"
    href="https://developer.cdn.mozilla.net/static/img/favicon114.0e9fabd44f85.png"
  />
  <!-- first- and second-generation iPad: -->
  <link
    rel="apple-touch-icon-precomposed"
    sizes="72x72"
    href="https://developer.cdn.mozilla.net/static/img/favicon72.8ff9d87c82a0.png"
  />
  <!-- non-Retina iPhone, iPod Touch, and Android 2.1+ devices: -->
  <link
    rel="apple-touch-icon-precomposed"
    href="https://developer.cdn.mozilla.net/static/img/favicon57.a2490b9a2d76.png"
  />
  <!-- basic favicon -->
  <link
    rel="shortcut icon"
    href="https://developer.cdn.mozilla.net/static/img/favicon32.e02854fdcf73.png"
  />
</head>
```
