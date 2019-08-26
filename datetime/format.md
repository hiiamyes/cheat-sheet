#

```
new Date()
// Mon Aug 26 2019 23:37:56 GMT+0800 (Taipei Standard Time) {}

new Date().getTime()
// 1566833904762

new Date().toISOString()
// "2019-08-26T15:38:43.576Z"

new Date("2018-08-26 16:00:00").toISOString()
// Locally, Taiwan (GMT+8)
// "2019-08-26T08:00:00.000Z"
// On Linode (GMT+0)
// "2019-08-26T16:00:00.000Z"

new Date("2018-08-26 16:00:00+0800").toISOString()
// Absolute timezone
// "2019-08-26T08:00:00.000Z"
```
