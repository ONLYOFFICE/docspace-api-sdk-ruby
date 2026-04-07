# DocspaceApiSdk::Tariff

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The tariff ID. | [optional] |
| **state** | [**TariffState**](TariffState.md) |  | [optional] |
| **due_date** | **Time** | The tariff due date. |  |
| **delay_due_date** | **Time** | The tariff delay due date. | [optional] |
| **license_date** | **Time** | The tariff license date. | [optional] |
| **customer_id** | **String** | The tariff customer ID. | [optional] |
| **quotas** | [**Array&lt;Quota&gt;**](Quota.md) | The list of tariff quotas. |  |
| **overdue_quotas** | [**Array&lt;Quota&gt;**](Quota.md) | The list of overdue tariff quotas. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::Tariff.new(
  id: 1,
  state: null,
  due_date: 2026-03-31T00:00Z,
  delay_due_date: 2026-04-07T00:00Z,
  license_date: 2026-03-01T00:00Z,
  customer_id: cus_123,
  quotas: {"quotas":[{"id":1,"quantity":50,"wallet":false}]},
  overdue_quotas: []
)
```
