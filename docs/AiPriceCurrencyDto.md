# DocspaceApiSdk::AiPriceCurrencyDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The ISO 4217 code of the currency the prices are quoted in. |  |
| **symbol** | **String** | The display symbol of the currency. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiPriceCurrencyDto.new(
  code: USD,
  symbol: $
)
```
