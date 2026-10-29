# DocspaceApiSdk::SetParticipantServiceLimitsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_ids** | **Array&lt;String&gt;** | The IDs of the portal users the limit is set for, as returned in `id` by the people operations. |  |
| **amount_value** | **Float** | The most money the AI services may cost each user per period, in their currency, which cannot be chosen. Zero  blocks the AI services completely. | [optional] |
| **quantity_value** | **Integer** | The largest quantity the AI services may consume per period for each user, in their common unit. Zero blocks the  AI services completely. | [optional] |
| **period** | [**ServiceLimitPeriod**](ServiceLimitPeriod.md) | The window the thresholds apply to, in UTC. A day, week or month is calendar-aligned rather than rolling - a  daily limit resets at midnight UTC, a weekly one on Monday - while a lifetime limit counts from its creation and  never resets. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetParticipantServiceLimitsRequestDto.new(
  user_ids: [3f2504e0-4f89-11d3-9a0c-0305e82c3301, 7c9e6679-7425-40de-944b-e07fc1f90ae7],
  amount_value: 40,
  quantity_value: 1000,
  period: null
)
```
