# Jest mock inner function

https://stackoverflow.com/questions/51269431/jest-mock-inner-function

If an ES6 module directly exports two functions (not within a class, object, etc., just directly exports the functions like in the question) and one directly calls the other, then that call cannot be mocked.

In this case, funcB cannot be mocked within funcA the way the code is currently written.

A mock replaces the module export for funcB, but funcA doesn't call the module export for funcB, it just calls funcB directly.

Mocking funcB within funcA requires that funcA call the module export for funcB.

That can be done in one of two ways:

1. Move funcB to its own module

2. Import the module into itself

"ES6 modules support cyclic dependencies automatically" so it is perfectly valid to import a module into itself so that functions within the module can call the module export for other functions in the module:

https://exploringjs.com/es6/ch_modules.html#sec_cyclic-dependencies


Ref
- https://medium.com/welldone-software/jest-how-to-mock-a-function-call-inside-a-module-21c05c57a39f
- https://github.com/Xunnamius/babel-plugin-explicit-exports-references

Is this a bug?

After encountering this problem over five years ago, someone posed the question to the Jest project: how do you mock a specific function in a module?, to which a contributor responded:

Supporting the above by mocking a function after requiring a module is impossible in JavaScript – there is (almost) no way to retrieve the binding that foo refers to and modify it.

However, if you change your code to this:

var foo = function foo() {};
var bar = function bar() {
  exports.foo();
};

exports.foo = foo;
exports.bar = bar;
and then in your test file you do:

var module = require('../module');
module.foo = jest.fn();
module.bar();
it will work just as expected. This is what we do at Facebook where we don't use ES2015.

While ES2015 modules may have immutable bindings for what they export, the underlying compiled code that babel compiles to right now doesn't enforce any such constraints. I see no way currently to support exactly what you are asking...

- https://github.com/facebook/jest/issues/936
- https://github.com/facebook/jest/issues/936#issuecomment-214939935

---

https://github.com/facebook/jest/issues/936#issuecomment-545080082


The way I see it after reading this whole thread and testing over and over, there are 3 options....

Option 1 - declare all functions using const
This requires you to mandate the use of function expressions over declarations. Fortunately, the func-style eslint rule has got your back.

Using export const allows you to spyOn functions that are used by other functions from within the same module.

// hello.js
export const message = () => {
  return 'Hello world';
}

export const foo = () => {
  return message();
}
// hello.test.js
import * as testModule from './hello.js';

describe('test spyon with function expressions', function () {
  afterAll(() => {
    jest.restoreAllMocks();
  });
  it('should NOT mock message in foo', function () {
    const actual = testModule.foo();

    expect(actual).toBe('Hello world');
  });

  it('should mock message in foo', function () {
    jest.spyOn(testModule, 'message').mockReturnValue('my message');

    const actual = testModule.foo();
    
    expect(actual).toBe('my message');
    expect(testModule.message).toHaveBeenCalledTimes(1);
  });
});
Option 2 - Use rewire babel plugin
If you don't want to mandate the use of function expressions (i.e. using const) this could be a good approach.

This allows you to rewire (aka mock) functions from the same module. I could imagine the code would look something like that below but haven't tested it. Also from their docs it looks like you can rewire functions in the same module that are not even exported from the module 👍, imagine the example below without exporting the message function.

Example:

// hello.js
export function message() {
  return 'Hello world';
}

export function foo() {
  return message();
}
// hello.test.js
import * as testModule from './hello.js';

describe('test rewire api', function() {
  it('should NOT mock message in foo', function () {
    const actual = testModule.foo();

    expect(actual).toBe('Hello world');
  });

  it('should mock message in foo', function () {
    testModule.__RewireAPI__.__Rewire__('message', jest.fn().mockReturnValue('my message'));

    const actual = testModule.foo();
    
    expect(actual).toBe('my message');
    expect(testModule.message).toHaveBeenCalledTimes(1);
    testModule.__RewireAPI__.__ResetDependency__('message');
  });
});
See the docs for examples.

Note: Requires babel transpilation

Option 3 - Separate all functions into seperate modules/files
This option is the least favorable but would clearly work just fine with the typical mock functionality.

PS: Although this tread was very enlightening and often entertaining, I hope this synopsis mitigates the need for others to read the whole thread. ✌️