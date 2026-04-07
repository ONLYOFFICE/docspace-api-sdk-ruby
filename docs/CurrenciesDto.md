# DocspaceApiSdk::CurrenciesDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iso_country_code** | **String** | The ISO country code. | [optional] |
| **iso_currency_symbol** | **String** | The ISO currency symbol. | [optional] |
| **currency_native_name** | **String** | The currency native name. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CurrenciesDto.new(
  iso_country_code: US,
  iso_currency_symbol: USD,
  currency_native_name: Example Name
)
```
