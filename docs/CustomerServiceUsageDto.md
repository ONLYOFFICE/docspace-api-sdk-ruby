# DocspaceApiSdk::CustomerServiceUsageDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **String** | The name of the service. | [optional] |
| **title** | **String** | The title of the service. | [optional] |
| **service_unit** | **String** | The unit of measurement for the service. | [optional] |
| **currency** | **String** | The three-character ISO 4217 currency symbol of the amounts. | [optional] |
| **total_quantity** | **Integer** | The total number of units consumed. | [optional] |
| **total_amount** | **Float** | The total amount charged for the service. | [optional] |
| **operation_count** | **Integer** | The number of individual purchase operations. | [optional] |
| **price** | **Float** | The price of the service. | [optional] |
| **subscription** | **Boolean** | Indicates whether the service is subscription-based. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomerServiceUsageDto.new(
  service: disk-storage,
  title: Additional disk storage,
  service_unit: GB,
  currency: USD,
  total_quantity: 100,
  total_amount: 14,
  operation_count: 1,
  price: 0.14,
  subscription: true
)
```
