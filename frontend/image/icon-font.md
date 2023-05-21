# icon font

- https://developers.google.com/fonts/docs/material_icons
- https://css-tricks.com/examples/IconFont/
- https://icomoon.io/#toHome

## code

- https://blog.logicwind.com/how-to-use-svg-icons-in-react-native/

## fileformat

- https://medium.com/@aitareydesign/understanding-of-font-formats-ttf-otf-woff-eot-svg-e55e00a1ef2

- woff
  - https://developer.mozilla.org/en-US/docs/Web/Guide/WOFF
- woff2
- ttf
- eot

## self hosting

Setup Method 2. Self hosting
For those looking to self host the web font, some additional setup is necessary. Host the icon font in a location, for example https://example.com/material-icons.woff, and add the following CSS rule:

```css
@font-face {
  font-family: "Material Icons";
  font-style: normal;
  font-weight: 400;
  src: url(https://example.com/MaterialIcons-Regular.eot); /* For IE6-8 */
  src: local("Material Icons"), local("MaterialIcons-Regular"),
    url(https://example.com/MaterialIcons-Regular.woff2) format("woff2"), url(https://example.com/MaterialIcons-Regular.woff)
      format("woff"),
    url(https://example.com/MaterialIcons-Regular.ttf) format("truetype");
}
```

This example uses a typographic feature called ligatures, which allows rendering of an icon glyph simply by using its textual name. The replacement is done automatically by the web browser and provides more readable code than the equivalent numeric character reference.

```html
<span class="material-icons">face</span>
```
