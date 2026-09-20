# DocspaceApiSdk::UpdateRoomsQuotaRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_ids** | [**Array&lt;DuplicateRequestDtoAllOfFileIds&gt;**](DuplicateRequestDtoAllOfFileIds.md) | The rooms to change, named by the identifiers that `GET api/2.0/files/rooms` reports. Only whole numbers are  processed, so identifiers of rooms kept in a connected third-party account are skipped without an error. | [optional] |
| **quota** | **Integer** | The storage each of the listed rooms may take, in bytes. It has to stay inside the portal own limit, and the  per-room quota feature has to be on, otherwise nothing is changed. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateRoomsQuotaRequestDto.new(
  room_ids: [1, 2, 3],
  quota: 10737418240
)
```
