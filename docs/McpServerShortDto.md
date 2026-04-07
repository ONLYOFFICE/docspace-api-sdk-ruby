# DocspaceApiSdk::McpServerShortDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the MCP server. | [optional] |
| **name** | **String** | Display name of the MCP server. | [optional] |
| **server_type** | [**ServerType**](ServerType.md) |  | [optional] |
| **enabled** | **Boolean** | Indicates whether the server is currently enabled and available for room assignment. | [optional] |
| **icon** | [**Icon**](Icon.md) |  | [optional] |
| **need_reset** | **Boolean** | Indicates whether the server requires a configuration reset due to connectivity or credential issues. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::McpServerShortDto.new(
  id: 00000000-0000-0000-0000-000000000000,
  name: DocSpace Tools,
  server_type: null,
  enabled: true,
  icon: null,
  need_reset: false
)
```
