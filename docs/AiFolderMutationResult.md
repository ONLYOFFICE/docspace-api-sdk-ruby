# DocspaceApiSdk::AiFolderMutationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | True when the folder was persisted. |  |
| **folder** | [**AiPromptFolder**](AiPromptFolder.md) | The persisted folder. Present on success. | [optional] |
| **error** | [**AiErrorData**](AiErrorData.md) | Why the folder was rejected. Present on failure. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiFolderMutationResult.new(
  success: true,
  folder: null,
  error: null
)
```
