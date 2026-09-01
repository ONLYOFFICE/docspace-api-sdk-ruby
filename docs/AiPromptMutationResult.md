# DocspaceApiSdk::AiPromptMutationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | True when the prompt was persisted. |  |
| **prompt** | [**AiPrompt**](AiPrompt.md) | The persisted prompt. Present on success. | [optional] |
| **error** | [**AiTErrorData**](AiTErrorData.md) | Why the prompt was rejected. Present on failure. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiPromptMutationResult.new(
  success: null,
  prompt: null,
  error: null
)
```
