# DocspaceApiSdk::PaymentCalculation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation_id** | **Integer** | The operation unique identifier. | [optional] |
| **amount** | **Float** | The calculated payment amount. | [optional] |
| **currency** | **String** | The three-character ISO 4217 currency symbol used for the payment calculation. | [optional] |
| **quantity** | **Integer** | The quantity associated with the payment calculation. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PaymentCalculation.new(
  operation_id: 123456789,
  amount: 10.0,
  currency: USD,
  quantity: 1
)
```
