# DocspaceApiSdk::ConfirmData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email address to confirm the user's identity. | [optional] |
| **first** | **Boolean** | Specifies whether this is the first access to the user's account. | [optional] |
| **key** | **String** | The unique confirmation key for validating user identity. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConfirmData.new(
  email: user@example.com,
  first: true,
  key: abc123def456
)
```
