# DocspaceApiSdk::Cron

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period** | [**BackupPeriod**](BackupPeriod.md) | The backup period type. | [optional] |
| **hour** | **Integer** | The time of the day to start the backup process. | [optional] |
| **day** | **Integer** | The day of the week to start the backup process. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::Cron.new(
  period: null,
  hour: 0,
  day: 0
)
```
