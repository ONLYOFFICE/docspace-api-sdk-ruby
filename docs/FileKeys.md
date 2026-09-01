# DocspaceApiSdk::FileKeys

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The identifier of the user the file key was issued to. | [optional] |
| **public_key_id** | **String** | The identifier of the key pair the file key is encrypted for. | [optional] |
| **private_key_enc** | **String** | The file key, encrypted with the public key of the pair. | [optional] |
| **tenant_id** | **Integer** | The identifier of the portal the file belongs to. | [optional] |
| **file_id** | **Integer** | The identifier of the file the key unlocks. | [optional] |
| **create_on** | **Time** | The date and time when the file key was issued. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileKeys.new(
  user_id: 9924256B-447C-4F19-9dbd-8ad8c39e8ff5,
  public_key_id: 9924256B-447C-4F19-9dbd-8ad8c39e8ff5,
  private_key_enc: U2FsdGVkX1+Lm3s...,
  tenant_id: 1,
  file_id: 9846,
  create_on: 2025-01-01T00:00:00
)
```
