# ESLint

## Rules

- "off" or 0 - turn the rule off
- "warn" or 1 - turn the rule on as a warning (doesn’t affect exit code)
- "error" or 2 - turn the rule on as an error (exit code is 1 when triggered)

## IDE

VSCode extension

https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint

```
yarn add eslint
vim .eslintrc

```


## Example

React

[eslint-config-airbnb](https://github.com/airbnb/javascript/tree/master/packages/eslint-config-airbnb)

## Installation

npm

```
(
  export PKG=eslint-config-airbnb;
  npm info "$PKG@latest" peerDependencies --json | command sed 's/[\{\},]//g ; s/: /@/g' | xargs npm install --save-dev "$PKG@latest"
)
```

yarn

```
(
  export PKG=eslint-config-airbnb;
  npm info "$PKG@latest" peerDependencies --json | command sed 's/[\{\},]//g ; s/: /@/g' | xargs yarn add "$PKG@latest" --dev
)
```

## Config

```
// .eslintrc
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

or

```
// .eslintrc
{
  "extends": "airbnb-base",
  "rules": {
    "import/no-extraneous-dependencies": [0]
  }
}
```

or

```
// .eslintrc
{
  "extends": "react-app"
}
```

## Execution

```
node_modules/eslint/bin/eslint.js ./
node_modules/eslint/bin/eslint.js ./ --fix
```

Node.js

[eslint-config-airbnb-base](https://npmjs.com/eslint-config-airbnb-base)

```
( export PKG=eslint-config-airbnb-base; npm info "$PKG@latest" peerDependencies --json | command sed 's/[\{\},]//g ; s/: /@/g' | xargs npm install --save-dev "$PKG@latest" )
```

## Plugin



## Integrate with prettier

https://prettier.io/docs/en/integrating-with-linters.html

