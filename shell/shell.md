# Get the absolute path

https://www.ostricher.com/2014/10/the-right-way-to-get-the-directory-of-a-bash-script/

# shebang

```
#!/bin/sh
```

It's called a shebang, and tells the parent shell which interpreter should be used to execute the script.

e.g.

#!/usr/bin/perl <--perl script'
#!/usr/bin/php <-- php script
#!/bin/false <--- do-nothing script, because false returns immediately anyways.
It's implemented as a comment so that anything coming in that line will not "relevant" to the interpreter specified. e.g. all scripting languages tend to understand that a line starting with # is a comment, and will ignore the !/usr/bin/whatever portion, which might otherwise be a syntax error in that particular language.

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

- bash

- Zsh

  - oh-my-zsh

- Korn shell(ksh)

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

Call tput as part of a sequence of commands:

```
tput setaf 1;
echo "this is red text"
tput setaf 7;
```

Use `;` instead of `&&` so if `tput` errors the text still shows.

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
9   reset to default color
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

EADDRINUSE 3000

```
sudo lsof -i tcp:3000
kill PID
```

kill port 8080

```
lsof -i tcp:8080
kill $(lsof -t -i:8080)
```

### ssh

https://linux.die.net/man/1/ssh

```
// ~/.bash_profile
alias yes-linode="ssh username@ip"
```

https://linux.die.net/man/1/scp
https://medium.com/@hiiamyes/linode-59e7787e31c

```
ssh remote-host 'mkdir -p foo/bar/qux'
scp -pr src-file-path username@ip:dest-file-path
scp file.txt yes@139.162.47.241:/home/yes/app/paaaack
scp -i /path/to/private_key file.txt yes@139.162.47.241:/home/yes/app/paaaack
```

Connecting to a database behind a firewall

```
ssh -L 9000:localhost:5432 user@example.com
```

- `-L [bind_address:]port:host:hostport`: Specifies that the given port on the local (client) host is to be forwarded to the given host and port on the remote side.

- `-t`: Force pseudo-tty allocation. This can be used to execute arbitrary screen-based programs on a remote machine, which can be very useful, e.g. when implementing menu services. Multiple -t options force tty allocation, even if ssh has no local tty.

- `-p`: Preserves modification times, access times, and modes from the original file.
- `-r`: Recursively copy entire directories. Note that scp follows symbolic links encountered in the tree traversal.

# [Command Substitution](https://www.gnu.org/software/bash/manual/html_node/Command-Substitution.html#Command-Substitution)

Command substitution allows the output of a command to replace the command itself. Command substitution occurs when a command is enclosed as follows:

`$(command)` or `command`

# Load environment file

Pass the env-vars to MYCOMMAND

```
eval $(egrep -v '^#' .env | xargs) MYCOMMAND
```

Export the vars in .env into your shell:

```
export $(egrep -v '^#' .env | xargs)
```

# If Statement

https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php

```
if [ <some test> ]
then
<commands>
fi
```
