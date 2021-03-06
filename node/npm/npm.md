## Installation

by `nvm`

## Check outdated packages

```
npm outdated
```

```
yarn outdated
```

## Upgrade local packages

https://docs.npmjs.com/getting-started/updating-local-packages

`npm update`: Packages are just updated to Wanted version but not Latest.

`npm install styled-components@4.3.2`

`npm update react`

aliases: up, upgrade, udpate

[npm-check-updates](https://github.com/tjunnone/npm-check-updates)

### [Tiled Ranges](https://docs.npmjs.com/misc/semver#tilde-ranges-123-12-1)

Allows patch-level changes if a minor version is specified on the comparator. Allows minor-level changes if not.

- ~version: Approximately equivalent to version
- examples: ~1.2.3 ~1.2 ~1

### [Caret Ranges](https://docs.npmjs.com/misc/semver#caret-ranges-123-025-004)

Allows changes that do not modify the left-most non-zero digit in the [major, minor, patch] tuple. In other words, this allows patch and minor updates for versions 1.0.0 and above, patch updates for versions 0.X >=0.1.0, and no updates for versions 0.0.X.

- ^version: Compatible with version
- example: ^1.2.3 ^0.2.5 ^0.0.4§

https://docs.npmjs.com/files/package.json

## Show Version

`yarn info antd version`

## [npm-scope](https://docs.npmjs.com/misc/scope)

All npm packages have a name. Some package names also have a scope. A scope follows the usual rules for package names (URL-safe characters, no leading dots or underscores). When used in package names, scopes are preceded by an `@` symbol and followed by a slash, e.g.

`@somescope/somepackagename`

Scopes are a way of grouping related packages together, and also affect a few things about the way npm treats the package.

Each npm user/organization has their own scope, and only you can add packages in your scope. This means you don’t have to worry about someone taking your package name ahead of you. Thus it is also a good way to signal official packages for organizations.

ex:

- [@fortawesome/free-solic-svg-icons](https://www.npmjs.com/package/@fortawesome/free-solid-svg-icons)

# package.lock

https://github.com/npm/npm/issues/16938#issuecomment-339863980

For our team, this appears to have resolved the issue (or its current incarnation, at least):

1. Ensure matching node/npm versions as a team: `node -v` and `npm -v` (and install matching versions if different)
1. Remove your node modules: `rm -rf node_modules/`
1. Clean your npm cache: `npm cache clean --force`
1. Revert the changes in your package-lock.json file (and this file only).
1. Install dependencies again: `npm i`

While this might be a bit heavy handed, it did solve the issue I was seeing and the integrity hash diffs went away.

Other reporters can try this and share results. Maybe we can learn more about the root cause.

---

@coredevs if your `package-lock.json` in admin project changes every time after `npm install`, please follow the command here: https://github.com/npm/npm/issues/16938#issuecomment-339863980 (edited)
GitHub
npm install produces different lockfiles on different computes · Issue #16938 · npm/npm
I&#39;m opening this issue because: npm is crashing. npm is producing an incorrect install. npm is doing something I don&#39;t understand. Other (see below for feature requests): What&#39;s going w...
tried in my computer and @Yes Lee’s computer, it works

## SHA

https://stackoverflow.com/questions/47638381/why-did-package-lock-json-change-the-integrity-hash-from-sha1-to-sha512

If someone else working with the codebase and sees a git change from sha512 down to sha1 (which is the issue I was having) you can fix it by running the following:

Discard the changes in git for package-lock.json

```
npm i -g npm
rm -rf node_modules/
npm i
```

# package from Github

```
npm install --save username/repo#branch-name
```

https://medium.com/@jonchurch/use-github-branch-as-dependency-in-package-json-5eb609c81f1a

[npm install](https://docs.npmjs.com/cli/install)
