# DocspaceApiSdk::ModelSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The model identifier. |  |
| **_alias** | **String** | The display name for the model. | [optional] |
| **is_enabled** | **Boolean** | Whether the model is enabled for use in chat. | [optional] |
| **is_recommended** | **Boolean** | Whether the model is recommended (defined in configuration). | [optional] |
| **capabilities** | [**AiModelCapabilities**](AiModelCapabilities.md) |  |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ModelSettingsDto.new(
  id: claude-sonnet-4-20250514,
  _alias: Claude Sonnet 4,
  is_enabled: true,
  is_recommended: true,
  capabilities: null
)
```
