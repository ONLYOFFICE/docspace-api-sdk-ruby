# DocspaceApiSdk::RoomGroupDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The group ID. | [optional] |
| **name** | **String** | Group name | [optional] |
| **icon** | [**MultiSizeLogoCover**](MultiSizeLogoCover.md) | Group icon | [optional] |
| **user_id** | **String** | The user ID. | [optional] |
| **rooms** | [**Array&lt;FileEntryBaseDto&gt;**](FileEntryBaseDto.md) | The list of rooms in the group. | [optional] |
| **total_rooms** | **Integer** | Total number of rooms in the group. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomGroupDto.new(
  id: 1,
  name: My Group,
  icon: null,
  user_id: 00000000-0000-0000-0000-000000000000,
  rooms: [{id=1, title=Room 1}, {id=2, title=Room 2}],
  total_rooms: 2
)
```
