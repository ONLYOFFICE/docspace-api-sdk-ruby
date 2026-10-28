# DocspaceApiSdk::DeleteVersionBatchRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **return_single_operation** | **Boolean** | Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list. | [optional] |
| **delete_after** | **Boolean** | Whether the finished operation is still reported: `false` keeps its final record readable through  `GET api/2.0/files/fileops` until it has been read once, `true` drops the record as soon as the work is done.  It does not postpone the deletion and does not delete anything of its own. | [optional] |
| **file_id** | **Integer** | The file whose history the versions are taken from; only files stored in the portal itself are addressed here. |  |
| **versions** | **Array&lt;Integer&gt;** | The version numbers to remove, as reported by `GET api/2.0/files/file/{fileId}/history`. At least one number  has to be sent: an empty list removes the file itself instead of one of its versions. The number of the  current version is refused outright, while a number that no longer exists is passed over without a complaint. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DeleteVersionBatchRequestDto.new(
  return_single_operation: false,
  delete_after: false,
  file_id: 1,
  versions: [1, 2, 3]
)
```
