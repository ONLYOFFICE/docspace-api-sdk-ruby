# DocspaceApiSdk::BackupApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_backup**](BackupApi.md#cancel_backup) | **POST** /api/2.0/backup/cancelbackup | Cancel current backup |
| [**create_backup_schedule**](BackupApi.md#create_backup_schedule) | **POST** /api/2.0/backup/createbackupschedule | Create the backup schedule |
| [**delete_backup**](BackupApi.md#delete_backup) | **DELETE** /api/2.0/backup/deletebackup/{id} | Delete the backup |
| [**delete_backup_history**](BackupApi.md#delete_backup_history) | **DELETE** /api/2.0/backup/deletebackuphistory | Delete the backup history |
| [**delete_backup_schedule**](BackupApi.md#delete_backup_schedule) | **DELETE** /api/2.0/backup/deletebackupschedule | Delete the backup schedule |
| [**get_backup_history**](BackupApi.md#get_backup_history) | **GET** /api/2.0/backup/getbackuphistory | Get the backup history |
| [**get_backup_progress**](BackupApi.md#get_backup_progress) | **GET** /api/2.0/backup/getbackupprogress | Get the backup progress |
| [**get_backup_schedule**](BackupApi.md#get_backup_schedule) | **GET** /api/2.0/backup/getbackupschedule | Get the backup schedule |
| [**get_backups_count**](BackupApi.md#get_backups_count) | **GET** /api/2.0/backup/getbackupscount | Get the number of backups |
| [**get_backups_counts**](BackupApi.md#get_backups_counts) | **GET** /api/2.0/backup/getbackupscountbypaid | Get the number of free and paid backups |
| [**get_backups_service_state**](BackupApi.md#get_backups_service_state) | **GET** /api/2.0/backup/getservicestate | Get the backup service state |
| [**get_restore_progress**](BackupApi.md#get_restore_progress) | **GET** /api/2.0/backup/getrestoreprogress | Get the restoring progress |
| [**start_backup**](BackupApi.md#start_backup) | **POST** /api/2.0/backup/startbackup | Start the backup |
| [**start_backup_restore**](BackupApi.md#start_backup_restore) | **POST** /api/2.0/backup/startrestore | Start the restoring process |


## cancel_backup

> <BooleanWrapper> cancel_backup

Cancel current backup

Cancel current backup.

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
  # Cancel current backup
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
  # Cancel current backup
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

Creates the backup schedule of the current portal with the parameters specified in the request.

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

Deletes the backup with the ID specified in the request.

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
id = '00000000-0000-0000-0000-000000000000' # String | The backup ID.

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
| **id** | **String** | The backup ID. |  |

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

Deletes the backup history from the current portal.

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
  dump: true # Boolean | Specifies if a dump will be created or not.
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
| **dump** | **Boolean** | Specifies if a dump will be created or not. | [optional] |

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

Deletes the backup schedule of the current portal.

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
  dump: true # Boolean | Specifies if a dump will be created or not.
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
| **dump** | **Boolean** | Specifies if a dump will be created or not. | [optional] |

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

Returns the history of the started backup.

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
  dump: true # Boolean | Specifies if a dump will be created or not.
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
| **dump** | **Boolean** | Specifies if a dump will be created or not. | [optional] |

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

Returns the progress of the started backup.

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
  dump: true # Boolean | Specifies if a dump will be created or not.
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
| **dump** | **Boolean** | Specifies if a dump will be created or not. | [optional] |

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

Returns the backup schedule of the current portal.

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
  dump: true # Boolean | Specifies if a dump will be created or not.
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
| **dump** | **Boolean** | Specifies if a dump will be created or not. | [optional] |

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

Returns the number of backups for a period of time. The default is the current calendar month.

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
  from: Time.parse('2025-01-01T00:00:00Z'), # Time | The from date.
  to: Time.parse('2025-12-31T23:59:59Z'), # Time | The to date.
  paid: false # Boolean | Specifies if the backups are paid or not.
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
| **from** | **Time** | The from date. | [optional] |
| **to** | **Time** | The to date. | [optional] |
| **paid** | **Boolean** | Specifies if the backups are paid or not. | [optional] |

### Return type

[**Int32Wrapper**](Int32Wrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_backups_counts

> <BackupsCountResultWrapper> get_backups_counts(opts)

Get the number of free and paid backups

Returns the number of free and paid backups for a period of time. The default is the current calendar month.

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
  from: Time.parse('2025-01-01T00:00:00Z'), # Time | The from date.
  to: Time.parse('2025-12-31T23:59:59Z'), # Time | The to date.
  paid: false # Boolean | Specifies if the backups are paid or not.
}

begin
  # Get the number of free and paid backups
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
  # Get the number of free and paid backups
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
| **from** | **Time** | The from date. | [optional] |
| **to** | **Time** | The to date. | [optional] |
| **paid** | **Boolean** | Specifies if the backups are paid or not. | [optional] |

### Return type

[**BackupsCountResultWrapper**](BackupsCountResultWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_backups_service_state

> <BackupServiceStateWrapper> get_backups_service_state

Get the backup service state

Returns the backup service state.

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
  # Get the backup service state
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
  # Get the backup service state
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

Returns the progress of the started restoring process.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-restore-progress/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Backup::BackupApi.new
opts = {
  dump: false # Boolean | Specifies if a dump will be created or not.
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
| **dump** | **Boolean** | Specifies if a dump will be created or not. | [optional] |

### Return type

[**BackupProgressWrapper**](BackupProgressWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_backup

> <BackupProgressWrapper> start_backup(opts)

Start the backup

Starts the backup of the current portal with the parameters specified in the request.

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

Starts the data restoring process of the current portal with the parameters specified in the request.

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
  backup_restore_dto: DocspaceApiSdk::BackupRestoreDto.new({backup_id: '00000000-0000-0000-0000-000000000000'}) # BackupRestoreDto | 
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

