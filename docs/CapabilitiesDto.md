# DocspaceApiSdk::CapabilitiesDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ldap_enabled** | **Boolean** | Specifies if the LDAP settings are enabled or not. |  |
| **ldap_domain** | **String** | The LDAP domain. | [optional] |
| **providers** | **Array&lt;String&gt;** | The list of providers. |  |
| **sso_label** | **String** | The SP login label. |  |
| **oauth_enabled** | **Boolean** | Specifies if OAuth is enabled or not. |  |
| **sso_url** | **String** | The SSO URL. If this parameter is empty, then the SSO settings are disabled. |  |
| **identity_server_enabled** | **Boolean** | Specifies if an identity server is enabled or not. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CapabilitiesDto.new(
  ldap_enabled: false,
  ldap_domain: example.com,
  providers: [google, facebook, microsoft],
  sso_label: Enterprise SSO,
  oauth_enabled: true,
  sso_url: https://sso.example.com/login,
  identity_server_enabled: false
)
```
