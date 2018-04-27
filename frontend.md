## parallax scroll
- `background-attachment: fixed;` // not works yet on ios
- [jarallax](https://github.com/nk-o/jarallax)


## Navigation / Redirection / Frontend Routing
- location: window.location is the same as window.location.href, in terms of behavior. window.location returns an object. If .href is not set, window.location defaults to change the parameter .href. Conclude: Use either one is fine.
https://stackoverflow.com/questions/503093/how-do-i-redirect-to-another-webpage
```
// similar behavior as an HTTP redirect
window.location.replace("http://stackoverflow.com");
// similar behavior as clicking on a link
window.location.href = "http://stackoverflow.com";
```

- [react-router](https://github.com/ReactTraining/react-router)


### Frontend Library

- [react](https://github.com/facebook/react)

### CSS

### Styleguide Library

- [Storybook](https://storybook.js.org/)
- [react-styleguidist](https://github.com/styleguidist/react-styleguidist)
- [Catalog](https://catalog.style)

### Drive user focus 
- [Driver.js](http://kamranahmed.info/driver)

### Animation 
- [popmotion](https://popmotion.io/)
- [react-motion](https://github.com/chenglou/react-motion)

### Lazy-Loading
- [react-lazyload](https://github.com/jasonslyvia/react-lazyload)

### i18n
- [i18next](https://github.com/i18next/i18next)
- [react-i18next](https://github.com/i18next/react-i18next)
- language tags
  - [wiki](https://en.wikipedia.org/wiki/Language_localisation): There are multiple language tag systems available for language codification. For example, the International Organization for Standardization (ISO) specifies both two- and three-letter codes to represent languages in standards ISO 639-1 and ISO 639-2, respectively. 

#### Country Code 
- [ISO](https://www.iso.org/obp/ui/#search/code/)
- [ISO-3166-1](https://en.wikipedia.org/wiki/ISO_3166-1) country codes
- [Emoji flag symbols](https://apps.timwhitlock.info/emoji/tables/iso3166)
- [flag-icon-css](https://github.com/lipis/flag-icon-css)


### SEO
- [fetch and render in google webmaster tools not working](https://github.com/prerender/prerender/issues/120#issuecomment-305216710)
  The crawlers do access the `_escaped_fragment_` URLs, but Fetch as Google has a bug where they don't. So you have to manually enter the `?_escaped_fragment_=` query parameter when using Fetch as Google, but the normal Googlebot does not have that issue.
  
### Networking

#### HTTP

- xhr
- Content-Type
  - MIME type
    - Multipurpose Internet Mail Extensions (MIME) type
      - type/subtype
      - case-insensitive but traditionally is written all in lower case
      - Discrete types
      - Multipart types

#### CORS
- XMLHttpRequest
  - withCredentials: for enabling cookie setting

## Testing

### Framework
- mocha
- jest

### Assertion Library
- Chai

### mocking framework
- Sinon


### Redux
#### Actions Creator
- The most painful point: need to write tons of actions manually! So try some lib to auto-generate those.
- redux-actions: not that usefult
- [redux-saga-routines](https://github.com/afitiskin/redux-saga-routines)
- 
#### Async / Side Effect Handler
- redux-thunk: basic and simple one
- [redux-saga](https://github.com/redux-saga/redux-saga): easy to write test


## Form

### Input
[text-mask](https://github.com/text-mask/text-mask)
