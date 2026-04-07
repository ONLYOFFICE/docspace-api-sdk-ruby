# DocspaceApiSdk::AdminMessageSettingsRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | The content of the administrator message to be sent. |  |
| **email** | **String** | Email |  |
| **culture** | **String** | Culture | [optional] |
| **recaptcha_type** | [**RecaptchaType**](RecaptchaType.md) |  | [optional] |
| **recaptcha_response** | **String** | The user's response to the CAPTCHA challenge. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AdminMessageSettingsRequestsDto.new(
  message: Hello, this is a test message from the administrator.,
  email: user@example.com,
  culture: en-US,
  recaptcha_type: null,
  recaptcha_response: 03AGdBq24PBCbwiDRaS...
)
```
