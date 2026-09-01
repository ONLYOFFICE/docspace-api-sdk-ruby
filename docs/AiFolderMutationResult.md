# DocspaceApiSdk::AiFolderMutationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | True when the folder was persisted. |  |
| **folder** | [**AiPromptFolder**](AiPromptFolder.md) | The persisted folder. Present on success. | [optional] |
| **error** | [**AiTErrorData**](AiTErrorData.md) | Why the folder was rejected. Present on failure. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiFolderMutationResult.new(
  success: null,
  folder: null,
  error: null
)
```
