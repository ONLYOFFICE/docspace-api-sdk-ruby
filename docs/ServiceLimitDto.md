# DocspaceApiSdk::ServiceLimitDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The service limit ID, used to read, change, switch off or delete the limit. In the list of the users the same  ID repeats for every user the limit for every user applies to. | [optional] |
| **service_group_name** | **String** | The limited service group; the AI services are `ai-services`. | [optional] |
| **customer_account_number** | **Integer** | The number of the billing account of the portal the limit belongs to. | [optional] |
| **scope** | [**ServiceLimitScope**](ServiceLimitScope.md) | Whom the limit applies to. | [optional] |
| **user_id** | **String** | The ID of the portal user the limit applies to: the user of a personal limit, or, in the list of the users, the  user a limit for every user applies to. Null for a limit of the portal as a whole, and for a limit for every  user read on its own. | [optional] |
| **amount_value** | **Float** | The most money the AI services may cost per period, in `currency`; null when the limit has no money threshold. | [optional] |
| **currency** | **String** | The currency `amountValue` is expressed in; null when the limit has no money threshold. | [optional] |
| **quantity_value** | **Integer** | The largest quantity the AI services may consume per period, in `serviceUnit`; null when the limit has no  quantity threshold. | [optional] |
| **service_unit** | **String** | The unit `quantityValue` is expressed in; null when the limit has no quantity threshold. | [optional] |
| **period** | [**ServiceLimitPeriod**](ServiceLimitPeriod.md) | The window the thresholds apply to. A day, week or month resets at the start of the next one in UTC (a week on  Monday), not a fixed time after the first charge; a lifetime limit never resets. | [optional] |
| **period_end** | **Time** | The last moment of the current period, in UTC, after which the spending starts over from zero; null for a  lifetime limit, which never resets. Filled for every limit, the limit for every user included, whose spending is  counted per user. | [optional] |
| **usage_from** | **Time** | The moment a lifetime limit counts from, in UTC; null for the other periods. | [optional] |
| **enabled** | **Boolean** | Whether the limit is in force. A switched-off limit no longer restricts the AI services and can be switched  back on. | [optional] |
| **created** | **Time** | The date and time when the limit was created, in UTC. | [optional] |
| **modified** | **Time** | The date and time when the limit was last changed, in UTC. | [optional] |
| **usage** | [**ServiceLimitUsageDto**](ServiceLimitUsageDto.md) | What was spent against the limit in its current period and what is left. Filled for the limit of the portal as  a whole and in the list of the users; null where the spending is not read, such as for a limit read by its ID  or the limit for every user, whose spending is counted per user. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ServiceLimitDto.new(
  id: 42,
  service_group_name: ai-services,
  customer_account_number: 12345,
  scope: null,
  user_id: 3f2504e0-4f89-11d3-9a0c-0305e82c3301,
  amount_value: 50,
  currency: USD,
  quantity_value: 1000,
  service_unit: request,
  period: null,
  period_end: 2026-10-22T23:59:59.9999999Z,
  usage_from: 2026-10-01T09:12:00Z,
  enabled: true,
  created: 2026-09-01T10:30:00Z,
  modified: 2026-09-15T08:00:00Z,
  usage: null
)
```
