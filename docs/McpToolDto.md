# DocspaceApiSdk::McpToolDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the tool as reported by the MCP server. |  |
| **enabled** | **Boolean** | Indicates whether this tool is enabled (true) or disabled (false) for use in AI chat sessions within the room. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::McpToolDto.new(
  name: search_documents,
  enabled: true
)
```
