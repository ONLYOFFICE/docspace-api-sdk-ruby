# DocspaceApiSdk::AiMCPItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Tool name as registered on the MCP server (e.g. `web_search`, `insert_text`). |  |
| **description** | **String** | Human-readable description shown to the AI model and in the tools list UI. |  |
| **input_schema** | **Object** | JSON Schema describing the tool's input parameters. |  |
| **enabled** | **Boolean** | Whether this tool is currently enabled. Disabled tools are hidden from the AI model. | [optional] |
| **server_type** | **String** | The server or tool group the tool belongs to (an MCP server name or a host tool group ID): the key a disabled tool is stored under, so a tool sent in `actionArgs.tools` is still matched to its group. | [optional] |
| **require_approval** | **Boolean** | Whether the tool asks for approval before it runs, under the `auto` tool permission mode: `false` runs it without asking; `true` or absent leaves it to the always-allow list and the tool's MCP annotations (see `annotations`). Under `ask` every call asks and under `allow` none does, whatever this says. Host tools default to `false`; MCP and custom-server tools leave it unset. | [optional] |
| **annotations** | [**AiToolAnnotations**](AiToolAnnotations.md) | The MCP tool annotations as the server declared them in `tools/list`; never sent to the model. Under the `auto` tool permission mode a tool that cannot destroy anything runs without approval - one annotated `readOnlyHint: true`, or one with an explicit `destructiveHint: false`; a destructive tool, and one with no annotations (the protocol's default is destructive), keeps asking. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiMCPItem.new(
  name: docspace_get_folder,
  description: Read the contents of a DocSpace folder.,
  input_schema: {type=object, properties={folderId={type=string}}, required=[folderId]},
  enabled: true,
  server_type: docspace,
  require_approval: false,
  annotations: null
)
```
