# DocspaceApiSdk::DuplicateRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **return_single_operation** | **Boolean** | Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list. | [optional] |
| **folder_ids** | [**Array&lt;DuplicateRequestDtoAllOfFolderIds&gt;**](DuplicateRequestDtoAllOfFolderIds.md) | The folders to duplicate, by id; the copy of each one is created in the folder that already holds it. A number  addresses a folder stored in the portal itself, a string addresses a folder on a connected third-party  account, and both kinds may be sent in one list. | [optional] |
| **file_ids** | [**Array&lt;DuplicateRequestDtoAllOfFileIds&gt;**](DuplicateRequestDtoAllOfFileIds.md) | The files to duplicate, by id; the copy of each one is created in the folder that already holds it. A number  addresses a file stored in the portal itself, a string addresses a file on a connected third-party account,  and both kinds may be sent in one list. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DuplicateRequestDto.new(
  return_single_operation: false,
  folder_ids: [1, 2, 3],
  file_ids: [1, 2, 3]
)
```
