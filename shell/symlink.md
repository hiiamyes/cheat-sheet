# Symlink

https://linuxize.com/post/how-to-remove-symbolic-links-in-linux/

A symbolic link, also known as a symlink, is a special type of file that points to another file or directory. It is something like a shortcut in Windows. A symlink can point to a file or a directory on the same or a different filesystem or partition.

Use the ls -l command to check whether a given file is a symbolic link, and to find the file or directory that symbolic link point to.

```
ls -l /usr/bin/python
lrwxrwxrwx 1 root root 9 Apr 16  2018 /usr/bin/python -> python2.7
```

```
ls -l /usr/local/bin/aws
lrwxr-xr-x  1 Yes  admin  22 Aug  4  2014 /usr/local/bin/aws -> /usr/local/aws/bin/aws
```
