# DocspaceApiSdk::DuplicateRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **return_single_operation** | **Boolean** | Specifies whether to return only the current operation | [optional] |
| **folder_ids** | [**Array&lt;DuplicateRequestDtoAllOfFolderIds&gt;**](DuplicateRequestDtoAllOfFolderIds.md) | The list of folder IDs. | [optional] |
| **file_ids** | [**Array&lt;DuplicateRequestDtoAllOfFileIds&gt;**](DuplicateRequestDtoAllOfFileIds.md) | The list of file IDs. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DuplicateRequestDto.new(
  return_single_operation: false,
  folder_ids: [1, 2, 3],
  file_ids: [1, 2, 3]
)
```
