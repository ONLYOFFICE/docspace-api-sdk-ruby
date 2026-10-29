# DocspaceApiSdk::ServiceLimitUsageDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period_start** | **Time** | The start of the current period, in UTC. | [optional] |
| **period_end** | **Time** | The end of the current period, in UTC: the moment the spending starts again from zero. Null for a lifetime  limit, which never resets. | [optional] |
| **amount_consumed** | **Float** | The money charged in the current period, in the currency of the limit. | [optional] |
| **amount_available** | **Float** | The money still available in the current period: the threshold less what was charged and what is reserved for  operations in progress, never below zero. Null when the limit has no money threshold. | [optional] |
| **quantity_consumed** | **Integer** | The quantity consumed in the current period, in the unit of the limit. | [optional] |
| **quantity_available** | **Integer** | The quantity still available in the current period, never below zero; null when the limit has no quantity  threshold. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ServiceLimitUsageDto.new(
  period_start: 2026-10-18T00:00:00Z,
  period_end: 2026-10-18T23:59:59Z,
  amount_consumed: 12.5,
  amount_available: 27.5,
  quantity_consumed: 250,
  quantity_available: 750
)
```
