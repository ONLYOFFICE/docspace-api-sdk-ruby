# DocspaceApiSdk::RoomTemplateStatusDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | The template the job is building. It is meaningful once the job has created the template folder, and the  template can be opened with the room operations only after `isCompleted` turns true. |  |
| **progress** | **Float** | How far the job has got. The value climbs while the contents of the room are being copied and reaches its  maximum at the very end, so it is an indication of life rather than a reliable estimate of the time left. |  |
| **error** | **String** | Why the job stopped. It is empty while the job runs and after a successful one; when it is filled the  half-built template has already been removed, so nothing has to be cleaned up by the caller. | [optional] |
| **is_completed** | **Boolean** | Whether the job has ended. It is set both after a successful build and after a failure, so `error` is what  tells the two apart, and the record keeps answering with the same values until another job is started. |  |

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
