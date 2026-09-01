# DocspaceApiSdk::ScheduleDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_type** | [**BackupStorageType**](BackupStorageType.md) | The backup storage type. |  |
| **storage_params** | **Hash&lt;String, String&gt;** | The backup storage parameters. |  |
| **cron_params** | [**CronParams**](CronParams.md) | The backup cron parameters. |  |
| **backups_stored** | **Integer** | The maximum number of the stored backup copies. | [optional] |
| **last_backup_time** | **Time** | The date and time when the last backup was reated. |  |
| **dump** | **Boolean** | Specifies if a dump will be created or not. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ScheduleDto.new(
  storage_type: null,
  storage_params: {},
  cron_params: null,
  backups_stored: 5,
  last_backup_time: 2026-01-01T00:00:00Z,
  dump: false
)
```
