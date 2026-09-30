# DocspaceApiSdk::AiPricesDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chat** | [**Array&lt;AiEntryPricingDtoAiChatPriceDto&gt;**](AiEntryPricingDtoAiChatPriceDto.md) | The chat models on offer, each priced per million prompt and completion tokens. A model listed here is one  the installation can bill for, not necessarily one this portal may use -  `GET api/2.0/portal/payment/ai-model/restrictions` says which are allowed. |  |
| **embedding** | [**Array&lt;AiEntryPricingDtoAiEmbeddingPriceDto&gt;**](AiEntryPricingDtoAiEmbeddingPriceDto.md) | The embedding models on offer, priced per million tokens of input; an embedding model has no completion  side, so its price object carries `prompt` alone. |  |
| **image** | [**Array&lt;AiEntryPricingDtoAiImagePriceDto&gt;**](AiEntryPricingDtoAiImagePriceDto.md) | The image models on offer, priced per million prompt and completion tokens plus a price for each image  produced. |  |
| **web_search** | [**Array&lt;AiEntryPricingDtoDecimal&gt;**](AiEntryPricingDtoDecimal.md) | The web search providers on offer. Their `price` is a bare number - the cost of one search - rather than  an object, because there are no tokens to distinguish. |  |
| **currency** | [**CurrencyInfo**](CurrencyInfo.md) | The currency every price above is expressed in, with its ISO code and symbol. One answer never mixes  currencies, so this is the only place to read it. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiPricesDto.new(
  chat: [{id=gpt-4o, alias=GPT-4o, provider=openai, image=https://cdn.example.com/providers/openai.png, price={prompt=5.0, completion=15.0}}],
  embedding: [{id=text-embedding-3-large, alias=Text Embedding 3 Large, provider=openai, image=https://cdn.example.com/providers/openai.png, price={prompt=0.13}}],
  image: [{id=gpt-5.4-image-2, alias=GPT 5.4 Image 2, provider=OpenRouter, image=https://cdn.example.com/providers/openai.png, price={prompt=8.0, completion=15.0, image=30.0}}],
  web_search: [{id=web-search, alias=Web Search, provider=tavily, image=https://cdn.example.com/providers/tavily.png, price=0.01}],
  currency: null
)
```
