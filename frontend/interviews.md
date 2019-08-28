- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise
- https://eddmann.com/posts/implementing-promise-all-and-promise-race-in-javascript/

# Implementing Promise.all

```
const all = (...promises) => {
    const results = [];
    for(const [i, promise] of promises.entries()){
        promise.then(res => {
            results[i] = res
        }).catch(()=>{
            return new Promise().reject()
        })
    }
    return new Promise().resolve(results)
}
```

# Implementing Promise.race
