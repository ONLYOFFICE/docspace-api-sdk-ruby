# DocspaceApiSdk::CreditAiBalanceRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | The amount to transfer from the main balance to the AI subaccount. | [optional] |
| **currency** | **String** | The three-character ISO 4217 currency symbol. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CreditAiBalanceRequestDto.new(
  amount: 100.0,
  currency: USD
)
```
