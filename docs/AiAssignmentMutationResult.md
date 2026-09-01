# DocspaceApiSdk::AiAssignmentMutationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | True when the assignment was persisted. |  |
| **error** | [**AiTErrorData**](AiTErrorData.md) | Why the assignment was rejected. Present on failure. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAssignmentMutationResult.new(
  success: null,
  error: null
)
```
