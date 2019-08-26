[cron cheatsheet](https://devhints.io/cron)
[The Ultimate Crontab Cheatsheet](https://www.codementor.io/akul08/the-ultimate-crontab-cheatsheet-5op0f7o4r)

# Format

Min Hour Day Mon Weekday

```
* * * * * command to be executed
┬ ┬ ┬ ┬ ┬
│ │ │ │ └─ Weekday (0=Sun .. 6=Sat)
│ │ │ └────── Month (1..12)
│ │ └─────────── Day (1..31)
│ └──────────────── Hour (0..23)
└───────────────────── Minute (0..59)
```

# Crontab

```
# Adding tasks easily
echo "@reboot echo hi" | crontab
# Open in editor
crontab -e
# List tasks
crontab -l [-u user]
```

- -e (edit user's crontab)
- -l (list user's crontab)
- -r (delete user's crontab)
- -i (prompt before deleting user's crontab)

```
crontab -e
* * * * * cd ~/app/pangolin && docker-compose run crawler node src/getStation.js
crontab -l
grep CRON /var/log/syslog*
grep CRON /var/log/syslog.1 | grep -E "(yes)"
```
