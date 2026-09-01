# DocspaceApiSdk::TaskProgressResponseDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The task progress ID. |  |
| **error** | **String** | The task progress error message. | [optional] |
| **percentage** | **Integer** | The percentage of the task progress. |  |
| **is_completed** | **Boolean** | Specifies if the task peogress is completed or not. |  |
| **status** | [**DistributedTaskStatus**](DistributedTaskStatus.md) | The status of the distributed task. |  |

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
