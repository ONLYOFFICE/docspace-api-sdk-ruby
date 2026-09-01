# DocspaceApiSdk::AuthWithCodeRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_name** | **String** | The username or email used for authentication. | [optional] |
| **password** | **String** | The password in plain text for user authentication. | [optional] |
| **password_hash** | **String** | The hashed password for secure verification. | [optional] |
| **provider** | **String** | The type of authentication provider (e.g., internal, Google, Azure). | [optional] |
| **access_token** | **String** | The access token used for authentication with external providers. | [optional] |
| **serialized_profile** | **String** | The serialized user profile data, if applicable. | [optional] |
| **code_o_auth** | **String** | The authorization code used for obtaining OAuth tokens. | [optional] |
| **session** | **Boolean** | Specifies whether the authentication is session-based. | [optional] |
| **confirm_data** | [**ConfirmData**](ConfirmData.md) | The additional confirmation data required for authentication. | [optional] |
| **recaptcha_type** | [**RecaptchaType**](RecaptchaType.md) | The type of CAPTCHA validation used. | [optional] |
| **recaptcha_response** | **String** | The user's response to the CAPTCHA challenge. | [optional] |
| **culture** | **String** | The culture code for localization during authentication. | [optional] |
| **code** | **String** | The code for two-factor authentication. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AuthWithCodeRequestsDto.new(
  user_name: user@example.com,
  password: SecurePassword123!,
  password_hash: 5f4dcc3b5aa765d61d8327deb882cf99,
  provider: google,
  access_token: ya29.a0AfH6SMBx...,
  serialized_profile: {"name":"John Doe","email":"john@example.com"},
  code_o_auth: 4/0AY0e-g7...,
  session: true,
  confirm_data: null,
  recaptcha_type: null,
  recaptcha_response: 03AGdBq25...,
  culture: en-US,
  code: 123456
)
```
