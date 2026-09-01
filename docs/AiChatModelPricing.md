# DocspaceApiSdk::AiChatModelPricing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The identifier of the model, as the provider expects it on the wire. |  |
| **_alias** | **String** | The display name of the model. | [optional] |
| **owned_by** | **String** | The owner of the model, as reported by the provider. | [optional] |
| **provider** | **String** | The provider that serves the model. | [optional] |
| **link** | **String** | The link to the pricing page of the model. | [optional] |
| **price** | [**AiChatPrice**](AiChatPrice.md) | The price of a chat model, per token. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiChatModelPricing.new(
  id: gpt-4o,
  _alias: GPT-4o,
  owned_by: openai,
  provider: openai,
  link: https://openai.com/api/pricing,
  price: null
)
```
