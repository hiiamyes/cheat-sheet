## .gitignore template

```
node_modules
build
```

## .gitconfig

```
[user]
	name = yes
[alias]
	acn = !git add . && git commit -n
	fdr = !git fetch origin develop:develop && git rebase -i develop
	bmd = "!git branch --merged | egrep -v '^\\*|master|dev|sprint' | xargs git branch -d"
	gp = !git push origin HEAD // push current branch
```

## terminal (deprecated)

Git branch in prompt.

```
// in ~/.bash_profile
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
```

## git-completion and git-prompt
https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks#Auto-Completion
https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
https://gist.github.com/ivanoats/1823034

```
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.git-completion.bash

curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git-prompt.bash
```

```
# Set the base PS1
export PS1="\t: \W$ "

# Source the git bash completion file
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
    source ~/.git-prompt.bash
    PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
fi

export PS1
```