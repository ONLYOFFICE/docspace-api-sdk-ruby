# DocspaceApiSdk::AiEmbeddingPriceDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prompt** | **Float** | The cost of one million tokens turned into vectors. Embedding produces no completion, so this single  figure is the whole price. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiEmbeddingPriceDto.new(
  prompt: 0.13
)
```
