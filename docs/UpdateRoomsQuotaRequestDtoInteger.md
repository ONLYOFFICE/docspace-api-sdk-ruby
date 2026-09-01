# DocspaceApiSdk::UpdateRoomsQuotaRequestDtoInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_ids** | [**Array&lt;DuplicateRequestDtoAllOfFileIds&gt;**](DuplicateRequestDtoAllOfFileIds.md) | The list of room IDs. | [optional] |
| **quota** | **Integer** | The room quota. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateRoomsQuotaRequestDtoInteger.new(
  room_ids: [1, 2, 3],
  quota: 10485760
)
```
