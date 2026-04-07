# DocspaceApiSdk::UpdateRoomGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rooms_to_add** | [**Array&lt;DuplicateRequestDtoAllOfFileIds&gt;**](DuplicateRequestDtoAllOfFileIds.md) | The list of room IDs to add to the group. | [optional] |
| **rooms_to_remove** | [**Array&lt;DuplicateRequestDtoAllOfFileIds&gt;**](DuplicateRequestDtoAllOfFileIds.md) | The list of room IDs to remove from the group. | [optional] |
| **group_name** | **String** | The group name. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateRoomGroupRequest.new(
  rooms_to_add: [1,2,3],
  rooms_to_remove: [1,2,3],
  group_name: New Group Name
)
```
