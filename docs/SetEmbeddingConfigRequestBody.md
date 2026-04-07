# DocspaceApiSdk::SetEmbeddingConfigRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**EmbeddingProviderType**](EmbeddingProviderType.md) |  | [optional] |
| **key** | **String** | The API key for the selected embedding provider. Pass null to keep the existing key unchanged. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetEmbeddingConfigRequestBody.new(
  type: null,
  key: sk-example-key-123
)
```
