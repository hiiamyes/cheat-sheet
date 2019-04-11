# Restful

- [PUT](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/PUT): creates a new resource or replaces a representation of the target resource with the request payload.
- [post](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/POST): sends data to the server.
- [PATCH](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods/PATCH): applies partial modifications to a resource.

The difference between PUT and POST is that PUT is idempotent: calling it once or several times successively has the same effect (that is no side effect), where successive identical POST may have additional effects, like passing an order several times.

# Format
- raml
- openapi 2.0 (swagger)
- openapi 3.0
  - [Specification](https://swagger.io/docs/specification/about/)
  - [Schema](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md#schema)

- https://swagger.io/blog/api-strategy/difference-between-swagger-and-openapi/
  - OpenAPI = Specification
  - Swagger = Tools for implementing the specification 

- converter
  - https://mulesoft.github.io/oas-raml-converter/

# Doc
- [Slate](https://github.com/lord/slate)
- [ReDoc](https://github.com/Rebilly/ReDoc)

# Tool
- [openapi gui](https://mermade.github.io/openapi-gui/)
- [json-schema-ref-parser](https://github.com/APIDevTools/json-schema-ref-parser)
- [swagger-parser](https://github.com/APIDevTools/swagger-parser)

https://azimi.me/2015/07/16/split-swagger-into-smaller-files.html

# Requirement
- Functionality
  - Auth?
  - Search
  - Table of content (TOC)
  - Semantic API summary name
  - Printable?
  - Discriminator?
- Development
  - Spec Source
    - Openapi 3.0
    - ~Markdown~
  - Seperate Files
    - $ref resolver
      - https://github.com/Rebilly/ReDoc/issues/541
  - Watch


# SAAS
readme.io 99/month

# Snippet

```
/i-am-an-api:
  get:
    requestBody:
      content:
        "application/json":
          schema:
            required:
    responses:
      200:
        content:
          application/json:
            schema:
              required:
                - partner
              properties:
                partner:
                  type: string
```                  
                
