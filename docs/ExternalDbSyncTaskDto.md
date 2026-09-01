# DocspaceApiSdk::ExternalDbSyncTaskDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The task ID. |  |
| **error** | **String** | The error message if the synchronization failed. | [optional] |
| **percentage** | **Integer** | The progress percentage of the synchronization. |  |
| **is_completed** | **Boolean** | Specifies whether the synchronization is completed or not. |  |
| **status** | [**DistributedTaskStatus**](DistributedTaskStatus.md) | The status of the synchronization task. |  |
| **forms** | [**Array&lt;ExternalDbSyncFormResultDto&gt;**](ExternalDbSyncFormResultDto.md) | The synchronization results for all original forms in the room. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ExternalDbSyncTaskDto.new(
  id: ExternalDbSyncTask_1_42,
  error: Connection refused,
  percentage: 75,
  is_completed: false,
  status: null,
  forms: [{id=42, title=Application.pdf, success=true, error=null}]
)
```
