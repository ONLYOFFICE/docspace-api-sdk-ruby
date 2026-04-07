# DocspaceApiSdk::ConfigurationDtoInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document** | [**DocumentConfigDto**](DocumentConfigDto.md) |  |  |
| **document_type** | **String** | The document type. |  |
| **editor_config** | [**EditorConfigurationDto**](EditorConfigurationDto.md) |  |  |
| **editor_type** | [**EditorType**](EditorType.md) |  |  |
| **editor_url** | **String** | The editor URL. |  |
| **token** | **String** | The token of the file configuration. | [optional] |
| **type** | **String** | The platform type. | [optional] |
| **file** | [**FileDtoInteger**](FileDtoInteger.md) |  |  |
| **error_message** | **String** | The error message. | [optional] |
| **start_filling** | **Boolean** | Specifies if the file filling has started or not. | [optional] |
| **filling_status** | **Boolean** | The file filling status. | [optional] |
| **start_filling_mode** | [**StartFillingMode**](StartFillingMode.md) |  | [optional] |
| **filling_session_id** | **String** | The file filling session ID. | [optional] |
| **quota_exceeded_scope** | [**QuotaScope**](QuotaScope.md) |  | [optional] |
| **generation_tool_call_state** | [**EditorToolCallStateDto**](EditorToolCallStateDto.md) |  | [optional] |

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
