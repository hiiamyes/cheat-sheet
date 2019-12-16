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
	bmd = !git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d // branch merged delete
	gp = !git push origin HEAD // push current branch
```

## terminal

Git branch in prompt.

```
// in ~/.bash_profile
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
```

## [Tagging](https://git-scm.com/book/en/v2/Git-Basics-Tagging)

```
<!-- list tags -->
git tag

<!-- create tag -->
git tag v0.1.16

<!-- push tag -->
git push origin v0.1.16

<!-- delete remote tag -->
git push --delete origin build-1.1
```


