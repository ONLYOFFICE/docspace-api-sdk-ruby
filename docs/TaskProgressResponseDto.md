# DocspaceApiSdk::TaskProgressResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the queued job. It identifies this run of the job and changes every time the job is started again. |  |
| **error** | **String** | The message of the error that stopped the job. It is empty while the job is running and after a job that  succeeded, and it is the only place where the reason for a failure is reported. | [optional] |
| **percentage** | **Integer** | The share of the job that is already done, from 0 to 100. |  |
| **is_completed** | **Boolean** | Specifies whether the job has stopped running. This is the field to poll: true means the job will not change  any more, whether it succeeded, failed or was cancelled, and `status` tells which of the three it is. |  |
| **status** | [**DistributedTaskStatus**](DistributedTaskStatus.md) | The state of the job: `Created` while it waits in the queue, `Running` while it works, `Completed` once it has  finished on its own, `Canceled` after a terminate operation, and `Failted` when it stopped on an error, in  which case `error` carries the reason. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TaskProgressResponseDto.new(
  id: task-123456,
  error: An error occurred during processing,
  percentage: 75,
  is_completed: false,
  status: null
)
```
