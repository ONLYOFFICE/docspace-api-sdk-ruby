# DocspaceApiSdk::AiOpenAIChatCompletionChunk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The completion identifier, stable across every chunk of one response. |  |
| **object** | **String** | Always `chat.completion.chunk`. |  |
| **created** | **Float** | When the completion started, in Unix seconds. |  |
| **model** | **String** | The model that produced the completion - the resolved profile's model. |  |
| **choices** | [**Array&lt;AiOpenAIChunkChoice&gt;**](AiOpenAIChunkChoice.md) | The choices carried by this chunk. This service emits exactly one. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiOpenAIChatCompletionChunk.new(
  id: null,
  object: null,
  created: null,
  model: null,
  choices: null
)
```
