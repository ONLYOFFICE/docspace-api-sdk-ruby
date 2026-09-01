# DocspaceApiSdk::RoomGroupRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Group name |  |
| **icon** | **String** | Group icon |  |
| **rooms** | [**Array&lt;DuplicateRequestDtoAllOfFileIds&gt;**](DuplicateRequestDtoAllOfFileIds.md) | The list of room IDs. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomGroupRequestDto.new(
  name: My Group,
  icon: cover1,
  rooms: [1, 2, 3]
)
```
