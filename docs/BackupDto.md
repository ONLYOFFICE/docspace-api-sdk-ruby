# DocspaceApiSdk::BackupDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_type** | [**BackupStorageType**](BackupStorageType.md) |  | [optional] |
| **storage_params** | [**Array&lt;ItemKeyValuePairObjectObject&gt;**](ItemKeyValuePairObjectObject.md) | The backup storage parameters. | [optional] |
| **dump** | **Boolean** | Specifies if a dump will be created or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BackupDto.new(
  storage_type: null,
  storage_params: [{"key":"path","value":"/backup"}],
  dump: false
)
```
