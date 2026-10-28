# DocspaceApiSdk::EncryptionSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | Always an empty string: the encryption password is never returned. | [optional] |
| **status** | [**EncryptionStatus**](EncryptionStatus.md) | Whether the storage is encrypted, decrypted, or on its way to either. | [optional] |
| **notify_users** | **Boolean** | Whether the users are notified when the operation starts and ends. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EncryptionSettingsDto.new(
  password: ,
  status: null,
  notify_users: true
)
```
