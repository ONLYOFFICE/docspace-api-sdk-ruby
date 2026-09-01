# DocspaceApiSdk::BackupProgress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_completed** | **Boolean** | Specifies if the backup is completed or not. | [optional] |
| **progress** | **Integer** | The backup progress in percentage. | [optional] |
| **error** | **String** | The backup error message. | [optional] |
| **warning** | **String** | The backup warning message. | [optional] |
| **link** | **String** | The backup link. | [optional] |
| **tenant_id** | **Integer** | The tenant ID. | [optional] |
| **backup_progress_enum** | [**BackupProgressEnum**](BackupProgressEnum.md) | The backup progress type. | [optional] |
| **status** | [**DistributedTaskStatus**](DistributedTaskStatus.md) | The backup progress status. | [optional] |
| **task_id** | **String** | The task ID. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BackupProgress.new(
  is_completed: false,
  progress: 50,
  error: null,
  warning: null,
  link: https://example.com/backup/task_123,
  tenant_id: 1,
  backup_progress_enum: null,
  status: null,
  task_id: task_123
)
```
