Tests written to check software functionality can be grouped into a few categories. Some of the most popular categories include:

- unit tests: check input => output of self-contained functions.
- integration tests: check that individual pieces of your app play nicely together.
- end-to-end tests: check that entire features work from the user’s perspective.

The key is to find the right balance between unit, integration and end-to-end tests. According to [Google’s Testing Blog](https://testing.googleblog.com/):

[Just Say No to More End-to-End Tests](https://testing.googleblog.com/2015/04/just-say-no-to-more-end-to-end-tests.html)

Testing Pyramid

Even with both unit tests and integration tests, you probably still will want a small number of end-to-end tests to verify the system as a whole. To find the right balance between all three test types, the best visual aid to use is the testing pyramid. Here is a simplified version of the testing pyramid from the opening keynote of the 2014 Google Test Automation Conference:

The bulk of your tests are unit tests at the bottom of the pyramid. As you move up the pyramid, your tests gets larger, but at the same time the number of tests (the width of your pyramid) gets smaller.
As a good first guess, Google often suggests a 70/20/10 split: 70% unit tests, 20% integration tests, and 10% end-to-end tests. The exact mix will be different for each team, but in general, it should retain that pyramid shape. Try to avoid these anti-patterns:
Inverted pyramid/ice cream cone. The team relies primarily on end-to-end tests, using few integration tests and even fewer unit tests. 
Hourglass. The team starts with a lot of unit tests, then uses end-to-end tests where integration tests should be used. The hourglass has many unit tests at the bottom and many end-to-end tests at the top, but few integration tests in the middle. 

# FAQ
- Difference between integration and end-to-end test
-- TBD...

# Framework

[mocha](https://github.com/mochajs/mocha)

[jest](https://github.com/facebook/jest)

[jasmine](https://github.com/jasmine/jasmine)

# Mock

[Sinon](https://github.com/sinonjs/sinon)
[Faker](https://github.com/Marak/Faker.js)
[nock](https://github.com/nock/nock) - Http server mocking

# E2E Test
https://ropig.com/blog/end-end-tests-dont-suck-puppeteer/


# Tools
- [Katalon Recoder](https://chrome.google.com/webstore/detail/katalon-recorder-selenium/ljdobmomdgdljniojadhoplhkpialdid/related)
- [Katalon](https://www.katalon.com/)
- [Selenium IDE](https://chrome.google.com/webstore/detail/selenium-ide/mooikfkahbdckldjjndioackbalphokd?hl=en)
- [cypress](https://www.cypress.io/)

# Jest 

## test 1 test

## watch

```
jest --watch
```


## GatsbyJS
https://www.gatsbyjs.org/docs/unit-testing/

## React SAP 

```
npm i jest babel-jest raf enzyme enzyme-adapter-react-16
```

# React Testing

## Unit Test
Jest + Enzyme

## Integration Test
Jest + [react-testing-library](https://github.com/kentcdodds/react-testing-library)

# Ref
https://medium.com/homeaway-tech-blog/integration-testing-in-react-21f92a55a894




