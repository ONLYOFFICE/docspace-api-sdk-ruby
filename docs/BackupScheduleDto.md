# DocspaceApiSdk::BackupScheduleDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_type** | [**BackupStorageType**](BackupStorageType.md) | The storage the scheduled archives are written to. It defaults to `Documents`, and it decides which  keys `storageParams` has to carry. | [optional] |
| **storage_params** | [**Array&lt;ItemKeyValuePairObjectObject&gt;**](ItemKeyValuePairObjectObject.md) | The settings of the chosen storage, as an array of key and value pairs. `Documents` and  `ThridpartyDocuments` need `folderId`, `Local` needs `filePath`, `ThirdPartyConsumer` needs `module`  plus the settings of that consumer, and `DataStore` needs none. | [optional] |
| **backups_stored** | **Integer** | The number of scheduled copies to keep, from 1 to 30. It defaults to 1, and only the copies this  schedule creates are counted and removed - archives started by hand are left alone. | [optional] |
| **cron_params** | [**Cron**](Cron.md) | When the backup runs. It is required: a request without it fails rather than falling back to a  default. | [optional] |
| **dump** | **Boolean** | Schedules a backup of the whole server rather than of this one portal. It requires the space access  permission and works on a standalone installation only. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BackupScheduleDto.new(
  storage_type: null,
  storage_params: [{key=folderId, value=1234}],
  backups_stored: 5,
  cron_params: null,
  dump: false
)
```
