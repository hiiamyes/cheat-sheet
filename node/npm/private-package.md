# Privte Package

## [npm Products](https://www.npmjs.com/products)

- npm Orgs: 7 per month / user

## Self host

- [verdaccio](https://github.com/verdaccio/verdaccio)

## Leverage git

https://glebbahmutov.com/blog/use-github-instead-of-npm/

```
npm install <git-host>:<git-user>/<repo-name>
npm install <git repo url>
yarn add hiiamyes/frontend-cookbook#v0.1.16
```

## Git submodule private npm package

https://stackoverflow.com/questions/52574481/git-how-to-push-dist-directory-to-a-separate-branch-of-the-same-repository

There is, using git submodule.

- create an orphan branch 'deploy'
- copy your dist folder content in the empty repo, add and commit, and push.
- add that branch as a dist folder submodule.

- [orphan branch](https://git-scm.com/docs/git-checkout#Documentation/git-checkout.txt---orphanltnewbranchgt)

- [git submodule](https://git-scm.com/docs/git-submodule)

```
git checkout --orphan release
git reset // unstage all changes
git add package.json README.MD
git clean -df // remove all other untracted files and folder
git commit -m "v1.0.0"
git push -u origin release

git checkout master
git submodule add -b release -- https://github.com/hiiamyes/frontend-cookbook.git release
git commit -m "Add release branch as submodule"
git push
```

## Install by yarn

install private package

- https://classic.yarnpkg.com/en/docs/cli/add/

yarn add <git remote url>#<branch/commit/tag> installs a package from a remote git repository at specific git branch, git commit or git tag.

```
yarn add git@github.com:hiiamyes/frontend-cookbook.git#release
```

Couldn't find any versions for "git" that matches "github.com:hiiamyes/frontend-cookbook.git#release"
? Please choose a version of "git" from this list: (Use arrow keys)

```
yarn add https://github.com/hiiamyes/frontend-cookbook.git#release
```

```
yarn add git+ssh://github.com/hiiamyes/frontend-cookbook.git#release
```

## Install by submodule

If you're not allowed to ssh Github in CI

```
git submodule add -b release -- https://github.com/hiiamyes/frontend-cookbook.git frontend-cookbook
yarn add file:emq-ui-kit
```

## Remove submodule



## Npm prepare for private npm package

- https://cloudfour.com/thinks/how-to-distribute-a-pattern-library-as-an-npm-package-from-a-private-git-repo/#distribute-your-npm-package-from-git
- https://blog.jim-nielsen.com/2018/installing-and-building-an-npm-package-from-github/
