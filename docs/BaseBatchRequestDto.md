# DocspaceApiSdk::BaseBatchRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **return_single_operation** | **Boolean** | Specifies whether to return only the current operation | [optional] |
| **folder_ids** | [**Array&lt;BaseBatchRequestDtoAllOfFolderIds&gt;**](BaseBatchRequestDtoAllOfFolderIds.md) | The list of folder IDs of the base batch request. | [optional] |
| **file_ids** | [**Array&lt;BaseBatchRequestDtoAllOfFileIds&gt;**](BaseBatchRequestDtoAllOfFileIds.md) | The list of file IDs of the base batch request. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BaseBatchRequestDto.new(
  return_single_operation: false,
  folder_ids: [1, 2, 3],
  file_ids: [1, 2, 3]
)
```
