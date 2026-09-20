# DocspaceApiSdk::ChangeEmailRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The new address in plain text, up to 255 characters. It is stored in lowercase, and one of this field and  `encEmail` is required. | [optional] |
| **enc_email** | **String** | The new address in the encrypted form the confirmation link carries. Pass the value from the link unchanged;  it is used only when `email` is empty. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ChangeEmailRequest.new(
  email: john.doe@example.com,
  enc_email: encrypted_email_string
)
```
