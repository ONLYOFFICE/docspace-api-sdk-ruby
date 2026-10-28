# DocspaceApiSdk::AiOpenAIChoiceDelta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | **String** | Sent on the first chunk only, always `assistant`. | [optional] |
| **content** | **String** | The text this chunk appends. Null when the chunk carries no text. | [optional] |
| **tool_calls** | [**Array&lt;AiOpenAIToolCallDelta&gt;**](AiOpenAIToolCallDelta.md) | The tool calls the model requested, emitted in place of text. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiOpenAIChoiceDelta.new(
  role: null,
  content: null,
  tool_calls: null
)
```
