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
  type: null,
  name: null,
  key: null,
  base_url: null
)
```
