# Multi-line text truncate

Native css can't achieve it...

## Solution

- [shave](https://github.com/yowainwright/shave)
- [ellipsed](https://github.com/nzambello/ellipsed)
- [dotdotdot](https://github.com/FrDH/dotdotdot-js)

Pure css
- https://css-tricks.com/multi-line-truncation-with-pure-css/
- Use line height
- The rest of the trick comes in when you want to display that ellipsis stuff
  - use `::before` 
  - cover up the ellipsis when the text is too short
    - The trick there is to make a little box that is the same background as what is behind it and set it on top of the ellipsis to cover it. We can do that with the other pseudo-element:


https://css-tricks.com/line-clampin/

https://medium.com/mofed/css-line-clamp-the-good-the-bad-and-the-straight-up-broken-865413f16e5