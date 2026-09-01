# DocspaceApiSdk::AccessRequestKeyDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | User ID | [optional] |
| **public_key_id** | **String** | Public key ID | [optional] |
| **private_key_enc** | **String** | Encrypted private key | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AccessRequestKeyDto.new(
  user_id: 00000000-0000-0000-0000-000000000000,
  public_key_id: 00000000-0000-0000-0000-000000000000,
  private_key_enc: encrypted_key_string
)
```
