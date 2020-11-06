# Jest

https://jestjs.io/

[jest](https://github.com/facebook/jest)

```sh
yarn add -D jest
```

sum.js

```js
function sum(a, b) {
  return a + b;
}
module.exports = sum;
```

sum.test.js

```js
const sum = require("./sum");
test("adds 1 + 2 to equal 3", () => {
  expect(sum(1, 2)).toBe(3);
});
```
