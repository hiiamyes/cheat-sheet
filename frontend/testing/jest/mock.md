- https://stackoverflow.com/questions/40465047/how-can-i-mock-an-es6-module-import-using-jest

```js
const getMeRequest = (dataManager) => {
  return {};
};
export default getMeRequest;
//
import getMeRequest from "~/endpoint-builders/get-me-request";
jest.mock("~/endpoint-builders/get-me-request");
getMeRequest.mockImplementation(() => {
  mockFn("getMeRequest");
  return { data: { me } };
});
```

```js
const useNamedMockFn = () => {
  const mockFn = jest.fn();
  const namedMockFn =
    (name, implementation) =>
    (...args) => {
      if (implementation) mockFn.mockImplementationOnce(implementation);
      mockFn(name, ...args);
    };
  return [mockFn, namedMockFn];
};
export default useNamedMockFn;
//
const [mockFn, namedMockFn] = useNamedMockFn();
```
