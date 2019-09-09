# SEO

[What’s in the head? Metadata in HTML - Learn web development | MDN](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML)
[<meta>: The Document-level Metadata element - HTML | MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta)
[List of Usable HTML Meta and Link Tags](https://gist.github.com/kevinSuttle/1997924)
[The Open Graph protocol](http://ogp.me/)
[最佳作法 - 分享](https://developers.facebook.com/docs/sharing/best-practices/)

HTML `<meta>` element

```
<Helmet>
    <meta charSet="utf-8" />
    <title>玉山主峰</title>
    <link rel="canonical" href="http://hiking-trails-taiwan.com/" />

    {/* Open Graph protocol */}
    <meta property="og:title" content="玉山主峰2天1夜 - 登山計畫" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://hiking-trails-taiwan.com/yushan" />
    <meta property="og:description" content="玉山主峰2天1夜 - 登山計劃 - 地圖、時間行程、海拔變化" />
    <meta property="og:image" content="https://s3.amazonaws.com/hiking-plan/trails/yushan.jpg" />
</Helmet>
```
