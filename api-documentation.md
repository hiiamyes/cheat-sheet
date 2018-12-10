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
