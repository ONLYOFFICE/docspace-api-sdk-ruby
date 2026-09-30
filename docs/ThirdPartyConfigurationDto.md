# DocspaceApiSdk::ThirdPartyConfigurationDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document** | [**DocumentConfigDto**](DocumentConfigDto.md) | The document as the editors address it: its revision key, title, type, download address and the permissions of  this caller on it. |  |
| **document_type** | **String** | The editor family the file opens in - `word`, `cell`, `slide`, `pdf` or `diagram`. It comes back empty for a  format no editor handles. |  |
| **editor_config** | [**EditorConfigurationDto**](EditorConfigurationDto.md) | How the editor is set up for this opening: the mode, the language, the interface customization, the callback  the editors save through, and the account they attribute changes to. |  |
| **editor_type** | [**EditorType**](EditorType.md) | The layout the configuration was actually built for. It echoes the requested one except where the room  overruled it, as the templates folder does by forcing the embedded viewer. |  |
| **editor_url** | **String** | The address of the editor api script the client has to load, with the shard key of this document already  appended. Load it as it is given rather than assembling it by hand. |  |
| **token** | **String** | Signs this whole configuration so that the editors can trust it; anything a client changes in the  configuration invalidates it. It stays empty on a portal that has no signature secret configured for the  document service. | [optional] |
| **type** | **String** | The layout spelled as a lowercase word - `desktop`, `mobile` or `embedded` - the same value the editor type  carries as a number. | [optional] |
| **file** | [**ThirdPartyFileDto**](ThirdPartyFileDto.md) | The file the configuration was built for, in the same shape the file listings report it. |  |
| **error_message** | **String** | Filled in when the document could not be prepared for opening; the rest of the configuration should then not  be handed to the editors. | [optional] |
| **start_filling** | **Boolean** | Whether this caller may start a filling session on the form from inside the editor. It stays empty when the  file is not a form opened where starting is possible at all. | [optional] |
| **filling_status** | **Boolean** | True once the caller holds a role in the running filling session of this form. It stays empty outside a  virtual data room, where roles are the only place it is set. | [optional] |
| **start_filling_mode** | [**StartFillingMode**](StartFillingMode.md) | Which filling button the editor offers: none at all, sharing the form out for others to fill, starting a  filling session, or starting one inside the form-filling room. | [optional] |
| **filling_session_id** | **String** | Identifies the filling session this opening belongs to, and is empty when the document is not opened as part  of one. Submissions made in the editor are collected under it. | [optional] |
| **quota_exceeded_scope** | [**QuotaScope**](QuotaScope.md) | Names the quota that ran out - the user, the room or the portal - and is set only when the document had to be  opened read-only because of it. | [optional] |
| **generation_tool_call_state** | [**EditorToolCallStateDto**](EditorToolCallStateDto.md) | The generation the editor should run as soon as the document opens. It is set only for a document an AI agent  produced and left waiting for its content, and is empty for every other file. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ThirdPartyConfigurationDto.new(
  document: null,
  document_type: word,
  editor_config: null,
  editor_type: null,
  editor_url: https://portal.example.com/web-apps/apps/api/documents/api.js?shardkey=1_512_3,
  token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...,
  type: desktop,
  file: null,
  error_message: The file is being converted,
  start_filling: false,
  filling_status: false,
  start_filling_mode: null,
  filling_session_id: a1b2c3d4-0000-0000-0000-000000000000,
  quota_exceeded_scope: null,
  generation_tool_call_state: null
)
```
