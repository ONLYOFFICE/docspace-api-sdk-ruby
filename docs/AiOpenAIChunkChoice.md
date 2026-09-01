# DocspaceApiSdk::AiOpenAIChunkChoice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Float** | The zero-based position of the choice. This service emits a single choice, so always 0. |  |
| **delta** | [**AiOpenAIChoiceDelta**](AiOpenAIChoiceDelta.md) | What this chunk adds to the choice. |  |
| **finish_reason** | [**AiOpenAIFinishReason**](AiOpenAIFinishReason.md) | Why the completion stopped, or null while it is still streaming. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiOpenAIChunkChoice.new(
  index: null,
  delta: null,
  finish_reason: null
)
```
