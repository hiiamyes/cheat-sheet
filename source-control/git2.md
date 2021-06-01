# [git open](https://github.com/paulirish/git-open)

```
npm install --global git-open
```

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
	bmd = "!git branch --merged | egrep -v '^\\*|master|dev|sprint' | xargs git branch -d"
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

##

`git remote add origin git@github.com:hiiamyes/portfolio`

`git branch`

`git fetch origin/master`

`git merge`

`git pull` = git fetch + git merge

# Revert previous speficif file

`git checkout {commit} {path/to/the/file}`

# Revert a merge commit

Check the parent for reverting merge commit

```
git show [commit]

commit eda1d1e23878e133fb470e20776470f1c6bfb9de (tag: build-144.1)
Merge: parent-number-1 parent-number-2
Author: Yew Lee <yes@gmail.com>
Date:   Wed Jul 3 10:35:27 2019 +0800

    Commit message...

```

General case, it'll be 1

`git revert -m 1 [commit]`

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
git pull --recurse-submodules
git submodule update --recursive --remote
```

Remove submodule

```
git submodule deinit [module]
rm -rf [module]
rm -rf .git/modules/[module]
```

```
git submodule deinit <path_to_submodule>
git rm <path_to_submodule>
git commit -m "Removed submodule "
rm -rf .git/modules/<path_to_submodule>
```

# [git-blame](https://git-scm.com/docs/git-blame)

blame the file with specific line number

`git blame -L 150,+11 -- git-web--browse.sh`

# log

https://stackoverflow.com/questions/8435343/retrieve-the-commit-log-for-a-specific-line-in-a-file

`git log --pretty=short -u -L 155,155:git-web--browse.sh`

# Remove staged change

git reset HEAD -- .

# Sparse Checkout

https://briancoyner.github.io/2013/06/05/git-sparse-checkout.html

```
mkdir git-completion
cd git-completion
git init
git config core.sparsecheckout true
echo contrib/completion/ >> .git/info/sparse-checkout
git remote add -f origin https://github.com/git/git.git
git pull origin master
```
