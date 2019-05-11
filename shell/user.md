# User

## Add user

```
sudo adduser yes
```

## Add user to sudo group

```
sudo adduser yes sudo
```

## Get current user

```
echo $USER
id -u -n
whoami
```

## List user of group

```
sudo cat /etc/group | grep sudo
sudo cat /etc/group | grep admin
```

## Delete user from group

```
sudo deluser yes sudo
sudo deluser yes admin
```
