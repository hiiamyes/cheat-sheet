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
git checkout --orphan deploy
git add .
git commit -m "deploybranch folder content"
git push -u origin deploy

git checkout master
git submodule add -b deploy -- /remote/url/of/your/own/repo dist
git commit -m "Add deploy branch as submodule"
git push
```
