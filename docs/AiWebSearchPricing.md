# DocspaceApiSdk::AiWebSearchPricing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The identifier of the web search provider. | [optional] |
| **provider** | **String** | The provider that serves the web search requests. | [optional] |
| **price** | **Float** | The price of a single web search request. | [optional] |
| **link** | **String** | The link to the pricing page of the provider. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiWebSearchPricing.new(
  id: brave,
  provider: brave,
  price: 0.005,
  link: https://brave.com/search/api
)
```
