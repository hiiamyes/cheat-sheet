
# UNIX command interpreter (shell)

## commands

`which yarn`: shows the full path of (shell) commands.

variable

`export PKG=eslint-config-airbnb;`
`env | grep 'PKG'`

makes file executable

`chmod +x shell-script.sh`

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

### Crontab

http://www.nncron.ru/help/EN/working/cron-format.htm

```
* * * * * *
| | | | | | 
| | | | | +-- Year              (range: 1900-3000)
| | | | +---- Day of the Week   (range: 1-7, 1 standing for Monday)
| | | +------ Month of the Year (range: 1-12)
| | +-------- Day of the Month  (range: 1-31)
| +---------- Hour              (range: 0-23)
+------------ Minute            (range: 0-59)
```

```
* * * * * *                         Each minute
59 23 31 12 5 *                     One minute  before the end of year if the last day of the year is Friday									
59 23 31 DEC Fri *                  Same as above (different notation)
45 17 7 6 * *                       Every  year, on June 7th at 17:45
```

### Others

For OSX El Capitan and newer (or if your netstat doesn't support -p), use lsof

```
sudo lsof -i tcp:3000 
kill PID
```

```
kill $(lsof -t -i:8080)
```


### ssh

```
// ~/.bash_profile
alias yes-linode="ssh username@ip"
```

https://linux.die.net/man/1/scp
https://medium.com/@hiiamyes/linode-59e7787e31c
```
scp src-file-path username@ip:dest-file-path
```
