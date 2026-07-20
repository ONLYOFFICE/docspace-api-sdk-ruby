# DocspaceApiSdk::ModelSettingsItemDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_id** | **String** | The model identifier. |  |
| **is_enabled** | **Boolean** | Whether the model is enabled for use in chat. | [optional] |
| **_alias** | **String** | The display name for the model. Only applies to non-recommended models. | [optional] |
| **capabilities** | [**AiModelCapabilities**](AiModelCapabilities.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ModelSettingsItemDto.new(
  model_id: claude-opus-4-1-20250805,
  is_enabled: true,
  _alias: Claude Opus 4.1,
  capabilities: null
)
```
