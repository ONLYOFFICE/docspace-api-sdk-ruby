# DocspaceApiSdk::CreateProviderRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**ProviderType**](ProviderType.md) |  | [optional] |
| **title** | **String** | The display title for the AI provider. |  |
| **url** | **String** | The API endpoint URL for the AI provider. Required for OpenAiCompatible type; optional for other types that have default URLs. | [optional] |
| **key** | **String** | The authentication API key for the AI provider. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CreateProviderRequestDto.new(
  type: null,
  title: OpenAI Provider,
  url: https://api.openai.com/v1,
  key: sk-example-key-123
)
```
