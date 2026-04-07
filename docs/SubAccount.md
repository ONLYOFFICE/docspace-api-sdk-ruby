# DocspaceApiSdk::SubAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | The three-character ISO 4217 currency symbol of the sub-account. | [optional] |
| **amount** | **Float** | The balance of the sub-account in the specified currency. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SubAccount.new(
  currency: USD,
  amount: 1500.75
)
```
