# DocspaceApiSdk::UpdateRoomsRoomIdsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_ids** | [**Array&lt;DuplicateRequestDtoAllOfFileIds&gt;**](DuplicateRequestDtoAllOfFileIds.md) | The rooms to reset, named by the identifiers that `GET api/2.0/files/rooms` reports. Only whole numbers are  processed, so identifiers of rooms kept in a connected third-party account are skipped without an error. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateRoomsRoomIdsRequestDto.new(
  room_ids: [1, 2, 3]
)
```
