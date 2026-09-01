# DocspaceApiSdk::CurrencyInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The ISO 4217 code of the currency the prices are quoted in. |  |
| **symbol** | **String** | The display symbol of the currency. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CurrencyInfo.new(
  code: USD,
  symbol: $
)
```
