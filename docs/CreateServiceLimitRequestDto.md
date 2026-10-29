# DocspaceApiSdk::CreateServiceLimitRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope** | [**ServiceLimitScope**](ServiceLimitScope.md) | Whom the limit applies to. | [optional] |
| **user_id** | **String** | The ID of the portal user a personal limit is set for, as returned in `id` by the people operations. | [optional] |
| **amount_value** | **Float** | The most money the AI services may cost per period, in their currency, which cannot be chosen. Zero blocks the  AI services completely. | [optional] |
| **quantity_value** | **Integer** | The largest quantity the AI services may consume per period, in their common unit. Zero blocks the AI services  completely. | [optional] |
| **period** | [**ServiceLimitPeriod**](ServiceLimitPeriod.md) | The window the thresholds apply to, in UTC. A day, week or month is calendar-aligned rather than rolling - a  daily limit resets at midnight UTC, a weekly one on Monday - while a lifetime limit counts from its creation and  never resets. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CreateServiceLimitRequestDto.new(
  scope: null,
  user_id: 3f2504e0-4f89-11d3-9a0c-0305e82c3301,
  amount_value: 50,
  quantity_value: 1000,
  period: null
)
```
