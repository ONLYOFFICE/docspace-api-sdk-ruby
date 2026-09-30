# DocspaceApiSdk::StorageEncryptionRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notify_users** | **Boolean** | Whether every user of every portal on the server is mailed before the encryption or decryption pass starts.  The pass runs either way; the flag only decides whether people are told that their portal is about to become  unavailable. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::StorageEncryptionRequestsDto.new(
  notify_users: true
)
```
