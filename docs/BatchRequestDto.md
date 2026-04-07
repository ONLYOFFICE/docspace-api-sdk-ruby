# DocspaceApiSdk::BatchRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **return_single_operation** | **Boolean** | Specifies whether to return only the current operation | [optional] |
| **folder_ids** | [**Array&lt;BatchRequestDtoAllOfFolderIds&gt;**](BatchRequestDtoAllOfFolderIds.md) | The list of folder IDs to be copied/moved. | [optional] |
| **file_ids** | [**Array&lt;BatchRequestDtoAllOfFileIds&gt;**](BatchRequestDtoAllOfFileIds.md) | The list of file IDs to be copied/moved. | [optional] |
| **dest_folder_id** | [**BatchRequestDtoAllOfDestFolderId**](BatchRequestDtoAllOfDestFolderId.md) |  | [optional] |
| **conflict_resolve_type** | [**FileConflictResolveType**](FileConflictResolveType.md) |  | [optional] |
| **delete_after** | **Boolean** | Specifies whether to delete the source files/folders after they are moved or copied to the destination folder. | [optional] |
| **content** | **Boolean** | Specifies whether to copy or move the folder content or not. | [optional] |
| **to_fill_out** | **Boolean** | Specifies whether the file is copied for filling out | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BatchRequestDto.new(
  return_single_operation: false,
  folder_ids: [1,2,3],
  file_ids: [1,2,3],
  dest_folder_id: null,
  conflict_resolve_type: null,
  delete_after: false,
  content: false,
  to_fill_out: false
)
```
