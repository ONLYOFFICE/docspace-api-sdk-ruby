# DocspaceApiSdk::DownloadRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **return_single_operation** | **Boolean** | Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list. | [optional] |
| **folder_ids** | [**Array&lt;DownloadRequestDtoAllOfFolderIds&gt;**](DownloadRequestDtoAllOfFolderIds.md) | The folders to pack, by id; everything inside them that the caller may read goes into the archive. A number  addresses a folder stored in the portal itself, a string addresses a folder on a connected third-party  account, and both kinds may be sent in one list. | [optional] |
| **file_ids** | [**Array&lt;DownloadRequestDtoAllOfFileIds&gt;**](DownloadRequestDtoAllOfFileIds.md) | The files to pack as they are, by id, without conversion. A number addresses a file stored in the portal  itself, a string addresses a file on a connected third-party account, and both kinds may be sent in one list. | [optional] |
| **file_convert_ids** | [**Array&lt;DownloadRequestItemDto&gt;**](DownloadRequestItemDto.md) | The files to convert before they are packed, each named together with the format it is converted to. A file  listed here does not have to be repeated in `fileIds`. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DownloadRequestDto.new(
  return_single_operation: false,
  folder_ids: [1, 2, 3],
  file_ids: [1, 2, 3],
  file_convert_ids: [{key=1, value=pdf, password=password123}]
)
```
