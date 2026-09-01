# DocspaceApiSdk::ConfigurationDtoInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document** | [**DocumentConfigDto**](DocumentConfigDto.md) | The document configuration. |  |
| **document_type** | **String** | The document type. |  |
| **editor_config** | [**EditorConfigurationDto**](EditorConfigurationDto.md) | The editor configuration. |  |
| **editor_type** | [**EditorType**](EditorType.md) | The editor type. |  |
| **editor_url** | **String** | The editor URL. |  |
| **token** | **String** | The token of the file configuration. | [optional] |
| **type** | **String** | The platform type. | [optional] |
| **file** | [**FileDtoInteger**](FileDtoInteger.md) | The file parameters. |  |
| **error_message** | **String** | The error message. | [optional] |
| **start_filling** | **Boolean** | Specifies if the file filling has started or not. | [optional] |
| **filling_status** | **Boolean** | The file filling status. | [optional] |
| **start_filling_mode** | [**StartFillingMode**](StartFillingMode.md) | The start filling mode. | [optional] |
| **filling_session_id** | **String** | The file filling session ID. | [optional] |
| **quota_exceeded_scope** | [**QuotaScope**](QuotaScope.md) | Indicates which quota scope has been exceeded. | [optional] |
| **generation_tool_call_state** | [**EditorToolCallStateDto**](EditorToolCallStateDto.md) | The generation tool call state. Used to run the agent flow in the editor. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConfigurationDtoInteger.new(
  document: null,
  document_type: word,
  editor_config: null,
  editor_type: null,
  editor_url: http://localhost/editor,
  token: token-abc-123,
  type: desktop,
  file: null,
  error_message: Configuration error,
  start_filling: false,
  filling_status: false,
  start_filling_mode: null,
  filling_session_id: session-123-456,
  quota_exceeded_scope: null,
  generation_tool_call_state: null
)
```
