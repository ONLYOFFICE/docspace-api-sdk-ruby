# DocspaceApiSdk::FileEncryptionInfoDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_keys** | [**Array&lt;EncryptionKeyDto&gt;**](EncryptionKeyDto.md) | The key pairs of the users who have access to the file. | [optional] |
| **file_keys** | [**Array&lt;FileKeys&gt;**](FileKeys.md) | The file keys issued to those users. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileEncryptionInfoDto.new(
  user_keys: null,
  file_keys: null
)
```
