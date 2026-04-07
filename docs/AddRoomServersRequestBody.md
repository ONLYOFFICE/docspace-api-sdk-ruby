# DocspaceApiSdk::AddRoomServersRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **servers** | **Array&lt;String&gt;** | Set of unique identifiers of MCP servers to associate with the room. A maximum of 5 servers can be assigned per room. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AddRoomServersRequestBody.new(
  servers: ["00000000-0000-0000-0000-000000000000"]
)
```
