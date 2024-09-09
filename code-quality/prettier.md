# Prettier

## VS eslint

https://prettier.io/docs/en/comparison.html

Prettier is a formatter, not a linter.

## Intergrating with Linters

https://prettier.io/docs/en/integrating-with-linters.html

Integrating with Linters: Prettier can be integrated into workflows with existing linting tools. This allows you to use Prettier for code formatting concerns, while letting your linter focus on code-quality concerns as outlined in our comparison with linters.

- First disable any existing formatting rules in your linter that may conflict with how Prettier wishes to format your code.
- Then you can either add an extension to your linting tool to format your file with Prettier - so that you only need a single command for format a file.
- Or run your linter then Prettier as separate steps.

## VSCode Extension

how to work with eslint?

## Best pratice

```.prettierrc
{
  "printWidth": 80,
  "tabWidth": 2,
  "trailingComma": "all"
}
```

https://github.com/prettier/prettier-vscode

## Disable auto format while saving

https://stackoverflow.com/questions/29969485/how-to-disable-auto-format-in-vscode

```json
{
  "editor.formatOnSave": false
}
```
