# DocspaceApiSdk::ModelDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **Integer** | The unique identifier of the AI provider that offers this model. | [optional] |
| **provider_title** | **String** | The human-readable display name of the AI provider (e.g., OpenAI, Anthropic). |  |
| **model_id** | **String** | The model identifier as recognized by the AI provider (e.g., gpt-4o, claude-sonnet-4-20250514). |  |
| **price** | [**AiChatPrice**](AiChatPrice.md) |  | [optional] |
| **currency** | [**CurrencyInfo**](CurrencyInfo.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ModelDto.new(
  provider_id: 1,
  provider_title: OpenAI,
  model_id: gpt-4o,
  price: null,
  currency: null
)
```
