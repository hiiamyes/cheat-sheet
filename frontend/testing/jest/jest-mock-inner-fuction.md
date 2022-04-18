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