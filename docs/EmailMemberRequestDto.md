# DocspaceApiSdk::EmailMemberRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The user email address. |  |
| **recaptcha_type** | [**RecaptchaType**](RecaptchaType.md) | The type of CAPTCHA validation used. | [optional] |
| **recaptcha_response** | **String** | The user's response to the CAPTCHA challenge. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EmailMemberRequestDto.new(
  email: john.doe@example.com,
  recaptcha_type: null,
  recaptcha_response: 03AGdBq27...
)
```
