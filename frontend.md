



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
- 
#### Async / Side Effect Handler
- redux-thunk: basic and simple one
- [redux-saga](https://github.com/redux-saga/redux-saga): easy to write test
