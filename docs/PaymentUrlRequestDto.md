# DocspaceApiSdk::PaymentUrlRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **back_url** | **String** | The URL where the user will be redirected after payment cancellation. |  |
| **success_url** | **String** | The URL where the user will be redirected after successful payment. |  |
| **quantity** | **Hash&lt;String, Integer&gt;** | The payment quantity. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PaymentUrlRequestDto.new(
  back_url: https://example.com/payment/back,
  success_url: https://example.com/payment/success,
  quantity: {admin=1}
)
```
