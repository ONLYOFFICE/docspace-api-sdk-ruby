# DocspaceApiSdk::UpdateProviderBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The new display title for the AI provider. If null, the title is not changed. | [optional] |
| **url** | **String** | The new API endpoint URL for the AI provider. If null, the URL is not changed. | [optional] |
| **key** | **String** | The new authentication API key for the AI provider. If null, the key is not changed. | [optional] |
| **model_settings** | [**Array&lt;ModelSettingsItemDto&gt;**](ModelSettingsItemDto.md) | Optional list of model settings changes to apply atomically with the provider update. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateProviderBody.new(
  title: Updated Provider,
  url: https://api.openai.com/v1,
  key: sk-example-key-123,
  model_settings: null
)
```
