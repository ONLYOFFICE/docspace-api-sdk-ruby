# DocspaceApiSdk::AiAiSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vectorization_enabled** | **Boolean** | Indicates whether document vectorization is enabled. | [optional] |
| **vectorization_need_reset** | **Boolean** | Indicates whether the embedding provider API key needs to be reconfigured. | [optional] |
| **ai_ready** | **Boolean** | Indicates whether the AI subsystem is fully configured and operational. | [optional] |
| **embedding_model** | **String** | The name of the embedding model used for document vectorization. |  |
| **system_ai_enabled** | **Boolean** | Indicates whether the system-level AI provider is enabled. | [optional] |
| **recommended_model_for_forms** | **String** | The identifier of the model recommended for form generation. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAiSettingsDto.new(
  vectorization_enabled: true,
  vectorization_need_reset: false,
  ai_ready: true,
  embedding_model: text-embedding-3-small,
  system_ai_enabled: true,
  recommended_model_for_forms: gpt-5.4
)
```
