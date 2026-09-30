# DocspaceApiSdk::ServicePriceInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The price unique identifier. | [optional] |
| **account_number** | **Integer** | The account number. | [optional] |
| **service_id** | **Integer** | The service ID. | [optional] |
| **time_unit** | [**PriceTimeUnit**](PriceTimeUnit.md) | The time unit the price is bound to. | [optional] |
| **cost_price** | **Float** | The cost price. | [optional] |
| **extra_charge** | **Float** | The extra charge added to the cost price. | [optional] |
| **service_price** | **Float** | The resulting service price. | [optional] |
| **quota** | **Float** | The quota the price is set for. | [optional] |
| **time_bound** | [**TimeBound**](TimeBound.md) | The period the price is effective in. | [optional] |
| **status** | [**PriceStatus**](PriceStatus.md) | The price status. | [optional] |
| **created** | **Time** | The date and time when the price was created. | [optional] |
| **discount_category_id** | **Integer** | The discount category ID. | [optional] |
| **discount_category** | [**DiscountCategory**](DiscountCategory.md) | The discount category. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ServicePriceInfo.new(
  id: 12345,
  account_number: 1010,
  service_id: 12345,
  time_unit: null,
  cost_price: 1500.75,
  extra_charge: 1500.75,
  service_price: 1500.75,
  quota: 100,
  time_bound: null,
  status: null,
  created: 2024-01-15T10:30:00Z,
  discount_category_id: 12345,
  discount_category: null
)
```
