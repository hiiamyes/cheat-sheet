# Xcode

[如何管理 Xcode 版本才不會害到自己跟團隊](https://13h.tw/2019/11/01/manage-xcode-versions.html)

## Installation

From Apple's website

下載頁面的首頁是 https://developer.apple.com/downloads

列出下載檔的位置是在 https://developer.apple.com/downloads/more

都需要登入開發者帳號。

## Through `xcode-install`

```
gem install xcode-install
xcversion update
xcversion list
xcversion install 11.4
```

Keeps timeout...

## xcode-select

https://cms.35g.tw/coding/xcode-select-%E5%88%87%E6%8F%9Bxcode%E9%A0%90%E8%A8%AD%E8%B7%AF%E5%BE%91/

```
xcode-select -version
xcode-select -print-path
xcode-select --switch <path>
```

## check xcode version

```
/usr/bin/xcodebuild -version
```
