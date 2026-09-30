# DocspaceApiSdk::BackupRestoreDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_id** | **String** | The ID of the backup to restore from, as listed by `GET api/2.0/backup/getbackuphistory`. Send  anything that is not a GUID to restore from a file given by `storageParams` instead; an all-zero GUID  selects neither, because it parses as a GUID and then matches no record. |  |
| **storage_type** | [**BackupStorageType**](BackupStorageType.md) | The storage the archive is read from. It defaults to `Documents` and is only used when `backupId` is  not a GUID, because a known backup carries the storage of its own record. | [optional] |
| **storage_params** | [**Array&lt;ItemKeyValuePairObjectObject&gt;**](ItemKeyValuePairObjectObject.md) | The location of the archive, as an array of key and value pairs. The key read here is `filePath` -  not the `folderId` a backup is started with - and it holds a file ID for `Documents`, a  provider-specific file ID for `ThridpartyDocuments` and a path on the server for `Local`. It is only  used when `backupId` is not a GUID. | [optional] |
| **notify** | **Boolean** | Chooses who is emailed when the restoring starts and when it finishes: every active user of the  portal when true, and its owner alone when false. Mail goes only to accounts that have been  activated, so this decides the audience rather than whether anybody is notified at all. | [optional] |
| **dump** | **Boolean** | Restores the whole server rather than this one portal. It requires the space access permission. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BackupRestoreDto.new(
  backup_id: 11111111-1111-1111-1111-111111111111,
  storage_type: null,
  storage_params: [{key=filePath, value=1234}],
  notify: true,
  dump: false
)
```
