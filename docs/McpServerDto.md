# DocspaceApiSdk::McpServerDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the MCP server. | [optional] |
| **name** | **String** | Display name of the MCP server. | [optional] |
| **description** | **String** | Human-readable description of the server's purpose and capabilities. | [optional] |
| **endpoint** | **String** | Base URL of the MCP server endpoint. | [optional] |
| **server_type** | [**ServerType**](ServerType.md) |  | [optional] |
| **headers** | **Hash&lt;String, String&gt;** | HTTP headers sent with every request to the server (e.g., authentication tokens). | [optional] |
| **enabled** | **Boolean** | Indicates whether the server is currently enabled and available for room assignment. | [optional] |
| **icon** | [**Icon**](Icon.md) |  | [optional] |
| **need_reset** | **Boolean** | Indicates whether the server requires a configuration reset due to connectivity or credential issues. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::McpServerDto.new(
  id: 00000000-0000-0000-0000-000000000000,
  name: DocSpace Tools,
  description: Provides document management tools,
  endpoint: https://mcp.example.com/sse,
  server_type: null,
  headers: {"Authorization":"Bearer token123"},
  enabled: true,
  icon: null,
  need_reset: false
)
```
