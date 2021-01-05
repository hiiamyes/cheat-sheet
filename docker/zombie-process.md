# Zombie Process

## When it happens

Docker + puppeteer

## Solution

List zombie processes

```
apt-get update && apt-get install procps
ps aux | grep 'Z'
```

dumb-init?

## How to kill them?

https://stackoverflow.com/questions/16944886/how-to-kill-zombie-process#:~:text=6%20Answers&text=A%20zombie%20is%20already%20dead,entry%20in%20the%20process%20table.)

A zombie is already dead, so you cannot kill it. To clean up a zombie, it must be waited on by its parent, so killing the parent should work to eliminate the zombie. (After the parent dies, the zombie will be inherited by pid 1, which will wait on it and clear its entry in the process table.)

## What is PID1?
