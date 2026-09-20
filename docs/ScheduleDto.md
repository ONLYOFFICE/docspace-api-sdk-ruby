# DocspaceApiSdk::ScheduleDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_type** | [**BackupStorageType**](BackupStorageType.md) | The storage the scheduled archives are written to, reported as a number rather than as the name the  schedule was created with. |  |
| **storage_params** | **Hash&lt;String, String&gt;** | The settings of the storage, as an object keyed by parameter name - not as the array of key and value  pairs the schedule was created with, so it cannot be sent back unchanged. For every storage type  except `ThirdPartyConsumer` the `folderId` key is built from the stored base path. |  |
| **cron_params** | [**CronParams**](CronParams.md) | When the backup runs, read back from the stored cron expression. `day` is 0 for a daily schedule,  because a daily one has no day. |  |
| **backups_stored** | **Integer** | The number of scheduled copies kept. It is null, not 0, when the schedule keeps an unlimited number. | [optional] |
| **last_backup_time** | **Time** | The date and time the schedule last ran at. It is `0001-01-01T00:00:00` until the schedule has run  for the first time. |  |
| **dump** | **Boolean** | Specifies whether this schedule backs up the whole server instead of one portal. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ScheduleDto.new(
  storage_type: null,
  storage_params: {folderId=1234},
  cron_params: null,
  backups_stored: 5,
  last_backup_time: 2026-01-01T00:00:00Z,
  dump: false
)
```
