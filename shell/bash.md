# PS1

- [Halloween Bash Profile Generator](http://xta.github.io/HalloweenBash/)

My default PS1

```
vim ~/.bash_profile
```

```sh
PS1="\[\e[36;40m\]\W\\$ \[\e[0m\]"
export PS1
```

Add git-prompt

```sh
# git-prompt
if [ -f ~/.git-prompt.bash ]; then
  source ~/.git-prompt.bash
  PS1='\[\e[32;40m\]$(__git_ps1 "%s ")\[\e[0m\]'$PS1
  echo $PS1
fi
export PS1
```
