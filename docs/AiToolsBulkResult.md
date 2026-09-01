# DocspaceApiSdk::AiToolsBulkResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | True when every custom MCP server was persisted. |  |
| **errors** | [**Array&lt;AiToolsBulkResultErrorsInner&gt;**](AiToolsBulkResultErrorsInner.md) | What was rejected, per server. Present on failure - and then no server was persisted. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiToolsBulkResult.new(
  success: null,
  errors: null
)
```
