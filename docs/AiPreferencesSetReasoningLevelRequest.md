# DocspaceApiSdk::AiPreferencesSetReasoningLevelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**AiAiReasoningLevel**](AiAiReasoningLevel.md) | New extended-thinking depth; `off` turns deep mode off. |  |
| **entity_id** | **String** |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiPreferencesSetReasoningLevelRequest.new(
  value: null,
  entity_id: null
)
```
