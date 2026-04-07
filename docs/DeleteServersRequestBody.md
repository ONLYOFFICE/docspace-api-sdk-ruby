# DocspaceApiSdk::DeleteServersRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **servers** | **Array&lt;String&gt;** | Set of unique identifiers of the MCP servers to permanently remove. All room associations and connection data will also be deleted. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DeleteServersRequestBody.new(
  servers: ["00000000-0000-0000-0000-000000000000"]
)
```
