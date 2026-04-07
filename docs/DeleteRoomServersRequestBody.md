# DocspaceApiSdk::DeleteRoomServersRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **servers** | **Array&lt;String&gt;** | Set of unique identifiers of MCP servers to remove from the room. Associated connections and tool configurations will also be cleaned up. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DeleteRoomServersRequestBody.new(
  servers: ["00000000-0000-0000-0000-000000000000"]
)
```
