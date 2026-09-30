# DocspaceApiSdk::BatchRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **return_single_operation** | **Boolean** | Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list. | [optional] |
| **folder_ids** | [**Array&lt;BatchRequestDtoAllOfFolderIds&gt;**](BatchRequestDtoAllOfFolderIds.md) | The folders to move or copy, by id. A number addresses a folder stored in the portal itself, a string  addresses a folder on a connected third-party account, and both kinds may be sent in one list. | [optional] |
| **file_ids** | [**Array&lt;BatchRequestDtoAllOfFileIds&gt;**](BatchRequestDtoAllOfFileIds.md) | The files to move or copy, by id. A number addresses a file stored in the portal itself, a string addresses a  file on a connected third-party account, and both kinds may be sent in one list. | [optional] |
| **dest_folder_id** | [**BatchRequestDtoAllOfDestFolderId**](BatchRequestDtoAllOfDestFolderId.md) |  | [optional] |
| **conflict_resolve_type** | [**FileConflictResolveType**](FileConflictResolveType.md) | What happens to an item whose name is already taken in the destination folder: `skip` leaves it where it is,  `overwrite` replaces the entry at the destination, and `duplicate` places it beside that entry under a name  with a numeric suffix. `GET api/2.0/files/fileops/move` reports which items would clash. | [optional] |
| **delete_after** | **Boolean** | Whether the finished operation is still reported: `false` keeps its final record readable through  `GET api/2.0/files/fileops` until it has been read once, `true` drops the record as soon as the work is done.  It deletes nothing: a move takes the sources away in any case, and a copy always leaves them. | [optional] |
| **content** | **Boolean** | What is taken from a listed folder: `false` moves or copies the folder itself, `true` takes only what it  contains, so its files and subfolders land in the destination and the folder is not recreated there. | [optional] |
| **to_fill_out** | **Boolean** | Marks every copied PDF form as a draft prepared for filling, which is how such a copy reports its filling  status in a virtual data room. Files that are not forms are left unaffected. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BatchRequestDto.new(
  return_single_operation: false,
  folder_ids: [1, 2, 3],
  file_ids: [1, 2, 3],
  dest_folder_id: null,
  conflict_resolve_type: null,
  delete_after: false,
  content: false,
  to_fill_out: false
)
```
