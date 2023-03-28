# AWS S3

https://awscli.amazonaws.com/v2/documentation/api/latest/reference/opensearch/index.html

```
aws opensearch list-domain-names --profile at-sso
```

```
{
    "DomainNames": [
        {
            "DomainName": "at-staging-all",
            "EngineType": "Elasticsearch"
        },
        {
            "DomainName": "at-prod-teachers-speed",
            "EngineType": "Elasticsearch"
        },
        {
            "DomainName": "at-prod-teachers",
            "EngineType": "Elasticsearch"
        },
        {
            "DomainName": "ap-production",
            "EngineType": "Elasticsearch"
        }
    ]
}
```
`