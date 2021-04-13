# SMO - Social Media Optimization

## Facebook

- [A Guide to Sharing for Webmasters](https://developers.facebook.com/docs/sharing/webmasters?locale=en_US#markup)

**Basic Tags**

```html
<meta property="og:url" content="https://yeslee.me/about" />
<meta property="og:type" content="article" />
<meta property="og:title" content="When Great Minds Don’t Think Alike" />
<meta
  property="og:description"
  content="How much does culture influence creative thinking?"
/>
<meta property="og:image" content="http://yeslee.me/profile.jpg" />
```

For all contents

- og:url - The canonical URL for your page.
- og:title – The title of your article without any branding such as your site name.
- og:description - A brief description of the content, usually between 2 and 4 sentences. This will displayed below the title of the post on Facebook.
- og:image - The URL of the image that appears when someone shares the content to Facebook. [best practices guide](https://developers.facebook.com/docs/sharing/best-practices#images)
- fb:app_id: In order to use Facebook Insights you must add the app ID to your page.

Two additional tags for more engagement

- og:type – The type of media of your content. Defaults to `website`. [Object Types Reference](https://ogp.me/?fbclid=IwAR22xRSF-MAdHfLmxyLJ368h8qp__2Y9JgDUZux2QMpDzgravM2pBFQ1OYw#types)
- og:locale - The locale of the resource. Defaults to en_US. [Documentation on localization](https://developers.facebook.com/docs/internationalization#locales)

## Twitter

- [Optimize Tweets with Cards](https://developer.twitter.com/en/docs/tweets/optimize-with-cards/overview/abouts-cards)

## [MicroData JSON-LD](https://developers.google.com/schemas/formats/json-ld?hl=zh-TW)

## Image Size

https://www.mainstreethost.com/blog/social-media-image-size-cheat-sheet/

- For Facebook feed post images
  - the optimal size is 940 x 788 pixels.
- For a Facebook feed ad and shared link image
  - use 1200 x 630 pixels.

Twitter

- For Twitter card images
  - use 800 x 320 pixels.
