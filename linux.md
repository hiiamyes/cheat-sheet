# Linux

## Check disk space

https://opensource.com/article/18/7/how-check-free-disk-space-linux

```
<!-- disk free -->
<!-- shows disk space in human-readable format -->
df -h
<!-- shows the file system's complete disk usage even if the Available field is 0 -->
df -a
<!-- shows the disk usage along with each block's filesystem type (e.g., xfs, ext2, ext3, btrfs, etc.) -->
df -T
<!-- shows used and free inodes -->
df -i

<!-- shows the disk usage of files, folders, etc. in the default kilobyte size -->
du
<!-- shows disk usage in human-readable format for all directories and subdirectories -->
du -h
```

## Folder

`/opt/`:

`/srv/`:

`~/`: `/User/current-user/`

# A a good command to find the top size directories in the current working directory would be

```sh
du -Sh | sort -rh | head -5
```

Once you've found the largest folders, you could use

```sh
cd /path/to/directory
ls -la
```

to get a list of the files in the directory along with the file sizes.
