# DocspaceApiSdk::ChatSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **Integer** | The AI provider ID. | [optional] |
| **model_id** | **String** | The AI model ID used for chat completions. | [optional] |
| **model_alias** | **String** | The AI model display alias. | [optional] |
| **prompt** | **String** | The system prompt for the chat. | [optional] |
| **multimodal** | [**ChatMultimodalSettingsDto**](ChatMultimodalSettingsDto.md) |  | [optional] |
| **thinking** | **Boolean** | Indicates whether the model supports extended thinking mode. | [optional] |
| **capabilities** | [**AiModelCapabilities**](AiModelCapabilities.md) |  | [optional] |
| **internal** | **Boolean** | Indicates whether this is an internal AI gateway provider. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ChatSettingsDto.new(
  provider_id: 1,
  model_id: gpt-5.2,
  model_alias: GPT-5.2,
  prompt: You are a helpful assistant.,
  multimodal: null,
  thinking: false,
  capabilities: null,
  internal: false
)
```
