# DocspaceApiSdk::AiModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Model identifier as used by the provider API (e.g. `gpt-4o`, `claude-sonnet-4-20250514`). |  |
| **name** | **String** | Human-readable model name for display in the UI. |  |
| **provider** | [**AiProviderType**](AiProviderType.md) | Provider that offers this model. |  |
| **reasoning** | **Boolean** | Whether this model supports extended thinking / chain-of-thought reasoning. | [optional] |
| **reasoning_support** | [**AiReasoningSupport**](AiReasoningSupport.md) | What the model can do with extended thinking, when the provider's catalogue says so (OpenRouter and the ONLYOFFICE route report a per-model `reasoning` object). Copied onto the profile at save time; absent, the widget falls back to the provider's id-based table. | [optional] |
| **capabilities** | **Float** | Bitmask of model capabilities (Chat, Image, Vision, Tools, etc.). Used to filter models per `ActionType`. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiModel.new(
  id: gpt-4o,
  name: GPT-4o,
  provider: openai,
  reasoning: false,
  reasoning_support: null,
  capabilities: 7
)
```
