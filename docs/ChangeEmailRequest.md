# DocspaceApiSdk::ChangeEmailRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The user email address. | [optional] |
| **enc_email** | **String** | The user encrypted email address. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ChangeEmailRequest.new(
  email: john.doe@example.com,
  enc_email: encrypted_email_string
)
```
