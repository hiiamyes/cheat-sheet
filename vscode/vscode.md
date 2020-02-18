### Prettier

## CSS

### [CSScomb](http://csscomb.com/)

[vscode-csscomb](https://github.com/mrmlnc/vscode-csscomb)

config

```
"csscomb.formatOnSave": true,
"csscomb.preset": "yandex",
```

## Lintting

## Import Path, Base Url

- https://github.com/Microsoft/vscode/issues/9135
- https://blog.andrewray.me/autocomplete-es-modules-webpack-vscode/
- https://code.visualstudio.com/docs/languages/jsconfig#_jsconfig-options

Must Have

```json
// jsconfig.json in project's root
{
  "compilerOptions": {
    // This must be specified if "paths" is set
    "baseUrl": ".",
    // Relative to "baseUrl"
    "paths": {
      "*": ["./*"]
    }
  }
}
```

One of

Preferred: https://webpack.js.org/configuration/resolve/#resolvealias

```js
// webpack.config.js
module.exports = {
  resolve: {
    alias: {
      src: path.resolve(__dirname, "src/")
    }
  }
};
```

or `babel-plugin-module-resolver`

```json
// npm install --save-dev babel-plugin-module-resolver
// .babelrc
{
  "plugins": [
    [
      "module-resolver",
      {
        "root": ["."],
        "alias": {
          "src": "./src"
        }
      }
    ]
  ]
}
```

or

???

```js
// webpack.config.js
module.exports = {
  resolve: {
    modules: [path.resolve(__dirname), "node_modules"]
  }
};
```

- [path intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)

## Snippet

F1 > Preferences: Open User Snippets > Javascript React

## setting.json

```json
{
  "editor.codeActionsOnSave": {
    "source.organizeImports": true
  }
}
```

## launch.json

### debug!

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Chrome",
      "type": "chrome",
      "request": "launch",
      "url": "http://localhost:5888",
      "webRoot": "${workspaceRoot}/react/src"
    }
  ]
}
```
