# DocspaceApiSdk::ConversationResultDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The conversion operation ID. |  |
| **operation** | [**FileOperationType**](FileOperationType.md) | The conversion operation type. |  |
| **progress** | **Integer** | The conversion operation progress. |  |
| **source** | **String** | The source file for the conversion. | [optional] |
| **result** | **Object** |  | [optional] |
| **error** | **String** | The conversion operation error message. | [optional] |
| **processed** | **String** | Specifies if the conversion operation is processed or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConversationResultDto.new(
  id: 12345,
  operation: null,
  progress: 50,
  source: document.docx,
  result: null,
  error: Conversion failed,
  processed: true
)
```
