# DocspaceApiSdk::BackupScheduleDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_type** | [**BackupStorageType**](BackupStorageType.md) |  | [optional] |
| **storage_params** | [**Array&lt;ItemKeyValuePairObjectObject&gt;**](ItemKeyValuePairObjectObject.md) | The backup storage parameters. | [optional] |
| **backups_stored** | **Integer** | The maximum number of the stored backup copies. | [optional] |
| **cron_params** | [**Cron**](Cron.md) |  | [optional] |
| **dump** | **Boolean** | Specifies if a dump will be created or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BackupScheduleDto.new(
  storage_type: null,
  storage_params: [{"key":"path","value":"/backup"}],
  backups_stored: 5,
  cron_params: null,
  dump: false
)
```
