

## Installation

by `nvm`

## Check outdated packages

`npm outdated`

## Upgrade local packages

https://docs.npmjs.com/getting-started/updating-local-packages

`npm update`: Packages are just updated to Wanted version but not Latest.

[npm-check-updates](https://github.com/tjunnone/npm-check-updates)

## Version Symbol
- ~version "Approximately equivalent to version" See semver
- ^version "Compatible with version" See semver

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
1. While this might be a bit heavy handed, it did solve the issue I was seeing and the integrity hash diffs went away.

Other reporters can try this and share results. Maybe we can learn more about the root cause.
