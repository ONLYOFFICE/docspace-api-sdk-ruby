# DocspaceApiSdk::AuthenticationTokenDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | The authentication token. | [optional] |
| **expires** | **Time** | The token expiration time. | [optional] |
| **sms** | **Boolean** | Specifies if the authentication code is sent by SMS or not. | [optional] |
| **phone_noise** | **String** | The phone number. | [optional] |
| **tfa** | **Boolean** | Specifies if the two-factor application is used or not. | [optional] |
| **tfa_key** | **String** | The two-factor authentication key. | [optional] |
| **confirm_url** | **String** | The confirmation email URL. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AuthenticationTokenDto.new(
  token: abcde12345,
  expires: 2024-01-15T10:30Z,
  sms: true,
  phone_noise: +1***1234,
  tfa: true,
  tfa_key: JBSWY3DPEHPK3PXP,
  confirm_url: https://example.com/confirm?token=abc123
)
```
