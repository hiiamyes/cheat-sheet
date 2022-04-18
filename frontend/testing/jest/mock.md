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

```js
import elementUI from "element-ui";
elementUI.Message = namedMockFn("Message");
```

## Mock axios

https://vhudyma-blog.eu/3-ways-to-mock-axios-in-jest/

```
import axios from "axios";

jest.mock("axios");

const users = [];
axios.get.mockResolvedValueOnce(users);
```

# mock export const?

```
import { getters, getUpdatedPunishment } from '~/store/teacher/profile/index'

describe('updatedServices', () => {
  getUpdatedPunishment = jest.mockReturnValue(q)
  // 'getUpdatedPunishment' is read-only.
```

The members of 'profile' are read-only.eslintno-import-assign

```
/* eslint-disable no-import-assign */
import * as profile from '~/store/teacher/profile/index'

describe('updatedServices', () => {
  profile.getUpdatedPunishment = jest.fn().mockReturnValue(123)
```
