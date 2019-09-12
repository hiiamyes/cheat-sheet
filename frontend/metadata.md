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

- width: The width property controls the size of the viewport.
- initial-scale: Controls the zoom level when the page is first loaded.
- maximum-scale: Control how users are allowed to zoom the page in or out.
- minimum-scale: Control how users are allowed to zoom the page in or out.
- user-scalable: Control how users are allowed to zoom the page in or out.

### Mobile optimization: prevent mobile browser pan and zoom

```html
<meta name="viewport" content="user-scalable=no" />
```

### Final viewport

```html
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="viewport" content="user-scalable=no" />
```

## title

## description

## utf8?
