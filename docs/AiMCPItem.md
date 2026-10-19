# DocspaceApiSdk::AiMCPItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Tool name as registered on the MCP server (e.g. `web_search`, `insert_text`). |  |
| **description** | **String** | Human-readable description shown to the AI model and in the tools list UI. |  |
| **input_schema** | **Object** | JSON Schema describing the tool's input parameters. |  |
| **enabled** | **Boolean** | Whether this tool is currently enabled. Disabled tools are hidden from the AI model. | [optional] |
| **server_type** | **String** | Server type (MCP server name / host tool group id) this tool belongs to — the key the persisted disabled map is stored under. Set by the source that enumerated the tool, so a caller-supplied tool can still be attributed to its group after being flattened into a single list: that is what lets the engine apply the disabled map to `actionArgs.tools` instead of trusting the caller to pre-filter. Wire-serializable, so it survives a remote (server-side) engine. | [optional] |
| **require_approval** | **Boolean** | Whether the consumer must show an approval dialog before this tool runs. Feeds the `autoAllow` flag on a `tool-call-pending` event together with the user's tool permission mode: `false` skips the dialog under the auto mode, the default (under ask only the persisted always-allow list does), `true` and `undefined` defer to that list; allow skips it for every tool. Host tools set it and default to `false`; MCP / custom-server tools leave it unset. Wire-serializable, so it survives a remote (server-side) engine. | [optional] |
| **annotations** | [**AiToolAnnotations**](AiToolAnnotations.md) | The MCP tool annotations as the server declared them in `tools/list` (kept verbatim on the descriptor; never sent to the model). The approval flow reads two of them under the auto permission mode: `readOnlyHint: true` and `destructiveHint: false` run without the dialog, a destructive or unannotated tool keeps asking — see `resolveAutoAllow`. Wire-serializable. | [optional] |

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
