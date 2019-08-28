[History](https://developer.mozilla.org/en-US/docs/Web/API/History)

[Manipulating the browser history](https://developer.mozilla.org/en-US/docs/Web/API/History_API)

# [Browser session history](https://developer.mozilla.org/en-US/docs/Web/API/History_API)

`window.history`: Get browser session history.

```
window.history.back()
window.history.forward()
window.history.go(-1)
```

HTML5

Add and modify history entries

```
history.pushState()
history.replaceState()
```

Current state

```
history.state
```

Events

- [`popstate`](https://developer.mozilla.org/en-US/docs/Web/API/History_API#The_popstate_event)
  - Every time the active history entry changes

# History stack

- Starting with HTML5

# [WebExtensions history](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/history)

# [ReactTraining/history](https://github.com/ReactTraining/history)

Manage session history with js

[createBrowserHistory](https://github.com/ReactTraining/history/blob/master/modules/createBrowserHistory.js)

```
const globalHistory = window.history;
...
const history = {
    length: globalHistory.length,
    action: 'POP',
    location: initialLocation,
    createHref,
    push,
    replace,
    go,
    goBack,
    goForward,
    block,
    listen
};
```

# React Router

[`Router.js`](https://github.com/ReactTraining/react-router/blob/38384f4e078e64085cf005b221f881b6261d786a/packages/react-router/modules/Router.js#L10): The public API for putting history on context.
