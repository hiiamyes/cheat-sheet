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