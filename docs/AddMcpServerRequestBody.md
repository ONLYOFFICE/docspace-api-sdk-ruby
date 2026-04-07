# DocspaceApiSdk::AddMcpServerRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Unique display name for the server. Only letters, numbers, underscores, and hyphens are allowed. Maximum 128 characters. |  |
| **description** | **String** | Human-readable description of the server's purpose and capabilities. Maximum 255 characters. |  |
| **endpoint** | **String** | Base URL of the MCP server endpoint. Must be a valid, reachable URL. The system will verify connectivity during registration. |  |
| **headers** | **Hash&lt;String, String&gt;** | Optional HTTP headers to include with every request to the MCP server (e.g., authentication tokens or API keys). | [optional] |
| **icon** | **String** | Optional Base64-encoded icon image for the server. Used as the visual identifier in the UI. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AddMcpServerRequestBody.new(
  name: my-custom-server,
  description: Custom MCP server for project management tools,
  endpoint: https://mcp.example.com/sse,
  headers: {"Authorization":"Bearer token123"},
  icon: https://example.com/icon.png
)
```
