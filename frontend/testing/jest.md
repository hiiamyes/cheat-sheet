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
  expect(sum(1, 2)).toBeq.(3);
});
```

package.json:

```json
{
  "scripts": {
    "test": "jest"
  }
}
```

## Config

```js
// jest.config.js
module.exports = {
  // coverageDirectory: "<rootDir>/test-coverage",
  // collectCoverageFrom: ["src/**/*.{js,jsx}"],
  // coverageReporters: ["html"],
  // setupFiles: ["jest-localstorage-mock"],
  // setupFilesAfterEnv: ["<rootDir>/test/setup.js"],
  moduleDirectories: ["node_modules", "./"],
};
```
