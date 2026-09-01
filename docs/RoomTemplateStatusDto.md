# DocspaceApiSdk::RoomTemplateStatusDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | The room template ID. |  |
| **progress** | **Float** | The progress of the room template creation process. |  |
| **error** | **String** | The error message that is sent when the room template is not created successfully. | [optional] |
| **is_completed** | **Boolean** | Specifies whether the process of creating the room template is completed. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomTemplateStatusDto.new(
  template_id: 123,
  progress: 75.5,
  error: Template creation failed,
  is_completed: false
)
```
