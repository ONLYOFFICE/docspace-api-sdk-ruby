# DocspaceApiSdk::AiFileOperationDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The file operation ID. |  |
| **operation** | [**AiFileOperationType**](AiFileOperationType.md) | The file operation type. |  |
| **progress** | **Integer** | The file operation progress in percentage. |  |
| **error** | **String** | The file operation error message. |  |
| **processed** | **String** | The file operation processing status. |  |
| **finished** | **Boolean** | Specifies if the file operation is finished or not. |  |
| **url** | **String** | The file operation URL. | [optional] |
| **files** | [**Array&lt;AiFileEntryBaseDto&gt;**](AiFileEntryBaseDto.md) | The list of files of the file operation. | [optional] |
| **folders** | [**Array&lt;AiFileEntryBaseDto&gt;**](AiFileEntryBaseDto.md) | The list of folders of the file operation. | [optional] |
| **status** | [**AiDistributedTaskStatus**](AiDistributedTaskStatus.md) | The status of the distributed task related to the file operation. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiFileOperationDto.new(
  id: 00000000-0000-0000-0000-000000000000,
  operation: null,
  progress: 100,
  error: File not found.,
  processed: 1,
  finished: true,
  url: http://localhost/download,
  files: [{id=10, title=document.docx}],
  folders: [{id=20, title=My Folder}],
  status: null
)
```
