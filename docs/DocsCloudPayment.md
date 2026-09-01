# DocspaceApiSdk::DocsCloudPayment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cart_id** | **String** | The cart ID. | [optional] |
| **product_id** | **Integer** | The product ID. | [optional] |
| **status** | **Integer** | The payment status. | [optional] |
| **interval_unit** | **Integer** | The interval unit. | [optional] |
| **is_year** | **Boolean** | Whether the payment interval is yearly. | [optional] |
| **is_prepaid** | **Boolean** | Whether the payment is prepaid. | [optional] |
| **quantity** | **Integer** | The quantity. | [optional] |
| **currency** | **String** | The three-character ISO 4217 currency symbol of the payment. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudPayment.new(
  cart_id: CartId,
  product_id: 12345,
  status: 1,
  interval_unit: 1,
  is_year: false,
  is_prepaid: false,
  quantity: 10,
  currency: USD
)
```
