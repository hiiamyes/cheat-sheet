# Font size

1. Setup base `font-size` of `<html />`
1. Use `rem`:
   - The rem (root em) works in exactly the same way as the em, except that it will always equal the size of the default base font-size.
   - The default base font-size given to web pages by web browsers before CSS styling is applied is 16 pixels.

```
// global.css
html {
    font-size: 16px;
}

button {
    font-size: 1rem;
}
```

# Reference

- [Typography - Atlassian Design](https://atlassian.design/guidelines/product/foundations/typography)

  - use sans-serif fonts for most of our type
  - to display code then you should defer to monospace fonts.

```
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen', 'Ubuntu', 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-serif;
```

```
font-family: "SF Mono", "Segoe UI Mono", "Roboto Mono", "Ubuntu Mono", Menlo, Courier, monospace;
```

- [normalize.css](https://github.com/necolas/normalize.css/issues/665)
- [system font stack](https://css-tricks.com/snippets/css/system-font-stack/)
