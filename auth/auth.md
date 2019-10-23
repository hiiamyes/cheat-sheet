# Auth

[SAML vs. OAuth: Which One Should I Use? - DZone Integration](https://dzone.com/articles/saml-versus-oauth-which-one)

## Difference Between SAML and OAuth

- SAML (Security Assertion Markup Language) is an umbrella standard that encompasses profiles, bindings and constructs to achieve Single Sign On (SSO), Federation and Identity Management.

- OAuth (Open Authorization) is a standard for authorization of resources. It does not deal with authentication.

- OAuth2

**Token or Message Format**

- SAML deals with XML as the data construct or token format.
- OAuth tokens can be binary, JSON or SAML as explained in OAuth Bearer Tokens.

**Transport**

SAML has Bindings that use HTTP such as HTTP POST Binding, HTTP REDIRECT Binding etc.

But there is no restriction on the transport format. You can use SOAP or JMS or any transport you want to use to send SAML tokens or messages.

OAuth uses HTTP exclusively.

**Scope**

- Even though SAML was designed to be applicable openly, it is typically used in Enterprise SSO scenarios -
  - within an enterprise or
  - enterprise to partner or
  - enterprise to cloud scenarios.
- OAuth has been designed for use with applications on the internet, primarily for delegated authorization of internet resources. OAuth is designed for Internet Scale.

**When Should I Use Which?**

- If your usecase involves SSO (when at least one actor or participant is an enterprise), then use SAML.
- If your usecase involves providing access (temporarily or permanent) to resources (such as accounts, pictures, files etc), then use OAuth.
- If you need to provide access to a partner or customer application to your portal, then use SAML.
- If your usecase requires a centralized identity source, then use SAML (Identity provider).
- If your usecase involves mobile devices, then OAuth2 with some form of Bearer Tokens is appropriate.

## Authentication vs Authorization

- Authentication
  - 認證
  - Authentication is about validating your credentials such as Username/User ID and password to verify your identity.
    - Single- Factor Authentication
    - Two- Factor Authentication
    - Multi- Factor Authentication:
- Authorization
  - 授權
  - Authorization occurs after your identity is successfully authenticated by the system, which therefore gives you full access to resources such as information, files, databases, funds, etc.
- https://medium.com/datadriveninvestor/authentication-vs-authorization-716fea914d55

## Log In vs Sign Up vs Log Out

- Log In
  - Log in with Google
- Sign Up
  - Don't have an account? Sign up with Email
- Log Out
