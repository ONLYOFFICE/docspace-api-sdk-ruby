# DocspaceApiSdk::WalletQuantityRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity** | **Hash&lt;String, Integer&gt;** | The mapping of item identifiers to their respective quantities in the payment. | [optional] |
| **product_quantity_type** | [**ProductQuantityType**](ProductQuantityType.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WalletQuantityRequestDto.new(
  quantity: null,
  product_quantity_type: null
)
```
