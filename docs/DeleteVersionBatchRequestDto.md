# DocspaceApiSdk::DeleteVersionBatchRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **return_single_operation** | **Boolean** | Specifies whether to return only the current operation | [optional] |
| **delete_after** | **Boolean** | Specifies whether to delete a file after the editing session is finished or not. | [optional] |
| **file_id** | **Integer** | The file ID to delete. |  |
| **versions** | **Array&lt;Integer&gt;** | The collection of file versions to be deleted. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DeleteVersionBatchRequestDto.new(
  return_single_operation: false,
  delete_after: false,
  file_id: 1,
  versions: [1,2,3]
)
```
