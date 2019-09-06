```
yarn add @slack/web-api
```

```
const { WebClient } = require("@slack/web-api");
const web = new WebClient(token);

await web.chat.postMessage({
    channel,
    text: dailyStanup
});
```
