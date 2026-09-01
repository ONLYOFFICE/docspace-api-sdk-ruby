# DocspaceApiSdk::AiBulkAssignmentResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | True when every entry was persisted. |  |
| **errors** | [**Array&lt;AiBulkAssignmentResultErrorsInner&gt;**](AiBulkAssignmentResultErrorsInner.md) | What was rejected, per action. Present on failure - and then no entry was persisted. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiBulkAssignmentResult.new(
  success: null,
  errors: null
)
```
