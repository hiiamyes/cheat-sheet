# typescript react

https://www.typescriptlang.org/docs/handbook/react.html
https://react-typescript-cheatsheet.netlify.app/docs/advanced/types_react_api/#typesreact

#

https://react-typescript-cheatsheet.netlify.app/docs/basic/getting-started/function_components
ComponentType - used for higher order components where you don't specifically deal with the intrinsic components

## React.FC vs React.ReactDOM vs JSX.Element vs React.ReactNode vs React.ComponentType vs React.ReactElement

https://react-typescript-cheatsheet.netlify.app/docs/basic/getting-started/basic_type_example#useful-react-prop-type-examples

```
export declare interface AppProps {
  children?: React.ReactNode; // best, accepts everything React can render
  childrenElement: JSX.Element; // A single React element
```

@Ferdaber's note: I discourage the use of most ...Element types because of how black-boxy JSX.Element is. You should almost always assume that anything produced by React.createElement is the base type React.ReactElement.

### JSX.Element vs React.ReactNode

Quote @ferdaber: A more technical explanation is that a valid React node is not the same thing as what is returned by React.createElement. Regardless of what a component ends up rendering, React.createElement always returns an object, which is the JSX.Element interface, but React.ReactNode is the set of all possible return values of a component.

JSX.Element -> Return value of React.createElement
React.ReactNode -> Return value of a component
