## ESLint

### Front-End (React)

[eslint-config-airbnb](https://github.com/airbnb/javascript/tree/master/packages/eslint-config-airbnb)

**Installation**

`(
  export PKG=eslint-config-airbnb;
  npm info "$PKG@latest" peerDependencies --json | command sed 's/[\{\},]//g ; s/: /@/g' | xargs npm install --save-dev "$PKG@latest"
)`

**Config**

`vim .eslintrc`

```
{
  "extends": "airbnb",
  "globals": {
    "L": false
  },
  "rules": {
    "react/jsx-filename-extension": [1, { "extensions": [".js", ".jsx"] }],
    "react/prop-types": [0],
    "import/no-extraneous-dependencies": [0]
  }
}
```

**Execution**

`node_modules/eslint/bin/eslint.js ./`

`node_modules/eslint/bin/eslint.js ./ --fix`

### Back-End

[eslint-config-airbnb-base](https://npmjs.com/eslint-config-airbnb-base)

`(
  export PKG=eslint-config-airbnb-base;
  npm info "$PKG@latest" peerDependencies --json | command sed 's/[\{\},]//g ; s/: /@/g' | xargs npm install --save-dev "$PKG@latest"
)`

**Config**

`vim .eslintrc`

```
{
  "extends": "airbnb-base",
  "rules": {
    "import/no-extraneous-dependencies": [0]
  }
}
```