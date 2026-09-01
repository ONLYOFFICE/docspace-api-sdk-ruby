# DocspaceApiSdk::BackupHistoryRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The backup ID. |  |
| **file_name** | **String** | The backup file name. |  |
| **storage_type** | [**BackupStorageType**](BackupStorageType.md) | The backup storage type. |  |
| **created_on** | **Time** | The backup creation date. |  |
| **expires_on** | **Time** | The backup expiration date. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BackupHistoryRecord.new(
  id: 00000000-0000-0000-0000-000000000000,
  file_name: tenant-backup,
  storage_type: null,
  created_on: 2026-03-01T02:15:00Z,
  expires_on: 2026-03-31T02:15:00Z
)
```
