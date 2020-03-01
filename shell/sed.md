# sed

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
