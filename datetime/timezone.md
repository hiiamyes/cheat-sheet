# Time Zone

## Standard

[tz database](https://en.wikipedia.org/wiki/Tz_database#cite_note-3)

The IETF has published RFC 6557, "Procedures for Maintaining the Time Zone Database" documenting best practices based on similar principles.

[Sources for time zone and daylight saving time data](http://web.cs.ucla.edu/~eggert/tz/tz-link.htm)

[eggert/tz](https://github.com/eggert/tz)

```
mkdir tzdb
cd tzdb
wget https://www.iana.org/time-zones/repository/tzcode-latest.tar.gz
wget https://www.iana.org/time-zones/repository/tzdata-latest.tar.gz
gzip -dc tzcode-latest.tar.gz | tar -xf -
gzip -dc tzdata-latest.tar.gz | tar -xf -
```

[Time Zone Database website](https://www.iana.org/time-zones) of the Internet Assigned Numbers Authority (IANA)

```
brew install lzip
lzip tzdb-2019a.tar.lz
```

## Native JS

.toISOstring()

## Moment

## Linux

```
date
date +"%Z %z"

timedatectl
timedatectl | grep "Time zone"

cat /etc/timezone

```
## Time zone name list


# UTC

- https://www.timeanddate.com/time/aboututc.html
- Coordinated Universal Time

# GMT

- Greenwich Mean Time Zone
- Asia/Taipei = GMT+8

# UTC vs GMT

https://www.timeanddate.com/time/gmt-utc-time.html

Greenwich Mean Time (GMT) is often interchanged or confused with Coordinated Universal Time (UTC). But GMT is a time zone and UTC is a time standard.

Although GMT and UTC share the same current time in practice, there is a basic difference between the two:

GMT is a time zone officially used in some European and African countries. The time can be displayed using both the 24-hour format (0 - 24) or the 12-hour format (1 - 12 am/pm).

UTC is not a time zone, but a time standard that is the basis for civil time and time zones worldwide. This means that no country or territory officially uses UTC as a local time.
