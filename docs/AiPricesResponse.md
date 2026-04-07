# DocspaceApiSdk::AiPricesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chat** | [**Array&lt;AiChatModelPricing&gt;**](AiChatModelPricing.md) |  |  |
| **embedding** | [**Array&lt;AiEmbeddingModelPricing&gt;**](AiEmbeddingModelPricing.md) |  |  |
| **web_search** | [**AiWebSearchPricing**](AiWebSearchPricing.md) |  |  |
| **currency** | [**CurrencyInfo**](CurrencyInfo.md) |  |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiPricesResponse.new(
  chat: null,
  embedding: null,
  web_search: null,
  currency: null
)
```
