# DocspaceApiSdk::SsoBindingTypeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **saml20_http_post** | **String** | The SAML 2.0 HTTP POST binding, which carries the request in a self-submitting form. It is what the  built-in configuration uses and the one to pick when requests are signed, since it has no length limit. | [optional][readonly] |
| **saml20_http_redirect** | **String** | The SAML 2.0 HTTP redirect binding, which carries the request in the query string and is therefore bound  by the length a URL may have. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SsoBindingTypeDto.new(
  saml20_http_post: urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST,
  saml20_http_redirect: urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect
)
```
