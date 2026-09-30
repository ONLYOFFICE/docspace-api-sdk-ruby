# DocspaceApiSdk::BackupHistoryRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the backup, which is the same value as the `taskId` the backup was started with. Pass it to  `DELETE api/2.0/backup/deletebackup/{id}` or as the `backupId` of  `POST api/2.0/backup/startrestore`. |  |
| **file_name** | **String** | The name of the stored archive. It is built from the portal alias and the moment the backup started,  or from `workspace` instead of the alias for a backup of the whole server. |  |
| **storage_type** | [**BackupStorageType**](BackupStorageType.md) | The storage the archive was written to, reported as a number rather than as a name. |  |
| **created_on** | **Time** | The date and time the backup was stored at, in UTC. |  |
| **expires_on** | **Time** | The date and time a background cleaner removes this backup at. Only a backup written to `DataStore`  expires, one day after it was stored; for every other storage type this is `0001-01-01T00:00:00`,  which means the backup is kept until it is deleted by hand or pushed out by the stored-copies limit  of a schedule. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BackupHistoryRecord.new(
  id: 11111111-1111-1111-1111-111111111111,
  file_name: myportal_2026-03-01_02-15-00.tar.gz,
  storage_type: null,
  created_on: 2026-03-01T02:15:00Z,
  expires_on: 0001-01-01T00:00:00Z
)
```
