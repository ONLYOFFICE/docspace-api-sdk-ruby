# DocspaceApiSdk::DocumentBuilderTaskDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The identifier of the task. It is derived from the portal, the account and the kind of report, so starting the  same report again while it runs returns this same value, which is how a resumed poll is told from a newly  queued build. |  |
| **error** | **String** | The message of the failure that stopped the build. It is filled in only for a task that ended in the failed  state, and stays empty while the task runs and after it succeeds. |  |
| **percentage** | **Integer** | How far the build has got, from 0 to 100. It advances in a few coarse steps rather than smoothly, so it is a  progress hint and not a measure of the time left; wait on the completion flag instead. |  |
| **is_completed** | **Boolean** | True once the task has stopped for any reason, a failure and a cancellation included. It is the field to poll  on, and the status tells those outcomes apart. |  |
| **status** | [**DistributedTaskStatus**](DistributedTaskStatus.md) | How the task ended, or that it has not started yet. Read it together with the completion flag: a stopped task  can be a finished build, a cancelled one or a failure, and only this field separates them. |  |
| **result_file_id** | **Object** |  |  |
| **result_file_name** | **String** | The name the produced file was saved with, extension included. The name is built from the subject of the  report and is not unique: a second build adds another file instead of replacing the first. |  |
| **result_file_url** | **String** | The address of the produced file in the document editor, relative to the portal root, so prefix it with the  portal address to open it. It stays empty until the build succeeds. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocumentBuilderTaskDto.new(
  id: DocumentBuilderTask_1_c2b0e3a4-1f6c-4c2e-9c4f-3a5d8b7e1c22,
  error: The document service is unavailable,
  percentage: 60,
  is_completed: false,
  status: null,
  result_file_id: null,
  result_file_name: usage_report.xlsx,
  result_file_url: /doceditor?fileid=1234
)
```
