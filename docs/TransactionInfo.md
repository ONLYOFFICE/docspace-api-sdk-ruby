# DocspaceApiSdk::TransactionInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | The three-character ISO 4217 currency symbol. | [optional] |
| **amount** | **Float** | The amount in the specified currency. | [optional] |
| **date** | **Time** | The date and time when the credit transaction occurred. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TransactionInfo.new(
  currency: "USD",
  amount: 1500.75,
  date: 2024-01-15T10:30:00Z
)
```
