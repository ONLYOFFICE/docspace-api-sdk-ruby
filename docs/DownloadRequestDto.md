# DocspaceApiSdk::DownloadRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **return_single_operation** | **Boolean** | Specifies whether to return only the current operation | [optional] |
| **folder_ids** | [**Array&lt;DownloadRequestDtoAllOfFolderIds&gt;**](DownloadRequestDtoAllOfFolderIds.md) | The list of folder IDs to be downloaded. | [optional] |
| **file_ids** | [**Array&lt;DownloadRequestDtoAllOfFileIds&gt;**](DownloadRequestDtoAllOfFileIds.md) | The list of file IDs to be downloaded. | [optional] |
| **file_convert_ids** | [**Array&lt;DownloadRequestItemDto&gt;**](DownloadRequestItemDto.md) | The list of file IDs which will be converted. | [optional] |

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
