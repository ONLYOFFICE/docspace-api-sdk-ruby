# DocspaceApiSdk::UpdateServerRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | New display name for the server. Only letters, numbers, underscores, and hyphens are allowed. Maximum 128 characters. | [optional] |
| **description** | **String** | New human-readable description of the server's purpose. Maximum 255 characters. | [optional] |
| **endpoint** | **String** | New base URL of the MCP server endpoint. If changed, the system will re-verify connectivity before saving. | [optional] |
| **headers** | **Hash&lt;String, String&gt;** | New HTTP headers to include with every request. If changed alongside the endpoint, connectivity is re-verified. | [optional] |
| **update_icon** | **Boolean** | Set to true to update the server icon. When true, the Icon field value (or null to remove) will be applied. | [optional] |
| **icon** | **String** | New Base64-encoded icon image for the server, or null to remove the existing icon. Only applied when UpdateIcon is true. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateServerRequestBody.new(
  name: Updated MCP Server,
  description: Updated server description,
  endpoint: https://mcp.example.com/sse,
  headers: {"Authorization":"Bearer token123"},
  update_icon: true,
  icon: https://example.com/icon.png
)
```
