# DocspaceApiSdk::SsoIdpSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | The entity ID. | [optional] |
| **sso_url** | **String** | The SSO URL. | [optional] |
| **sso_binding** | **String** | The SSO binding. | [optional] |
| **slo_url** | **String** | The SLO URL. | [optional] |
| **slo_binding** | **String** | The SLO binding. | [optional] |
| **name_id_format** | **String** | The name ID format. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SsoIdpSettings.new(
  entity_id: https://idp.company.com/saml,
  sso_url: https://idp.example.com/sso,
  sso_binding: urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect,
  slo_url: https://idp.example.com/slo,
  slo_binding: urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect,
  name_id_format: urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress
)
```
