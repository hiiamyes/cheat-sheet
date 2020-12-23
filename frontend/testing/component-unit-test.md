# Component unit test

jest + [react-testing-library](https://github.com/kentcdodds/react-testing-library)

## Getting started

```
yarn add -D jest react-testing-library
```

## Example

```js
import React from "react";
import { render, cleanup, fireEvent } from "@testing-library/react";
import MoneyInput from "./index";

afterEach(cleanup);

describe("MoneyInput", () => {
  test("Placeholder", async () => {
    const minUnit = "100";
    const value = null;
    const onChange = jest.fn(() => {});
    const { getByTestId } = render(
      <MoneyInput value={value} minUnit={minUnit} onChange={onChange} />
    );
    const moneyInput = getByTestId("money-input");
    expect(moneyInput.placeholder).toBe("Input amount");
  });

  test("Min unit = 100", async () => {
    const minUnit = "100";
    const value = null;
    const onChange = jest.fn(() => {});
    const { getByTestId } = render(
      <MoneyInput value={value} minUnit={minUnit} onChange={onChange} />
    );
    const moneyInput = getByTestId("money-input");
    fireEvent.change(moneyInput, { target: { value: "1" } });
    expect(onChange).toHaveBeenCalledWith(100);
  });
});
```
