## Navigation / Redirection / Frontend Routing

- location: window.location is the same as window.location.href, in terms of behavior. window.location returns an object. If .href is not set, window.location defaults to change the parameter .href. Conclude: Use either one is fine.
  https://stackoverflow.com/questions/503093/how-do-i-redirect-to-another-webpage

```
// similar behavior as an HTTP redirect
window.location.replace("http://stackoverflow.com");
// similar behavior as clicking on a link
window.location.href = "http://stackoverflow.com";
```

- [react-router](https://github.com/ReactTraining/react-router)
