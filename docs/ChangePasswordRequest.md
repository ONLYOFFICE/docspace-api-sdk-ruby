# DocspaceApiSdk::ChangePasswordRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | The user password. | [optional] |
| **password_hash** | **String** | The user password hash. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ChangePasswordRequest.new(
  password: P@ssw0rd,
  password_hash: 5f4dcc3b5aa765d61d8327deb882cf99
)
```
