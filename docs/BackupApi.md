# DocspaceApiSdk::BackupApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_backup**](BackupApi.md#cancel_backup) | **POST** /api/2.0/backup/cancelbackup | Cancel the running backup |
| [**create_backup_schedule**](BackupApi.md#create_backup_schedule) | **POST** /api/2.0/backup/createbackupschedule | Create the backup schedule |
| [**delete_backup**](BackupApi.md#delete_backup) | **DELETE** /api/2.0/backup/deletebackup/{id} | Delete the backup |
| [**delete_backup_history**](BackupApi.md#delete_backup_history) | **DELETE** /api/2.0/backup/deletebackuphistory | Delete the backup history |
| [**delete_backup_schedule**](BackupApi.md#delete_backup_schedule) | **DELETE** /api/2.0/backup/deletebackupschedule | Delete the backup schedule |
| [**get_backup_history**](BackupApi.md#get_backup_history) | **GET** /api/2.0/backup/getbackuphistory | Get the backup history |
| [**get_backup_progress**](BackupApi.md#get_backup_progress) | **GET** /api/2.0/backup/getbackupprogress | Get the backup progress |
| [**get_backup_schedule**](BackupApi.md#get_backup_schedule) | **GET** /api/2.0/backup/getbackupschedule | Get the backup schedule |
| [**get_backups_count**](BackupApi.md#get_backups_count) | **GET** /api/2.0/backup/getbackupscount | Get the number of backups |
| [**get_backups_counts**](BackupApi.md#get_backups_counts) | **GET** /api/2.0/backup/getbackupscountbypaid | Get free and paid backup counts |
| [**get_backups_service_state**](BackupApi.md#get_backups_service_state) | **GET** /api/2.0/backup/getservicestate | Check whether backups are enabled |
| [**get_restore_progress**](BackupApi.md#get_restore_progress) | **GET** /api/2.0/backup/getrestoreprogress | Get the restoring progress |
| [**start_backup**](BackupApi.md#start_backup) | **POST** /api/2.0/backup/startbackup | Start the backup |
| [**start_backup_restore**](BackupApi.md#start_backup_restore) | **POST** /api/2.0/backup/startrestore | Start the restoring process |


## cancel_backup

> <BooleanWrapper> cancel_backup

Cancel the running backup

Drops the backup job of the current portal from the queue, which cancels it if it is still running.  The caller needs the portal settings permission. It answers false, not an error, when there is nothing  to cancel, so the result says whether a job was actually dropped rather than whether the call  succeeded.  This affects backup jobs only: a restoring job cannot be cancelled through the API. The cancelled job  leaves the queue, so a following `GET api/2.0/backup/getbackupprogress` reports no job at all rather  than a job with the `Canceled` status.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/cancel-backup/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Backup::BackupApi.new

begin
  # Cancel the running backup
  result = api_instance.cancel_backup
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->cancel_backup: #{e}"
end
```

#### Using the cancel_backup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> cancel_backup_with_http_info

```ruby
begin
  # Cancel the running backup
  data, status_code, headers = api_instance.cancel_backup_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->cancel_backup_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_backup_schedule

> <BooleanWrapper> create_backup_schedule(opts)

Create the backup schedule

Sets the backup schedule of the current portal. A portal keeps at most one schedule, so this replaces  the existing one rather than adding a second, and `dump` writes the schedule of the whole server  instead, which requires the space access permission and works on a standalone installation only.  Scheduled backups have to be allowed by the pricing plan of a portal that is not a standalone  installation.  `cronParams` is a period plus a time rather than a cron string: `hour` is the hour of the day from 0  to 23, and `day` has to be given for `EveryWeek`, where it is the day of the week from 1 to 7 with  Sunday as 1, and for `EveryMonth`, where it is the day of the month from 1 to 31. It is left out for  `EveryDay`, and because an omitted `day` is stored as 0, which neither period accepts, a weekly or  monthly schedule sent without it fails instead of falling back to a default.  `backupsStored` is the number of scheduled copies to keep, from 1 to 30, and it defaults to 1. Older  copies are removed by a background cleaner, and only the ones this schedule created: archives made by  `POST api/2.0/backup/startbackup` are not counted and not removed. A portal whose subscription stops  covering backups has its schedule deleted by the scheduler, not suspended, and its administrators are  notified that the scheduled backup failed.  The keys expected in `storageParams` are the same as for `POST api/2.0/backup/startbackup`, except  that they are sent as an array of key and value pairs here and returned as an object by  `GET api/2.0/backup/getbackupschedule`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-backup-schedule/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Backup::BackupApi.new
opts = {
  backup_schedule_dto: DocspaceApiSdk::BackupScheduleDto.new # BackupScheduleDto | 
}

begin
  # Create the backup schedule
  result = api_instance.create_backup_schedule(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->create_backup_schedule: #{e}"
end
```

#### Using the create_backup_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> create_backup_schedule_with_http_info(opts)

```ruby
begin
  # Create the backup schedule
  data, status_code, headers = api_instance.create_backup_schedule_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->create_backup_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_schedule_dto** | [**BackupScheduleDto**](BackupScheduleDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_backup

> <BooleanWrapper> delete_backup(id)

Delete the backup

Deletes one backup: first its history record, then the archive in the storage the record points at.  The ID is the one listed by `GET api/2.0/backup/getbackuphistory`, which is also the `taskId` the  backup was started with.  Deleting a backup of the whole server rather than of one portal additionally requires the space  access permission. A record that belongs to another portal is left untouched and the call still  answers true, so the result confirms that the request was accepted rather than that anything was  deleted - check with `GET api/2.0/backup/getbackuphistory` if it matters.  The record is removed before the archive, so when the storage can no longer be reached the archive  stays behind with nothing pointing at it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Backup::BackupApi.new
id = '11111111-1111-1111-1111-111111111111' # String | The ID of the backup to delete, taken from the route. It is the `id` of a record listed by  `GET api/2.0/backup/getbackuphistory`, which is also the `taskId` the backup was started with.

begin
  # Delete the backup
  result = api_instance.delete_backup(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->delete_backup: #{e}"
end
```

#### Using the delete_backup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> delete_backup_with_http_info(id)

```ruby
begin
  # Delete the backup
  data, status_code, headers = api_instance.delete_backup_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->delete_backup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the backup to delete, taken from the route. It is the `id` of a record listed by  `GET api/2.0/backup/getbackuphistory`, which is also the `taskId` the backup was started with. |  |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_backup_history

> <BooleanWrapper> delete_backup_history(opts)

Delete the backup history

Deletes every backup of the current portal, both the history records and the archives themselves, and  leaves the backup schedule alone. `dump` clears the backups of the whole server instead and requires  the space access permission.  The records are walked one by one and a failure on any of them is swallowed, so the result is always  true even when some archives could not be deleted: it does not mean the history is now empty. Call  `GET api/2.0/backup/getbackuphistory` afterwards to see what is left.  Each record is removed before its archive, so an archive whose deletion fails stays in the storage  with nothing pointing at it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup-history/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Backup::BackupApi.new
opts = {
  dump: false # Boolean | Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data.
}

begin
  # Delete the backup history
  result = api_instance.delete_backup_history(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->delete_backup_history: #{e}"
end
```

#### Using the delete_backup_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> delete_backup_history_with_http_info(opts)

```ruby
begin
  # Delete the backup history
  data, status_code, headers = api_instance.delete_backup_history_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->delete_backup_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dump** | **Boolean** | Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data. | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_backup_schedule

> <BooleanWrapper> delete_backup_schedule(opts)

Delete the backup schedule

Deletes the backup schedule of the current portal, which stops the scheduled backups; `dump` deletes  the schedule of the whole server instead and requires the space access permission. The archives the  schedule has already produced are kept and stay listed by  `GET api/2.0/backup/getbackuphistory` - delete them through  `DELETE api/2.0/backup/deletebackup/{id}` if they are no longer wanted.  The result is always true, including when there was no schedule to delete, so it confirms that the  portal now has none rather than that anything was removed. The deletion is written to the audit trail  either way.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-backup-schedule/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Backup::BackupApi.new
opts = {
  dump: false # Boolean | Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data.
}

begin
  # Delete the backup schedule
  result = api_instance.delete_backup_schedule(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->delete_backup_schedule: #{e}"
end
```

#### Using the delete_backup_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> delete_backup_schedule_with_http_info(opts)

```ruby
begin
  # Delete the backup schedule
  data, status_code, headers = api_instance.delete_backup_schedule_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->delete_backup_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dump** | **Boolean** | Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data. | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_backup_history

> <BackupHistoryRecordArrayWrapper> get_backup_history(opts)

Get the backup history

Lists the backups of the current portal whose archive is still present in the storage it was written  to. The records come back in no particular order, so sort them by `createdOn` if the newest one is  wanted. `dump` lists the backups of the whole server instead and requires the space access  permission.  Despite being a read operation, this prunes the history as it goes: a record whose archive is no  longer in its storage is deleted outright, so the list can shrink between two calls without anybody  deleting anything. A record whose storage can no longer be reached at all - a disconnected  third-party account, for instance - is neither returned nor deleted, so it stays invisible while  still occupying the history.  The `id` of a record is the same value as the `taskId` that  `POST api/2.0/backup/startbackup` returned for it, and it is what  `DELETE api/2.0/backup/deletebackup/{id}` and the `backupId` of  `POST api/2.0/backup/startrestore` expect.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-history/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Backup::BackupApi.new
opts = {
  dump: false # Boolean | Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data.
}

begin
  # Get the backup history
  result = api_instance.get_backup_history(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->get_backup_history: #{e}"
end
```

#### Using the get_backup_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupHistoryRecordArrayWrapper>, Integer, Hash)> get_backup_history_with_http_info(opts)

```ruby
begin
  # Get the backup history
  data, status_code, headers = api_instance.get_backup_history_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupHistoryRecordArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->get_backup_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dump** | **Boolean** | Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data. | [optional] |

### Return type

[**BackupHistoryRecordArrayWrapper**](BackupHistoryRecordArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_backup_progress

> <BackupProgressWrapper> get_backup_progress(opts)

Get the backup progress

Reports the state of the backup job of the current portal, and is the operation to poll after  `POST api/2.0/backup/startbackup`. The queue holds one job per portal, so no job ID is passed in;  `dump` asks for the state of the server-wide job instead and requires the space access permission.  When there is no such job - none was ever started, or the finished one has already been dropped from  the queue - the call still answers 200, but the body carries no `response` member at all, so a client  has to treat the payload as optional rather than expect an empty object.  While the job runs, `isCompleted` is false, `error` and `link` are empty strings and `progress` grows  from 0 to 100. Once it stops, `isCompleted` turns true and `status` says how it ended: a non-empty  `error` is the only report of a failure, `warning` is set when the archive was written but some files  could not be read or when the job was cancelled, and `link` becomes the download link to the stored  archive.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-progress/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Backup::BackupApi.new
opts = {
  dump: false # Boolean | Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data.
}

begin
  # Get the backup progress
  result = api_instance.get_backup_progress(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->get_backup_progress: #{e}"
end
```

#### Using the get_backup_progress_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupProgressWrapper>, Integer, Hash)> get_backup_progress_with_http_info(opts)

```ruby
begin
  # Get the backup progress
  data, status_code, headers = api_instance.get_backup_progress_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupProgressWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->get_backup_progress_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dump** | **Boolean** | Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data. | [optional] |

### Return type

[**BackupProgressWrapper**](BackupProgressWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_backup_schedule

> <ScheduleWrapper> get_backup_schedule(opts)

Get the backup schedule

Returns the backup schedule of the current portal. A portal keeps at most one schedule, so no ID is  passed in, and when none is set the call still answers 200 with a body that carries no `response`  member at all. `dump` asks for the schedule of the whole server instead of the one of this portal and  requires the space access permission.  The answer cannot be sent back unchanged: `storageParams` is returned as an object keyed by parameter  name, while `POST api/2.0/backup/createbackupschedule` expects an array of key and value pairs. For  every storage type except `ThirdPartyConsumer` the `folderId` key of the answer is built from the  stored base path rather than read back from the saved parameters, and a schedule that keeps an  unlimited number of copies reports `backupsStored` as null instead of 0.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-schedule/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Backup::BackupApi.new
opts = {
  dump: false # Boolean | Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data.
}

begin
  # Get the backup schedule
  result = api_instance.get_backup_schedule(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->get_backup_schedule: #{e}"
end
```

#### Using the get_backup_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScheduleWrapper>, Integer, Hash)> get_backup_schedule_with_http_info(opts)

```ruby
begin
  # Get the backup schedule
  data, status_code, headers = api_instance.get_backup_schedule_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScheduleWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->get_backup_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dump** | **Boolean** | Applies the operation to the whole server rather than to the current portal, which requires the space  access permission and works on a standalone installation only. Server-wide backups and schedules are  kept apart from the ones of a portal, so the two values address different data. | [optional] |

### Return type

[**ScheduleWrapper**](ScheduleWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_backups_count

> <Int32Wrapper> get_backups_count(opts)

Get the number of backups

Counts the backups of the current portal that were created within a period, and `paid` chooses which  kind is counted: false, the default, counts the ones covered by the free monthly allowance, and true  counts the ones charged to the portal wallet.  The period defaults to the current calendar month - `from` becomes the first day of the month at  00:00 UTC and `to` becomes the moment of the call. Both bounds are UTC and inclusive, and a `from`  later than `to` is rejected. Called with no parameters at all, this returns exactly the figure the  free monthly allowance is measured against.  The count is over history records rather than over stored archives, so it includes backups that have  already been deleted; use `GET api/2.0/backup/getbackuphistory` to see what can still be restored.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-count/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Backup::BackupApi.new
opts = {
  from: Time.parse('2026-03-01T00:00:00Z'), # Time | The start of the period, in UTC and inclusive. It defaults to the first day of the current calendar  month at 00:00 UTC, and it has to be no later than `to`.
  to: Time.parse('2026-03-31T23:59:59Z'), # Time | The end of the period, in UTC and inclusive. It defaults to the moment of the call.
  paid: false # Boolean | Counts the backups charged to the portal wallet when true, and the ones covered by the free monthly  allowance when false, which is the default. It is read only by  `GET api/2.0/backup/getbackupscount` and is ignored by  `GET api/2.0/backup/getbackupscountbypaid`, which always reports both.
}

begin
  # Get the number of backups
  result = api_instance.get_backups_count(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->get_backups_count: #{e}"
end
```

#### Using the get_backups_count_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32Wrapper>, Integer, Hash)> get_backups_count_with_http_info(opts)

```ruby
begin
  # Get the number of backups
  data, status_code, headers = api_instance.get_backups_count_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32Wrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->get_backups_count_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Time** | The start of the period, in UTC and inclusive. It defaults to the first day of the current calendar  month at 00:00 UTC, and it has to be no later than `to`. | [optional] |
| **to** | **Time** | The end of the period, in UTC and inclusive. It defaults to the moment of the call. | [optional] |
| **paid** | **Boolean** | Counts the backups charged to the portal wallet when true, and the ones covered by the free monthly  allowance when false, which is the default. It is read only by  `GET api/2.0/backup/getbackupscount` and is ignored by  `GET api/2.0/backup/getbackupscountbypaid`, which always reports both. | [optional] |

### Return type

[**Int32Wrapper**](Int32Wrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_backups_counts

> <BackupsCountResultWrapper> get_backups_counts(opts)

Get free and paid backup counts

Counts the backups of the current portal created within a period and splits the result into the ones  covered by the free monthly allowance and the ones charged to the portal wallet, which saves calling  `GET api/2.0/backup/getbackupscount` twice.  The `paid` query parameter is accepted but not read here: the answer always carries both figures. The  period behaves as it does for `GET api/2.0/backup/getbackupscount` - it defaults to the current  calendar month, both bounds are UTC and inclusive, and a `from` later than `to` is rejected.  The counts are over history records rather than over stored archives, so they include backups that  have already been deleted.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-counts/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Backup::BackupApi.new
opts = {
  from: Time.parse('2026-03-01T00:00:00Z'), # Time | The start of the period, in UTC and inclusive. It defaults to the first day of the current calendar  month at 00:00 UTC, and it has to be no later than `to`.
  to: Time.parse('2026-03-31T23:59:59Z'), # Time | The end of the period, in UTC and inclusive. It defaults to the moment of the call.
  paid: false # Boolean | Counts the backups charged to the portal wallet when true, and the ones covered by the free monthly  allowance when false, which is the default. It is read only by  `GET api/2.0/backup/getbackupscount` and is ignored by  `GET api/2.0/backup/getbackupscountbypaid`, which always reports both.
}

begin
  # Get free and paid backup counts
  result = api_instance.get_backups_counts(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->get_backups_counts: #{e}"
end
```

#### Using the get_backups_counts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupsCountResultWrapper>, Integer, Hash)> get_backups_counts_with_http_info(opts)

```ruby
begin
  # Get free and paid backup counts
  data, status_code, headers = api_instance.get_backups_counts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupsCountResultWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->get_backups_counts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Time** | The start of the period, in UTC and inclusive. It defaults to the first day of the current calendar  month at 00:00 UTC, and it has to be no later than `to`. | [optional] |
| **to** | **Time** | The end of the period, in UTC and inclusive. It defaults to the moment of the call. | [optional] |
| **paid** | **Boolean** | Counts the backups charged to the portal wallet when true, and the ones covered by the free monthly  allowance when false, which is the default. It is read only by  `GET api/2.0/backup/getbackupscount` and is ignored by  `GET api/2.0/backup/getbackupscountbypaid`, which always reports both. | [optional] |

### Return type

[**BackupsCountResultWrapper**](BackupsCountResultWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_backups_service_state

> <BackupServiceStateWrapper> get_backups_service_state

Check whether backups are enabled

Reports whether the paid backup service is switched on for the current portal. This is a wallet  setting of the portal, not the health of the backup service or of the worker that runs the jobs, so a  false answer does not mean backups are unavailable and a true one does not mean they are working.  While it is on, backups beyond the free monthly allowance are charged to the portal wallet. While it  is off and that allowance is used up, `POST api/2.0/backup/startbackup` and  `POST api/2.0/backup/createbackupschedule` answer 402.  Starting a backup once the allowance is used up switches the service on by itself, as soon as a  billing session opens for the portal, so this flag can change without anybody editing the portal  settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backups-service-state/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Backup::BackupApi.new

begin
  # Check whether backups are enabled
  result = api_instance.get_backups_service_state
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->get_backups_service_state: #{e}"
end
```

#### Using the get_backups_service_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupServiceStateWrapper>, Integer, Hash)> get_backups_service_state_with_http_info

```ruby
begin
  # Check whether backups are enabled
  data, status_code, headers = api_instance.get_backups_service_state_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupServiceStateWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->get_backups_service_state_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BackupServiceStateWrapper**](BackupServiceStateWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_restore_progress

> <BackupProgressWrapper> get_restore_progress(opts)

Get the restoring progress

Reports the state of the restoring job, and is the operation to poll after  `POST api/2.0/backup/startrestore`. It is the only operation of this service that needs no  authorization and the only one that stays reachable while the portal is being restored, which is  exactly the state a client polls it in - every other operation of the service answers 403 then.  `dump` is read as three states rather than as a flag: omit it to get whichever restoring job concerns  this portal, including a server-wide one, pass false to get the job of this portal only, and pass true  to get the server-wide job; on a portal that is not a standalone installation the value is forced to  false. When there is no matching job the call still answers 200, but the body carries no `response`  member at all.  `isCompleted` is the field to poll, a non-empty `error` is the only report of a failure, and neither  `link` nor `warning` is ever filled in for a restoring job.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-restore-progress/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Backup::BackupApi.new
opts = {
  dump: false # Boolean | Which restoring job to look for, read as three states rather than as a flag: leave it out for  whichever job concerns this portal, including a server-wide one, send false for the job of this  portal alone, and send true for the server-wide job. On a portal that is not a standalone  installation the value is forced to false.
}

begin
  # Get the restoring progress
  result = api_instance.get_restore_progress(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->get_restore_progress: #{e}"
end
```

#### Using the get_restore_progress_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupProgressWrapper>, Integer, Hash)> get_restore_progress_with_http_info(opts)

```ruby
begin
  # Get the restoring progress
  data, status_code, headers = api_instance.get_restore_progress_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupProgressWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->get_restore_progress_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dump** | **Boolean** | Which restoring job to look for, read as three states rather than as a flag: leave it out for  whichever job concerns this portal, including a server-wide one, send false for the job of this  portal alone, and send true for the server-wide job. On a portal that is not a standalone  installation the value is forced to false. | [optional] |

### Return type

[**BackupProgressWrapper**](BackupProgressWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_backup

> <BackupProgressWrapper> start_backup(opts)

Start the backup

Queues a backup of the current portal and returns straight away: the archive itself is written by the  separate backup worker service, which picks the job up from an integration event, so the response  reports a progress of 0 and the `Created` status, and its `taskId` is the handle to poll with  `GET api/2.0/backup/getbackupprogress`. The caller needs the portal settings permission, and  `dump` - a backup of the whole server instead of this one portal - additionally requires the space  access permission and is rejected outside a standalone installation.  The keys expected in `storageParams` depend on `storageType`: `Documents` takes an integer `folderId`,  `ThridpartyDocuments` takes a provider-specific non-integer `folderId`, `Local` takes `filePath` and  works on a standalone installation only, `ThirdPartyConsumer` takes `module` together with the settings  of that consumer, and `DataStore` takes no keys at all; the `subdir` key is added by the operation  itself and must not be sent.  A portal that has already used up the free backups of the current calendar month is charged through the  paid backup service instead, and the call is rejected with 402 when that service is not available to it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-backup/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Backup::BackupApi.new
opts = {
  backup_dto: DocspaceApiSdk::BackupDto.new # BackupDto | 
}

begin
  # Start the backup
  result = api_instance.start_backup(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->start_backup: #{e}"
end
```

#### Using the start_backup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupProgressWrapper>, Integer, Hash)> start_backup_with_http_info(opts)

```ruby
begin
  # Start the backup
  data, status_code, headers = api_instance.start_backup_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupProgressWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->start_backup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_dto** | [**BackupDto**](BackupDto.md) |  | [optional] |

### Return type

[**BackupProgressWrapper**](BackupProgressWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_backup_restore

> <BackupProgressWrapper> start_backup_restore(opts)

Start the restoring process

Queues the restoring of the current portal from a backup and returns straight away: the work itself is  done by the separate backup worker service, which picks the job up from an integration event, so the  response reports a progress of 0 and the `Created` status, and the returned `taskId` is the handle to  poll with `GET api/2.0/backup/getrestoreprogress` - the one operation of this service that stays  reachable while the portal is being restored, because every other one answers 403 in that state.  The source is given either by `backupId`, which is the ID of a record from  `GET api/2.0/backup/getbackuphistory`, or, when `backupId` is not a GUID, by the `filePath` key of  `storageParams` together with the matching `storageType`; an all-zero GUID is parsed as a GUID and  therefore reaches neither branch.  The caller needs the portal settings permission, restoring has to be allowed by the pricing plan of a  portal that is not a standalone installation, and `dump` - restoring the whole server rather than this  one portal - additionally requires the space access permission.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-backup-restore/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Backup::BackupApi.new
opts = {
  backup_restore_dto: DocspaceApiSdk::BackupRestoreDto.new({backup_id: '11111111-1111-1111-1111-111111111111'}) # BackupRestoreDto | 
}

begin
  # Start the restoring process
  result = api_instance.start_backup_restore(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->start_backup_restore: #{e}"
end
```

#### Using the start_backup_restore_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupProgressWrapper>, Integer, Hash)> start_backup_restore_with_http_info(opts)

```ruby
begin
  # Start the restoring process
  data, status_code, headers = api_instance.start_backup_restore_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupProgressWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Backup::BackupApi->start_backup_restore_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_restore_dto** | [**BackupRestoreDto**](BackupRestoreDto.md) |  | [optional] |

### Return type

[**BackupProgressWrapper**](BackupProgressWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

