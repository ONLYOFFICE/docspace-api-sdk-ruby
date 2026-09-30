# DocspaceApiSdk::AiAiActionArgs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tools** | [**Array&lt;AiTMCPItem&gt;**](AiTMCPItem.md) | Extra tools offered to the model for this request. | [optional] |
| **is_reasoning** | **Boolean** | Legacy extended-thinking switch; stands for `medium`. `reasoningLevel` wins when both are set. | [optional] |
| **reasoning_level** | [**AiAiReasoningLevel**](AiAiReasoningLevel.md) | Depth of extended thinking for the round; providers clamp it to what the model accepts. | [optional] |
| **prompt** | [**AiAiActionArgsPrompt**](AiAiActionArgsPrompt.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAiActionArgs.new(
  tools: [],
  is_reasoning: false,
  reasoning_level: null,
  prompt: null
)
```
