# DocspaceApiSdk::BackupProgress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_completed** | **Boolean** | Specifies whether the job has stopped running. This is the field to poll: true means the job will not  change any more, whether it succeeded, failed or was cancelled, and `status` tells which of the three  it is. | [optional] |
| **progress** | **Integer** | The share of the job that is already done, from 0 to 100. A job that has only been queued reports 0,  because the work starts when a separate worker service picks it up. | [optional] |
| **error** | **String** | The message of the error that stopped the job. It is an empty string, not null, while the job runs  and after a job that succeeded, so the sign of a failure is a non-empty value - and this is the only  place where the reason is reported. | [optional] |
| **warning** | **String** | A message about a job that stopped without failing: it names the entry inside the archive that lists  the files which could not be read, when a backup finished without some of them, and it says so when  the job was cancelled. It is an empty string otherwise, and it is only ever filled in for a backup  job - a cancelled restoring job leaves it empty. | [optional] |
| **link** | **String** | The link to download the stored archive. It is an empty string until the archive has been uploaded,  and it is only ever filled in for a backup job, never for a restoring one. | [optional] |
| **tenant_id** | **Integer** | The ID of the portal the job belongs to, or -1 for a job that covers the whole server. | [optional] |
| **backup_progress_enum** | [**BackupProgressEnum**](BackupProgressEnum.md) | Whether this is a backup or a restoring job, reported as a number rather than as a name. | [optional] |
| **status** | [**DistributedTaskStatus**](DistributedTaskStatus.md) | The state of the job: `Created` while it waits for a worker to pick it up, `Running` while it works,  `Completed` once it has finished on its own, `Canceled` after it was cancelled, and `Failted` when it  stopped on an error, in which case `error` carries the reason. Reported as a number rather than as a  name. | [optional] |
| **task_id** | **String** | The ID of the job. It is the handle to poll this operation with, and for a backup job it also becomes  the `id` of the record in `GET api/2.0/backup/getbackuphistory`. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::BackupProgress.new(
  is_completed: false,
  progress: 50,
  error: An error occurred during processing,
  warning: Some files were not included in the backup. For more details, please check storage/missing_info,
  link: https://example.com/products/files/httphandlers/filehandler.ashx?action=download&fileid=1234,
  tenant_id: 1,
  backup_progress_enum: null,
  status: null,
  task_id: 11111111-1111-1111-1111-111111111111
)
```
