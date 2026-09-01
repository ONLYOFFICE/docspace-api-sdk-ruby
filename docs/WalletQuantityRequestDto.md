# DocspaceApiSdk::WalletQuantityRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity** | **Hash&lt;String, Integer&gt;** | The mapping of item identifiers to their respective quantities in the payment. |  |
| **product_quantity_type** | [**ProductQuantityType**](ProductQuantityType.md) | The type of action performed on a product's quantity. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WalletQuantityRequestDto.new(
  quantity: {admin=1},
  product_quantity_type: null
)
```
