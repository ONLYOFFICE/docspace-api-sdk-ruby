# DocspaceApiSdk::AiToolsSetDisabledRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **server_type** | **String** |  |  |
| **tool_names** | **Array&lt;String&gt;** | Tool names to disable. |  |
| **entity_id** | **String** |  | [optional] |
| **scope** | [**AiChatToolPrefsScope**](AiChatToolPrefsScope.md) | The list the write lands in; omitted means the caller's own. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiToolsSetDisabledRequest.new(
  server_type: null,
  tool_names: null,
  entity_id: null,
  scope: null
)
```
