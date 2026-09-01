# DocspaceApiSdk::CustomerMonthlyUsageDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **year** | **Integer** | The calendar year. | [optional] |
| **month** | **Integer** | The calendar month (1-12). | [optional] |
| **currency** | **String** | The three-character ISO 4217 currency symbol of the amounts. | [optional] |
| **total_amount** | **Float** | The total amount charged across all services in this month. | [optional] |
| **operation_count** | **Integer** | The number of individual purchase operations in this month. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomerMonthlyUsageDto.new(
  year: 2025,
  month: 1,
  currency: USD,
  total_amount: 199.98,
  operation_count: 3
)
```
