# DocspaceApiSdk::DocumentBuilderTaskDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The Document Builder task ID. |  |
| **error** | **String** | The error message occurred during the document building process. |  |
| **percentage** | **Integer** | The progress percentage of the document building process. |  |
| **is_completed** | **Boolean** | Specifies whether the document building process is completed or not. |  |
| **status** | [**DistributedTaskStatus**](DistributedTaskStatus.md) |  |  |
| **result_file_id** | **Object** | The result file ID. |  |
| **result_file_name** | **String** | The result file name. |  |
| **result_file_url** | **String** | The result file URL. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocumentBuilderTaskDto.new(
  id: task-123-456,
  error: Build failed,
  percentage: 75,
  is_completed: false,
  status: null,
  result_file_id: 123,
  result_file_name: result.docx,
  result_file_url: http://localhost/files/result.docx
)
```
