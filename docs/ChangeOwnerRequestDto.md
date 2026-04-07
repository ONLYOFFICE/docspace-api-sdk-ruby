# DocspaceApiSdk::ChangeOwnerRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_ids** | [**Array&lt;BatchRequestDtoAllOfFileIds&gt;**](BatchRequestDtoAllOfFileIds.md) | The list of folder IDs to change the owner. | [optional] |
| **file_ids** | [**Array&lt;BatchRequestDtoAllOfFileIds&gt;**](BatchRequestDtoAllOfFileIds.md) | The list of file IDs to change the owner. | [optional] |
| **user_id** | **String** | The new file owner ID. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ChangeOwnerRequestDto.new(
  folder_ids: [1,2,3],
  file_ids: [1,2,3],
  user_id: 00000000-0000-0000-0000-000000000000
)
```
