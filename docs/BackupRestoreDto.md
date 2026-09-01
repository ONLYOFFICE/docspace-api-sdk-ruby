# DocspaceApiSdk::BackupRestoreDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_id** | **String** | The backup ID. |  |
| **storage_type** | [**BackupStorageType**](BackupStorageType.md) | The backup storage type. | [optional] |
| **storage_params** | [**Array&lt;ItemKeyValuePairObjectObject&gt;**](ItemKeyValuePairObjectObject.md) | The backup storage parameters. | [optional] |
| **notify** | **Boolean** | Notifies users about the portal restoring process or not. | [optional] |
| **dump** | **Boolean** | Specifies if a dump will be created or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BackupRestoreDto.new(
  backup_id: 00000000-0000-0000-0000-000000000000,
  storage_type: null,
  storage_params: [{key=path, value=/backup}],
  notify: true,
  dump: false
)
```
