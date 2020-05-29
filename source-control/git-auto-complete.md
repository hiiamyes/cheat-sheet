# [git-completion](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash)

https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks#Auto-Completion
https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
https://gist.github.com/ivanoats/1823034

bash

```
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.git-completion.bash
vim ~/.bash_profile
```

```sh
# ~/.bash_profile
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi
```

zsh

```
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh > ~/.zsh/git-completion.zsh
vim ~/.zshrc
```

```sh
# ~/.zshrc
fpath=(~/.zsh $fpath)
```

# [git-prompt](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh)

```
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git-prompt.bash
vim ~/.bash_profile
```

```sh
# git-prompt
if [ -f ~/.git-prompt.bash ]; then
  source ~/.git-prompt.bash
  PS1='\[\e[32;40m\]$(__git_ps1 "%s ")\[\e[0m\]'$PS1
  echo $PS1
fi
export PS1
```
