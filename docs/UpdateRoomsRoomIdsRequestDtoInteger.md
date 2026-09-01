# DocspaceApiSdk::UpdateRoomsRoomIdsRequestDtoInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_ids** | [**Array&lt;DuplicateRequestDtoAllOfFileIds&gt;**](DuplicateRequestDtoAllOfFileIds.md) | The list of room IDs. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateRoomsRoomIdsRequestDtoInteger.new(
  room_ids: [1, 2, 3]
)
```
