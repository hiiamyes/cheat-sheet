

## Installation

by `nvm`

## Check outdated packages

`npm outdated`

## Upgrade local packages

https://docs.npmjs.com/getting-started/updating-local-packages

`npm update`: Packages are just updated to Wanted version but not Latest.

`npm update react`

aliases: up, upgrade, udpate

[npm-check-updates](https://github.com/tjunnone/npm-check-updates)

## Version Symbol

[semver](https://docs.npmjs.com/misc/semver): The semantic versioner for npm

`[major, minor, patch]`

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
- [@fortawesome/free-solic-svg-icons](https://www.npmjs.com/package/@fortawesome/free-solid-svg-icons)


# package.lock
https://github.com/npm/npm/issues/16938#issuecomment-339863980

For our team, this appears to have resolved the issue (or its current incarnation, at least):

1. Ensure matching node/npm versions as a team: node -v and npm -v (and install matching versions if different)
1. Remove your node modules: rm -rf node_modules/
1. Clean your npm cache: npm cache clean --force
1. Revert the changes in your package-lock.json file (and this file only).
1. Install dependencies again: npm i

While this might be a bit heavy handed, it did solve the issue I was seeing and the integrity hash diffs went away.

Other reporters can try this and share results. Maybe we can learn more about the root cause.

# package from Github

```
npm install --save username/repo#branch-name
```

https://medium.com/@jonchurch/use-github-branch-as-dependency-in-package-json-5eb609c81f1a

[npm install](https://docs.npmjs.com/cli/install)
