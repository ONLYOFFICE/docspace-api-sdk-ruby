# DocspaceApiSdk::Cron

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period** | [**BackupPeriod**](BackupPeriod.md) | How often the backup runs: `EveryDay`, `EveryWeek` or `EveryMonth`. It defaults to `EveryDay`. | [optional] |
| **hour** | **Integer** | The hour of the day the backup starts at, from 0 to 23. Minutes cannot be chosen - it always starts  on the hour. | [optional] |
| **day** | **Integer** | The day the backup runs on: the day of the week from 1 to 7, Sunday being 1, for `EveryWeek`, and the  day of the month from 1 to 31 for `EveryMonth`. Leave it out for `EveryDay` only - an omitted value is  stored as 0, which neither of the other two periods accepts, so a weekly or monthly schedule sent  without it fails. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::Cron.new(
  period: null,
  hour: 2,
  day: 1
)
```
