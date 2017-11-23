
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


### Color

https://stackoverflow.com/a/20983251

```
Call tput as part of a sequence of commands:

tput setaf 1; echo "this is red text"
Use ; instead of && so if tput errors the text still shows.
```

```
Num  Colour    #define         R G B

0    black     COLOR_BLACK     0,0,0
1    red       COLOR_RED       1,0,0
2    green     COLOR_GREEN     0,1,0
3    yellow    COLOR_YELLOW    1,1,0
4    blue      COLOR_BLUE      0,0,1
5    magenta   COLOR_MAGENTA   1,0,1
6    cyan      COLOR_CYAN      0,1,1
7    white     COLOR_WHITE     1,1,1
```

### 

For OSX El Capitan and newer (or if your netstat doesn't support -p), use lsof

```
sudo lsof -i tcp:3000 
```
