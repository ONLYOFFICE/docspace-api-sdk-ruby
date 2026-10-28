# DocspaceApiSdk::AiOpenAIStreamChunk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The completion identifier, stable across every chunk of one response. |  |
| **object** | **String** | Always `chat.completion.chunk`. |  |
| **created** | **Float** | When the completion started, in Unix seconds. |  |
| **model** | **String** | The model that produced the completion - the resolved profile's model. |  |
| **choices** | [**Array&lt;AiOpenAIChunkChoice&gt;**](AiOpenAIChunkChoice.md) | The choices carried by this chunk. This service emits exactly one. |  |
| **error** | [**AiOpenAIStreamErrorError**](AiOpenAIStreamErrorError.md) |  |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiOpenAIStreamChunk.new(
  id: null,
  object: null,
  created: null,
  model: null,
  choices: null,
  error: null
)
```
