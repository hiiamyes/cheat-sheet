## .gitignore template

```
node_modules
build
```

## .gitconfig

```
vim ~/.gitconfig
```

```
[user]
	name = yes
[alias]
	acn = !git add . && git commit -n
	fdr = !git fetch origin develop:develop && git rebase -i develop
	bmd = !git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d // branch merged delete
	gp = !git push origin HEAD // push current branch
	poh = !git push origin HEAD
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

##

`git remote add origin git@github.com:hiiamyes/portfolio`

`git branch`

`git fetch origin/master`

`git merge`

`git pull` = git fetch + git merge


# Revert previous speficif file
`git checkout {commit} {path/to/the/file}`

# Split previous commit into multiple commits
```
git rebase -i <commit>^
edit
git reset HEAD^`
git add
git commit
git rebase --continue
```
https://stackoverflow.com/questions/6217156/break-a-previous-commit-into-multiple-commits


# [Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

Add submodule
```
git submodule add git@github.com:hiiamyes/cheat-sheet.git
```

Pull submodule code
```
git submodule init
git submodule update
```

Remove submodule
```
git submodule deinit [module]
rm -rf [module]
rm -rf .git/modules/[module]
```
