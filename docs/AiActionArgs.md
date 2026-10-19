# DocspaceApiSdk::AiActionArgs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tools** | [**Array&lt;AiMCPItem&gt;**](AiMCPItem.md) | Extra tools offered to the model for this request. | [optional] |
| **is_reasoning** | **Boolean** | Legacy extended-thinking switch; stands for `medium`. `reasoningLevel` wins when both are set. | [optional] |
| **reasoning_level** | [**AiReasoningLevel**](AiReasoningLevel.md) | Depth of extended thinking for the round; providers clamp it to what the model accepts. | [optional] |
| **prompt** | [**AiActionArgsPrompt**](AiActionArgsPrompt.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiActionArgs.new(
  tools: [],
  is_reasoning: false,
  reasoning_level: null,
  prompt: null
)
```
