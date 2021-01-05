# Zombie Process

## When it happens

Docker + puppeteer

## Solution

List zombie processes

```
apt-get update && apt-get install procps
ps aux | grep 'Z'
```

[dumb-init](https://github.com/Yelp/dumb-init)?

https://github.com/puppeteer/puppeteer/blob/main/docs/troubleshooting.md#running-puppeteer-in-docker

## How to kill them?

https://stackoverflow.com/questions/16944886/how-to-kill-zombie-process#:~:text=6%20Answers&text=A%20zombie%20is%20already%20dead,entry%20in%20the%20process%20table.)

A zombie is already dead, so you cannot kill it. To clean up a zombie, it must be waited on by its parent, so killing the parent should work to eliminate the zombie. (After the parent dies, the zombie will be inherited by pid 1, which will wait on it and clear its entry in the process table.)

## What is PID1?

https://vagga.readthedocs.io/en/latest/pid1mode.html

http://linux.vbird.org/linux_basic/0440processcontrol.php

kill -signal PID

kill 可以幫我們將這個 signal 傳送給某個工作 (%jobnumber) 或者是某個 PID (直接輸入數字)。 要再次強調的是： kill 後面直接加數字與加上 %number 的情況是不同的！ 這個很重要喔！因為工作控制中有 1 號工作，但是 PID 1 號則是專指『 systemd 』這支程式！你怎麼可以將 systemd 關閉呢？ 關閉 systemd ，你的系統就當掉了啊！所以記得那個 % 是專門用在工作控制的喔！ 我們就活用一下 kill 與剛剛上面提到的 ps 來做個簡單的練習吧！

## User cannot list resource "deployments" in API group

## https://github.com/puppeteer/puppeteer/issues/1825

How did we fix it? (very hacky method)
We used browser.disconnect() instead of browser.close(). We manualy managed chrome processes such as kill.

Example Code:

```
browser.on('disconnected', () => {
    console.log('sleeping 100ms'); //  sleep to eliminate race condition
    setTimeout(function(){
    console.log(`Browser Disconnected... Process Id: ${process}`);
    child_process.exec(`kill -9 ${process}`, (error, stdout, stderr) => {
        if (error) {
        console.log(`Process Kill Error: ${error}`)
        }
        console.log(`Process Kill Success. stdout: ${stdout} stderr:${stderr}`);
    });
}, 100);
```

Firstly we didn't use this method. We only killed the process after browser disconnect. We got the following error:

`Error: read ECONNRESET at exports._errnoException (util.js:1018:11) at TCP.onread (net.js:568:26)`

I think it looks like a puppeteer process management problem. When we used this method, we didn't receive any puppeteer related errors. How can we fix it?
