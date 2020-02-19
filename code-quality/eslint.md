# [ESLint](https://eslint.org/)

## Rules

- "off" or 0 - turn the rule off
- "warn" or 1 - turn the rule on as a warning (doesn’t affect exit code)
- "error" or 2 - turn the rule on as an error (exit code is 1 when triggered)

```.eslintrc
"rules": {
  "prettier/prettier": "warn
  "react/jsx-filename-extension": [1, { "extensions": [".js", ".jsx"] }],
  "react/prop-types": [0],
  "import/no-extraneous-dependencies": [0]
}
```

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

## Extend config

```
node_modules/eslint/bin/eslint.js ./
node_modules/eslint/bin/eslint.js ./ --fix
```

Node.js

[eslint-config-airbnb-base](https://npmjs.com/eslint-config-airbnb-base)

```
( export PKG=eslint-config-airbnb-base; npm info "$PKG@latest" peerDependencies --json | command sed 's/[\{\},]//g ; s/: /@/g' | xargs npm install --save-dev "$PKG@latest" )
```

[eslint-config-react-app](https://github.com/facebook/create-react-app/tree/master/packages/eslint-config-react-app)

This package includes the shareable ESLint configuration used by Create React App.

```
yarn add eslint-config-react-app @typescript-eslint/eslint-plugin@2.x @typescript-eslint/parser@2.x babel-eslint@10.x eslint@6.x eslint-plugin-flowtype@3.x eslint-plugin-import@2.x eslint-plugin-jsx-a11y@6.x eslint-plugin-react@7.x eslint-plugin-react-hooks@1.x
```

[eslint-config-prettier](https://github.com/prettier/eslint-plugin-prettier)

Turns off all rules that are unnecessary or might conflict with Prettier.

`eslint-config-prettier` is a config that disables rules that conflict with Prettier. Add it to your devDependencies, then extend from it within your .eslintrc configuration. Make sure to put it last in the extends array, so it gets the chance to override other configs.

---

```.eslintrc
{
  "extends": ["react-app", "prettier"]
}
```

## Plugin

- [eslint-plugin-prettier](https://github.com/prettier/eslint-plugin-prettier)

Runs Prettier as an ESLint rule and reports differences as individual ESLint issues.

`eslint-plugin-prettier` is a plugin that adds a rule that formats content using Prettier. Add it to your devDependencies, then enable the plugin and rule.

## Integrate with prettier

https://prettier.io/docs/en/integrating-with-linters.html#eslint

```sh
yarn add --dev eslint-config-prettier
vim .eslintrc
```

```.eslintrc
{
  "extends": ["prettier"]
}
```
