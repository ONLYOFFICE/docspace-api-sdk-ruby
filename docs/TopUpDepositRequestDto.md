# DocspaceApiSdk::TopUpDepositRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount of money for the operation. | [optional] |
| **currency** | **String** | The three-character ISO 4217 currency symbol. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TopUpDepositRequestDto.new(
  amount: 1,
  currency: USD
)
```
