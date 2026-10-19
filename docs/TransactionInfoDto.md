# DocspaceApiSdk::TransactionInfoDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Time** | The date and time when the credit transaction occurred. | [optional] |
| **currency** | **String** | The three-character ISO 4217 currency symbol. | [optional] |
| **amount** | **Float** | The amount in the specified currency. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TransactionInfoDto.new(
  date: 2024-01-15T10:30:00Z,
  currency: "USD",
  amount: 1500.75
)
```
