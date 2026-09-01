# DocspaceApiSdk::AiToolsMutationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | True when the MCP server was persisted. |  |
| **error** | [**AiTErrorData**](AiTErrorData.md) | Why the MCP server was rejected. Present on failure. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiToolsMutationResult.new(
  success: null,
  error: null
)
```
