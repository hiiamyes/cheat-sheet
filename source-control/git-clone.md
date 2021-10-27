# git clone

clone a repo with submodules

git clone --recurse-submodules git://github.com/foo/bar.git

https://stackoverflow.com/questions/47606539/cant-git-pull-a-submodule-when-git-clone-of-repo-wasnt-recursive

After cloning a repository without recursing the submodules, e.g. in OP's case after:

```
git clone git@github.com:eyalroz/parent-repo.git
```

you then do:

```
cd parent-repo/
git submodule update --init --recursive
```

and this gets you the contents of child-repo.
