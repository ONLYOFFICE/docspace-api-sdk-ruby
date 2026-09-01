# DocspaceApiSdk::UpcomingPaymentDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The quota ID. | [optional] |
| **name** | **String** | The quota name. | [optional] |
| **title** | **String** | The quota title. | [optional] |
| **unit_of_measure** | **String** | The quota unit of measure. | [optional] |
| **quantity** | **Integer** | The quantity that will be charged (the next quantity if set, otherwise the current quantity). | [optional] |
| **wallet** | **Boolean** | The quota applies to the wallet or not. | [optional] |
| **due_date** | **Time** | The due date of the upcoming payment in the portal time zone. | [optional] |
| **amount** | **Float** | The amount that will be charged (unit price multiplied by the quantity). | [optional] |
| **currency** | **String** | The three-character ISO 4217 currency symbol of the amount. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpcomingPaymentDto.new(
  id: -11,
  name: storage,
  title: Business plan,
  unit_of_measure: admins,
  quantity: 100,
  wallet: true,
  due_date: 2026-07-08T11:39:43.0000000+03:00,
  amount: 14,
  currency: USD
)
```
