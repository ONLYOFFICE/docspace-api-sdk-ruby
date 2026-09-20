# DocspaceApiSdk::AiTProvider

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**AiProviderType**](AiProviderType.md) | Provider type identifier. |  |
| **name** | **String** | User-defined display name for this provider connection. |  |
| **key** | **String** | API key or token. Optional for local providers (Ollama, LM Studio). | [optional] |
| **base_url** | **String** | Base URL of the provider API. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiTProvider.new(
  type: openai,
  name: OpenAI GPT-4o,
  key: sk-your-provider-api-key,
  base_url: https://api.openai.com/v1
)
```
