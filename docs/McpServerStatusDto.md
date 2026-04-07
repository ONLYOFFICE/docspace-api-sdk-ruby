# DocspaceApiSdk::McpServerStatusDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the MCP server. | [optional] |
| **name** | **String** | Display name of the MCP server. |  |
| **server_type** | [**ServerType**](ServerType.md) |  | [optional] |
| **connected** | **Boolean** | Indicates whether the current user has an active connection to this server. For direct-connection servers this is always true; for OAuth-based servers it reflects whether the user has completed authorization. | [optional] |
| **icon** | [**Icon**](Icon.md) |  | [optional] |
| **need_reset** | **Boolean** | Indicates whether the server requires a configuration reset due to connectivity or credential issues. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::McpServerStatusDto.new(
  id: 00000000-0000-0000-0000-000000000000,
  name: DocSpace Tools,
  server_type: null,
  connected: true,
  icon: null,
  need_reset: false
)
```
