# Versioning

## versions

https://github.com/silverwind/versions

```
yarn versions
```

## release-it

https://github.com/release-it/release-it

```
npx release-it
```

## Symbol

- [semver](https://docs.npmjs.com/misc/semver): The semantic versioner for npm `[major, minor, patch]`

- [Semantic Versioning 2.0.0](https://semver.org)

Given a version number MAJOR.MINOR.PATCH, increment the:

- MAJOR version when you make incompatible API changes,
- MINOR version when you add functionality in a backwards compatible manner, and
- PATCH version when you make backwards compatible bug fixes.

Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

# example

https://docs.npmjs.com/about-semantic-versioning
https://semver.npmjs.com/

For example, to specify acceptable version ranges up to 1.0.4, use the following syntax:

Patch releases: 1.0 or 1.0.x or ~1.0.4
Minor releases: 1 or 1.x or ^1.0.4
Major releases: `*` or `x`

how do I...
include everything that does not increment the first non-zero portion of semver
use the caret (aka hat) symbol, ^

include everything greater than a particular version in the same minor range
use the tilde symbol, ~

```

```
