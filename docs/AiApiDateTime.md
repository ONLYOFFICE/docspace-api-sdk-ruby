# DocspaceApiSdk::AiApiDateTime

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **utc_time** | **Time** | The time in UTC format. | [optional][readonly] |
| **time_zone_offset** | **String** | The time zone offset. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiApiDateTime.new(
  utc_time: 2018-01-01T00:00:00.0000000Z,
  time_zone_offset: 00:00:00
)
```
