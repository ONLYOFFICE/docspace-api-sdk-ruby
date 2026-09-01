# DocspaceApiSdk::AiModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Model identifier as used by the provider API (e.g. `gpt-4o`, `claude-sonnet-4-20250514`). |  |
| **name** | **String** | Human-readable model name for display in the UI. |  |
| **provider** | [**AiProviderType**](AiProviderType.md) | Provider that offers this model. |  |
| **reasoning** | **Boolean** | Whether this model supports extended thinking / chain-of-thought reasoning. | [optional] |
| **capabilities** | **Float** | Bitmask of model capabilities (Chat, Image, Vision, Tools, etc.). Used to filter models per `ActionType`. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiModel.new(
  id: null,
  name: null,
  provider: null,
  reasoning: null,
  capabilities: null
)
```
