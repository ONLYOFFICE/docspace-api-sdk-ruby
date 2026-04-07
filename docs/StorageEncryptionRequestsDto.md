# DocspaceApiSdk::StorageEncryptionRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notify_users** | **Boolean** | Specifies whether the users receive notifications about the storage encryption operations. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::StorageEncryptionRequestsDto.new(
  notify_users: true
)
```
