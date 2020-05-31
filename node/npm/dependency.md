# Dependency

Dependencies serve many different purposes. Some dependencies are needed to build your project, others are needed when you’re running your program. As such there are a number of different types of dependencies that you can have (e.g. dependencies, devDependencies, and peerDependencies).

[Types of dependencies](https://yarnpkg.com/en/docs/dependency-types#toc-peer-dependencies)

## dependencies:

- Packages required by your application in production.
- These are your normal dependencies, or rather ones that you need when running your code (e.g. React or ImmutableJS).

## devDependencies:

- Packages that are only needed for local development and testing.
- These are your development dependencies. Dependencies that you need at some point in the development workflow but not while running your code (e.g. Babel or Flow).

## dependencies vs devDependencies

https://medium.com/@dylanavery720/npmmmm-1-dev-dependencies-dependencies-8931c2583b0c

The difference between these two, is that devDependencies are modules which are only required during development, while dependencies are modules which are also required at runtime.

## peerDependencies:

- Peer dependencies are a special type of dependency that would only ever come up if you were publishing your own package.
- Having a peer dependency means that your package needs a dependency that is the same exact dependency as the person installing your package. This is useful for packages like react that need to have a single copy of react-dom that is also used by the person installing it.

Issue

```
warning " > styled-components@5.0.1" has unmet peer dependency "react-is@>= 16.8.0".
```

```
yarn add -P
yarn add --peer
```


## optionalDependencies:

- Optional dependencies are just that: optional. If they fail to install, Yarn will still say the install process was successful.
- This is useful for dependencies that won’t necessarily work on every machine and you have a fallback plan in case they are not installed (e.g. Watchman).
