# sed

The acronym SED stands for Stream EDitor. It is a simple yet powerful utility that parses the text and transforms it seamlessly. SED was developed during 1973–74 by Lee E. McMahon of Bell Labs. Today, it runs on all major operating systems.

- https://www.tutorialspoint.com/sed/sed_overview.htm

## Basic syntax

```
sed [-n] [-e] 'command(s)' files
sed [-n] -f scriptfile files
```

- -e : Next argument is an editing command. Here, angular brackets imply mandatory parameter. By using this option, we can specify multiple commands. Let us print each line twice:

## bad flag in substitute command: '/'

```
PARTNER_PORTAL_API_BASE_URL=http://localhost:3003
k8s_config=$(
  cat "k8s.template.yaml" |
    sed "s/{{PARTNER_PORTAL_API_BASE_URL}}/$PARTNER_PORTAL_API_BASE_URL~g"
)
```

```
sed: 1: "s/{{PARTNER*PORTAL_API* ...": bad flag in substitute command: '/'
```

https://stackoverflow.com/questions/27787536/how-to-pass-a-variable-containing-slashes-to-sed

Use an alternate regex delimiter as sed allows you to use any delimiter (including control characters):

```
sed "s~$var~replace~g" $file
```
