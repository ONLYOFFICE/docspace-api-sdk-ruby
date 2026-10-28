# DocspaceApiSdk::AiVectorizationSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**AiEmbeddingProviderType**](AiEmbeddingProviderType.md) | The type of embedding provider configured for document vectorization. | [optional] |
| **need_reset** | **Boolean** | Indicates whether the embedding provider API key needs to be reconfigured. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiVectorizationSettingsDto.new(
  type: null,
  need_reset: false
)
```
