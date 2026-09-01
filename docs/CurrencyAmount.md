# DocspaceApiSdk::CurrencyAmount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | The three-character ISO 4217 currency symbol. | [optional] |
| **amount** | **Float** | The amount in the specified currency. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CurrencyAmount.new(
  currency: "USD",
  amount: 1500.75
)
```
