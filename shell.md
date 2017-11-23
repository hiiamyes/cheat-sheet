
# UNIX command interpreter (shell)

## commands

`which yarn`: shows the full path of (shell) commands.

variable

`export PKG=eslint-config-airbnb;`
`env | grep 'PKG'`

makes file executable

`chmod + x shell-script.sh`

list files with permission info

`ls -l`

## shell

* bash

* Zsh
    * oh-my-zsh

* Korn shell(ksh)


## Variables

Shell variables are created once they are assigned a value.

```
name="y  e  s"
```

Referencing the variables

```
// $ for variable
echo $name
// ${} is used to avoid ambiguity
echo ${name}isme
// "" will preserve any white space values
echo "$name"
// Substitution: Variables can be assigned with the value of a command output.
files=`ls`
FileWithTimeStamp=/tmp/my-dir/file_$(/bin/date +%Y-%m-%d).txt
version=$(node -e "console.log(require('./package.json').version)")

```
