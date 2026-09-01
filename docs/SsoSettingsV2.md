# DocspaceApiSdk::SsoSettingsV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_modified** | **Time** | The timestamp indicating when the settings were last modified. | [optional] |
| **enable_sso** | **Boolean** | Specifies if the SSO settings are enabled or not. | [optional] |
| **idp_settings** | [**SsoIdpSettings**](SsoIdpSettings.md) | The SSO IdP settings. | [optional] |
| **idp_certificates** | [**Array&lt;SsoCertificate&gt;**](SsoCertificate.md) | The list of the IdP certificates. | [optional] |
| **idp_certificate_advanced** | [**SsoIdpCertificateAdvanced**](SsoIdpCertificateAdvanced.md) | The IdP advanced certificate. | [optional] |
| **sp_login_label** | **String** | The SP login label. | [optional] |
| **sp_certificates** | [**Array&lt;SsoCertificate&gt;**](SsoCertificate.md) | The list of the SP certificates. | [optional] |
| **sp_certificate_advanced** | [**SsoSpCertificateAdvanced**](SsoSpCertificateAdvanced.md) | The SP advanced certificate. | [optional] |
| **field_mapping** | [**SsoFieldMapping**](SsoFieldMapping.md) | The SSO field mapping. | [optional] |
| **hide_auth_page** | **Boolean** | Specifies if the authentication page will be hidden or not. | [optional] |
| **users_type** | **Integer** | The user type. | [optional] |
| **disable_email_verification** | **Boolean** | Specifies if the email verification is disabled or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SsoSettingsV2.new(
  last_modified: 1990-01-01T00:00:00Z,
  enable_sso: false,
  idp_settings: null,
  idp_certificates: [{crt=base64-cert-data, key=base64-key-data}],
  idp_certificate_advanced: null,
  sp_login_label: Single Sign-on,
  sp_certificates: [{crt=base64-cert-data, key=base64-key-data}],
  sp_certificate_advanced: null,
  field_mapping: null,
  hide_auth_page: false,
  users_type: 1,
  disable_email_verification: false
)
```
