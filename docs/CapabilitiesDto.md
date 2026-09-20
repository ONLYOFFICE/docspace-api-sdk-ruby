# DocspaceApiSdk::CapabilitiesDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ldap_enabled** | **Boolean** | Whether members may sign in with their directory credentials. It is `false` both when LDAP sign-in is  switched off and when the pricing plan or the installation does not include it, and also when the settings  could not be read at all - a `false` here means the method is not offered, never that it is unknown. |  |
| **ldap_domain** | **String** | The directory domain members authenticate against, to be shown next to the login field. It is empty  whenever `ldapEnabled` is `false`, and also while the portal has not completed a directory synchronisation. | [optional] |
| **providers** | **Array&lt;String&gt;** | The keys of the external identity providers to offer, ordered for the country the caller's IP address  resolves to and reduced to those this installation has credentials for. Pass one of them as `provider` to  `POST api/2.0/authentication`. An empty list means external sign-in is not on offer. |  |
| **sso_label** | **String** | The caption for the single sign-on button in the portal language, empty whenever `ssoUrl` is. |  |
| **oauth_enabled** | **Boolean** | Whether external identity providers may be used on this portal at all. While it is `false`, `providers` is  empty because the list is not even assembled. |  |
| **sso_url** | **String** | The address to send the browser to for SAML single sign-on. It is empty when single sign-on is not on  offer, which is the one thing to test - there is no separate flag for it. |  |
| **identity_server_enabled** | **Boolean** | Whether the installation exposes its built-in identity server, which is what the portal's own OAuth  applications authenticate against. It concerns third-party applications signing in to the portal, not  portal members signing in to an external provider - that is `providers`. |  |

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
