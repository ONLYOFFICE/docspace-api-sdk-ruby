# DocspaceApiSdk::TransactionInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Time** | The date and time when the credit transaction occurred. | [optional] |
| **currency** | **String** | The three-character ISO 4217 currency symbol of the transaction. | [optional] |
| **amount** | **Float** | Amount of the transaction. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TransactionInfo.new(
  date: 2024-01-15T10:30Z,
  currency: USD,
  amount: 1500.75
)
```
