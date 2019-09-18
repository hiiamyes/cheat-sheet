# PS1

- [Halloween Bash Profile Generator](http://xta.github.io/HalloweenBash/)

My default PS1

```
vim ~/.bash_profile
```

```sh
# base prompt
PS1="\[\e[36;40m\]\W\\$ \[\e[0m\]"

# setup prompt
export PS1
```

Add git-prompt

```sh
# git prompt
if [ -f ~/.git-prompt.bash ]; then
  source ~/.git-prompt.bash
  PS1='\[\e[32;40m\]$(__git_ps1 "%s ")\[\e[0m\]'$PS1
  echo $PS1
fi
export PS1
```

# For loop

```sh
for VARIABLE in 1 2 3 4 5 .. N
do
	command1
	command2
	commandN
done
```

```sh
for VARIABLE in file1 file2 file3
do
	command1 on $VARIABLE
	command2
	commandN
done
```

```sh
for OUTPUT in $(Linux-Or-Unix-Command-Here)
do
	command1 on $OUTPUT
	command2 on $OUTPUT
	commandN
done
```