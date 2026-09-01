# DocspaceApiSdk::AiToolsSetAllowAlwaysRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_type** | **String** |  |  |
| **tool_name** | **String** |  |  |
| **value** | **Boolean** | Whether the tool is always allowed. |  |
| **entity_id** | **String** |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiToolsSetAllowAlwaysRequest.new(
  server_type: null,
  tool_name: null,
  value: null,
  entity_id: null
)
```
