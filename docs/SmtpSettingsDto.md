# DocspaceApiSdk::SmtpSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | **String** | The SMTP host. | [optional] |
| **port** | **Integer** | The SMTP port. | [optional] |
| **sender_address** | **String** | The sender address. | [optional] |
| **sender_display_name** | **String** | The sender display name. | [optional] |
| **credentials_user_name** | **String** | The credentials username. | [optional] |
| **credentials_user_password** | **String** | The credentials user password. | [optional] |
| **enable_ssl** | **Boolean** | Specifies whether the SSL is enabled or not. | [optional] |
| **enable_auth** | **Boolean** | Specifies whether the authentication is enabled or not. | [optional] |
| **use_ntlm** | **Boolean** | Specifies whether to use NTLM or not. | [optional] |
| **is_default_settings** | **Boolean** | Specifies if the current settings are default or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SmtpSettingsDto.new(
  host: mail.example.com,
  port: 25,
  sender_address: notify@example.com,
  sender_display_name: Postman,
  credentials_user_name: notify@example.com,
  credentials_user_password: example value,
  enable_ssl: true,
  enable_auth: true,
  use_ntlm: true,
  is_default_settings: true
)
```
