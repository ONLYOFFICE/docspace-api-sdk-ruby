# DocspaceApiSdk::ServicePayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation_id** | **Integer** | The payment operation ID. | [optional] |
| **amount** | **Float** | The balance of the sub-account in the specified currency. | [optional] |
| **currency** | **String** | The three-character ISO 4217 currency symbol. | [optional] |
| **quantity** | **Integer** | Total quantity of operations. | [optional] |
| **subscription_id** | **Integer** | The subscription ID | [optional] |
| **start_date** | **Time** | The subscription start date. | [optional] |
| **end_date** | **Time** | The subscription end date. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ServicePayment.new(
  operation_id: 12345,
  amount: 1500.75,
  currency: USD,
  quantity: 10,
  subscription_id: 12345,
  start_date: 2024-01-15T10:30Z,
  end_date: 2024-01-15T10:30Z
)
```
