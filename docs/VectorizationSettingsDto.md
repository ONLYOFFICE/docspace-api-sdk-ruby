# DocspaceApiSdk::VectorizationSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**EmbeddingProviderType**](EmbeddingProviderType.md) |  | [optional] |
| **need_reset** | **Boolean** | Indicates whether the embedding provider API key needs to be reconfigured. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::VectorizationSettingsDto.new(
  type: null,
  need_reset: false
)
```
