# Formatter

Proposed Solution

- Formatter: yapf
- VSCode Extension: ms-python
  -- Config: `.vscode/settings.json` and `.style.yapf`
  -- Keyboard Shortcuts: `shift + alt + f`

```
// .vscode/settings.json
{
  "python.pythonPath": "env/bin/python2.7"
}
```

```
// .style.yapf
[style]
based_on_style = google
ALLOW_SPLIT_BEFORE_DICT_VALUE = False
INDENT_DICTIONARY_VALUE = True
SPLIT_BEFORE_FIRST_ARGUMENT = True
```
