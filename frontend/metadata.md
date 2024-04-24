# Easy to forget

- [The Document-level Metadata element](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta)

## viewport

- https://developer.mozilla.org/en-US/docs/Glossary/viewport
- [Using the viewport meta tag to control layout on mobile browsers](https://developer.mozilla.org/en-US/docs/Mozilla/Mobile/Viewport_meta_tag)

However, this mechanism is not so good for pages that are optimized for narrow screens using media queries. To mitigate this problem, Apple introduced the "viewport meta tag" in Safari iOS to let web developers control the viewport's size and scale.

A typical mobile-optimized site contains something like the following:

```html
<meta name="viewport" content="width=device-width, initial-scale=1" />
```

- `width`: Controls the size of the viewport.
- `initial-scale`: Controls the zoom level when the page is first loaded.
- `maximum-scale`: Control how users are allowed to zoom the page in or out.
- `minimum-scale`: Control how users are allowed to zoom the page in or out.
- `user-scalable`: Control how users are allowed to zoom the page in or out.

### Mobile optimization: prevent mobile browser pan and zoom

```html
<meta name="viewport" content="user-scalable=no" />
```

### Final viewport

```html
<meta
  name="viewport"
  content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no"
/>
```

## shrink-to-fit=no

https://stackoverflow.com/questions/33767533/what-does-the-shrink-to-fit-viewport-meta-attribute-do

It is Safari specific, at least at time of writing, being introduced in Safari 9.0. From the "What's new in Safari?" documentation for Safari 9.0:

Viewport Changes
Viewport meta tags using "width=device-width" cause the page to scale down to fit content that overflows the viewport bounds. You can override this behavior by adding "shrink-to-fit=no" to your meta tag as shown below. The added value will prevent the page from scaling to fit the viewport.

<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

In short, adding this to the viewport meta tag restores pre-Safari 9.0 behaviour.

## title

## description

## utf8?

## Testing

Yes, there are several tools available for testing the effectiveness and correctness of HTML meta tags. These tools can help you verify if your meta tags are set up correctly and are functioning as intended for SEO, social media sharing, and overall webpage metadata management. Here are a few popular options:

1. **Google's Rich Results Test**: This tool allows you to test how your page might look in Google's search results. It checks structured data and HTML meta tags to ensure they are correctly implemented.

https://search.google.com/test/rich-results

2. **Facebook Sharing Debugger**: This tool is useful for testing how your content will look when shared on Facebook. It checks the meta tags like Open Graph tags to preview the title, description, and image that will be displayed.

https://developers.facebook.com/tools/debug/

3. **Twitter Card Validator**: Similar to Facebook’s tool, this validator checks how your page will be displayed on Twitter by analyzing Twitter-specific meta tags (Twitter Cards).

4. **SEO Site Checkup or Moz**: These SEO tools provide comprehensive audits that include meta tag analysis to ensure they are optimized for search engine visibility.

https://moz.com/free-seo-tools

5. **Browser Developer Tools**: Modern browsers like Chrome, Firefox, and Safari have built-in developer tools that can be used to inspect the HTML of a page, including its meta tags. This is useful for a quick, manual check.

These tools can give you a good insight into how your meta tags are working and how they affect the presentation and SEO of your site.
