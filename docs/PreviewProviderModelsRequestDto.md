# DocspaceApiSdk::PreviewProviderModelsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**ProviderType**](ProviderType.md) |  | [optional] |
| **url** | **String** | The API endpoint URL. Required for OpenAiCompatible type; optional for other types that have default URLs. | [optional] |
| **key** | **String** | The authentication API key for the AI provider. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::PreviewProviderModelsRequestDto.new(
  type: null,
  url: https://api.openai.com/v1,
  key: sk-example-key-123
)
```
