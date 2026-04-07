# DocspaceApiSdk::PaymentUrlRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **back_url** | **String** | The URL where the user will be redirected after payment processing. | [optional] |
| **quantity** | **Hash&lt;String, Integer&gt;** | The payment quantity. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PaymentUrlRequestDto.new(
  back_url: https://example.com,
  quantity: null
)
```
