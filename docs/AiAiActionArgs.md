# DocspaceApiSdk::AiAiActionArgs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tools** | [**Array&lt;AiTMCPItem&gt;**](AiTMCPItem.md) | Extra tools offered to the model for this request. | [optional] |
| **is_reasoning** | **Boolean** | Enable extended thinking / reasoning for this request. | [optional] |
| **prompt** | [**AiAiActionArgsPrompt**](AiAiActionArgsPrompt.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAiActionArgs.new(
  tools: null,
  is_reasoning: null,
  prompt: null
)
```
