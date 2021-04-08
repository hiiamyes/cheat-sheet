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

## cherry-pick

```
git cherry-pick
```

cherry-pick a merge commit

```
error: commit 9c4eb4b9825feed749ecac50566582d099800108 is a merge but no -m option was given.
fatal: cherry-pick failed
```

-m: parent number

## Get parent number of a merge commit

https://stackoverflow.com/questions/9059335/how-to-get-the-parents-of-a-merge-commit-in-git

git log {hash}`

```
commit 9c4eb4b9825feed749ecac50566582d099800108 (tag: build-11873.1)
Merge: ca3a5a7e1 8b8bd3c7b
```

`ca3a5a7e1` is 1, `8b8bd3c7b` is 2


## delete local branches merged into master

```
bmd = !git branch --merged=master | egrep -v "(^\*|master|develop|qa)" | xargs git branch -d
```