# DocspaceApiSdk::PriceDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Float** | The price value. | [optional] |
| **currency_symbol** | **String** | The currency symbol. | [optional] |
| **iso_currency_symbol** | **String** | The three-character ISO 4217 currency symbol. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PriceDto.new(
  value: 99.99,
  currency_symbol: $,
  iso_currency_symbol: USD
)
```
