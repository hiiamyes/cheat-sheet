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

## nodejs sdk

### esSearch

```
const path = require('path');
require('dotenv').config({ path: path.resolve(__dirname, '../../../env/.env') });
const { Client } = require('@opensearch-project/opensearch');
const { AwsSigv4Signer } = require('@opensearch-project/opensearch/aws');

const client = new Client({
  ...AwsSigv4Signer({
    region: 'ap-northeast-1',
    service: 'es',
    access_key_id: process.env.AWS_ACCESS_KEY_ID,
    secret_access_key: process.env.AWS_SECRET_ACCESS_KEY,
  }),
  node: process.env.ELASTICSEARCH_URL,
});

(async () => {
  const response = await client.search({
    index: 'i18n_nuxt',
    body: {
      from: 0,
      size: 2000,
      sort: [{ updated_at: 'desc' }],
    },
  });
  console.log(response.body.hits.hits[0]);
})();
```

### esBulk

```
const path = require('path');
require('dotenv').config({ path: path.resolve(__dirname, '../../../env/.env') });
const { Client } = require('@opensearch-project/opensearch');
const { AwsSigv4Signer } = require('@opensearch-project/opensearch/aws');

const INDEX = 'i18n_nuxt';

const client = new Client({
  ...AwsSigv4Signer({
    region: 'ap-northeast-1',
    service: 'es',
    access_key_id: process.env.AWS_ACCESS_KEY_ID,
    secret_access_key: process.env.AWS_SECRET_ACCESS_KEY,
  }),
  node: process.env.ELASTICSEARCH_URL,
});

(async () => {
  const documents = [
    {
      key: 'yes_test',
      updated_at: new Date().toISOString(),
      value_en: 'yes_test',
    },
  ];
  const q = await client.helpers.bulk({
    datasource: documents,
    onDocument(doc) {
      return [{ update: { _index: INDEX, _id: doc.key } }, { doc_as_upsert: true }];
    },
  });
  console.log(q);
  // console.log(response.body.hits.hits[0]);
})();
```

### esDelete

```
const path = require('path');
require('dotenv').config({ path: path.resolve(__dirname, '../../../env/.env') });
const { Client } = require('@opensearch-project/opensearch');
const { AwsSigv4Signer } = require('@opensearch-project/opensearch/aws');

const INDEX = 'i18n_nuxt';

const client = new Client({
  ...AwsSigv4Signer({
    region: 'ap-northeast-1',
    service: 'es',
    access_key_id: process.env.AWS_ACCESS_KEY_ID,
    secret_access_key: process.env.AWS_SECRET_ACCESS_KEY,
  }),
  node: process.env.ELASTICSEARCH_URL,
});

(async () => {
  await client.delete({
    index: 'i18n_nuxt',
    id: 'yes_test',
  });
  // await client.indices.delete({
  //   index: 'i18n_nuxt',
  // });
  // console.log(r);
})();
```
