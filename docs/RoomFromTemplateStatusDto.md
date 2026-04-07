# DocspaceApiSdk::RoomFromTemplateStatusDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | The room ID. |  |
| **progress** | **Float** | The progress of creating a room from the template. |  |
| **error** | **String** | The error message that is sent when a room is not created successfully from the template. |  |
| **is_completed** | **Boolean** | Specifies whether the process of creating a room from the template is completed. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomFromTemplateStatusDto.new(
  room_id: 456,
  progress: 50.0,
  error: Room creation failed,
  is_completed: false
)
```
