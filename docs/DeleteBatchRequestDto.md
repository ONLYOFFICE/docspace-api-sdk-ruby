# DocspaceApiSdk::DeleteBatchRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **return_single_operation** | **Boolean** | Specifies whether to return only the current operation | [optional] |
| **folder_ids** | [**Array&lt;DeleteBatchRequestDtoAllOfFolderIds&gt;**](DeleteBatchRequestDtoAllOfFolderIds.md) | The list of folder IDs to be deleted. | [optional] |
| **file_ids** | [**Array&lt;DeleteBatchRequestDtoAllOfFileIds&gt;**](DeleteBatchRequestDtoAllOfFileIds.md) | The list of file IDs to be deleted. | [optional] |
| **delete_after** | **Boolean** | Specifies whether to delete a file after the editing session is finished or not | [optional] |
| **immediately** | **Boolean** | Specifies whether to move a file to the \\Trash\\ folder or delete it immediately. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DeleteBatchRequestDto.new(
  return_single_operation: false,
  folder_ids: [1,2,3],
  file_ids: [1,2,3],
  delete_after: false,
  immediately: false
)
```
