http://dns-learning.twnic.net.tw/bind/intro6.html

### domain name

hiiamyes.com

### NS Records

Set up DNS provider's name server

### A

address ，將 DNS 網域名稱對應到 IPv4 的 32 位元位址。

### AAAA

可將 DNS 網域名稱對應到 IPv6 的 128 位元位址。

### CNAME

canonical name ，可為同一部主機設定許多別名，例如 mix.twnic.net.tw 的別名可為
www.twnic.net.tw 和 ftp.twnic.net.tw，因此所設定的別名都會連至同一部伺服器。
CNAME 是用來設定別名的，比方說我有一個網域 ssorc.tw

我想要讓 b.ssorc.tw 及 c.ssorc.tw 查到的是同 a.ssorc.tw

設法就要

b.ssorc.tw. CNAME a.ssorc.tw. c.ssorc.tw. CNAME a.ssorc.tw. a.ssorc.tw. A
192.168.1.1

## DNS provider

linode's dns

cloudfare

## Check

ping

```
ping hiiamyes.com

PING hiiamyes.com (139.162.47.241): 56 data bytes
64 bytes from 139.162.47.241: icmp_seq=0 ttl=47 time=87.307 ms
64 bytes from 139.162.47.241: icmp_seq=1 ttl=47 time=77.750 ms
```

```
traceroute hiiamyes.com
```
