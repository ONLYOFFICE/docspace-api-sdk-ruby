# DocspaceApiSdk::AiPricesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chat** | [**Array&lt;AiChatModelPricing&gt;**](AiChatModelPricing.md) | The pricing of every available chat model. |  |
| **embedding** | [**Array&lt;AiEmbeddingModelPricing&gt;**](AiEmbeddingModelPricing.md) | The pricing of every available embedding model. |  |
| **image** | [**Array&lt;AiImageModelPricing&gt;**](AiImageModelPricing.md) | The pricing of every available image model. |  |
| **search** | [**Array&lt;AiWebSearchPricing&gt;**](AiWebSearchPricing.md) | The pricing of every available web search provider. |  |
| **currency** | [**CurrencyInfo**](CurrencyInfo.md) | The currency the AI prices are quoted in. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiPricesResponse.new(
  chat: null,
  embedding: null,
  image: null,
  search: null,
  currency: null
)
```
