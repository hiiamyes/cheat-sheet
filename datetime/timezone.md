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

