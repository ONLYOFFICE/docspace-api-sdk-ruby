# DocspaceApiSdk::ConversationResultDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The conversion operation ID. |  |
| **operation** | [**FileOperationType**](FileOperationType.md) |  |  |
| **progress** | **Integer** | The conversion operation progress. |  |
| **source** | **String** | The source file for the conversion. | [optional] |
| **result** | **Object** | The resulting file after the conversion. | [optional] |
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
  result: {"id":10,"title":"converted_file.pdf"},
  error: Conversion failed,
  processed: true
)
```
