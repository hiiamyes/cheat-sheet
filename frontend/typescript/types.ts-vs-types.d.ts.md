# types.ts vs types.d.ts

In TypeScript, `.ts` and `.d.ts` are two different types of files used for different purposes:

- `.ts` files: These are your typical TypeScript files where you write your TypeScript code. They contain implementation logic and can be compiled into JavaScript `.js` files by the TypeScript compiler.

- `.d.ts` files: These are TypeScript definition files. They don't contain any implementation logic, but rather contain type information about code. They are used to provide TypeScript type information about an API that's written in JavaScript. In other words, they describe the shape and the behavior of JavaScript code to TypeScript.

  For instance, when you're using a JavaScript library in a TypeScript project, you typically need to install (or write) a `.d.ts` file for that library. This definition file tells TypeScript how to type check the code you're writing that uses this library.

To sum up:

- If you're writing actual code that you want to be transpiled to JavaScript, put it in a `.ts` file.
- If you're writing type definitions that describe the API of existing JavaScript code, put it in a `.d.ts` file.
