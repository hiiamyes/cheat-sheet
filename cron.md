[cron cheatsheet](https://devhints.io/cron)
[The Ultimate Crontab Cheatsheet](https://www.codementor.io/akul08/the-ultimate-crontab-cheatsheet-5op0f7o4r)

# Format
Min  Hour Day  Mon  Weekday
*    *    *    *    *  command to be executed
┬    ┬    ┬    ┬    ┬
│    │    │    │    └─  Weekday  (0=Sun .. 6=Sat)
│    │    │    └──────  Month    (1..12)
│    │    └───────────  Day      (1..31)
│    └────────────────  Hour     (0..23)
└─────────────────────  Minute   (0..59)
