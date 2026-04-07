# DocspaceApiSdk::AiProviderDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | AI provider identifier. | [optional] |
| **title** | **String** | AI provider display title. |  |
| **type** | [**ProviderType**](ProviderType.md) |  | [optional] |
| **url** | **String** | API endpoint URL for the AI provider. | [optional] |
| **created_on** | [**ApiDateTime**](ApiDateTime.md) |  |  |
| **modified_on** | [**ApiDateTime**](ApiDateTime.md) |  |  |
| **need_reset** | **Boolean** | Indicates whether the provider's API key needs to be reset. | [optional] |
| **is_default** | **Boolean** | Indicates whether this provider is the default provider for the tenant. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiProviderDto.new(
  id: 1,
  title: OpenAI,
  type: null,
  url: https://api.openai.com/v1,
  created_on: null,
  modified_on: null,
  need_reset: false,
  is_default: true
)
```
