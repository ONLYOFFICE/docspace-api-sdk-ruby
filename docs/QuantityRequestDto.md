# DocspaceApiSdk::QuantityRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity** | **Hash&lt;String, Integer&gt;** | The mapping of item identifiers to their respective quantities in the payment. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::QuantityRequestDto.new(
  quantity: {admin=1}
)
```
