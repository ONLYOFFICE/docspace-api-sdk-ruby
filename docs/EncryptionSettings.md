# DocspaceApiSdk::EncryptionSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | The encryption password. | [optional] |
| **status** | [**EncryprtionStatus**](EncryprtionStatus.md) | The encryption status. | [optional] |
| **notify_users** | **Boolean** | Specifies if the users will be notified about the encryption operation or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EncryptionSettings.new(
  password: password,
  status: null,
  notify_users: true
)
```
