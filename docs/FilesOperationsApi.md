# DocspaceApiSdk::FilesOperationsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**abort_upload_session**](FilesOperationsApi.md#abort_upload_session) | **DELETE** /api/2.0/files/{folderId}/session/{sessionId} | Abort an upload session |
| [**abort_upload_session_third_party**](FilesOperationsApi.md#abort_upload_session_third_party) | **DELETE** /api/2.0/files/{folderId}/session/{sessionId} | Abort an upload session (third-party storage) |
| [**add_favorites**](FilesOperationsApi.md#add_favorites) | **POST** /api/2.0/files/favorites | Add favorite files and folders |
| [**bulk_download**](FilesOperationsApi.md#bulk_download) | **PUT** /api/2.0/files/fileops/bulkdownload | Bulk download |
| [**check_conversion_status**](FilesOperationsApi.md#check_conversion_status) | **GET** /api/2.0/files/file/{fileId}/checkconversion | Get conversion status |
| [**check_conversion_status_third_party**](FilesOperationsApi.md#check_conversion_status_third_party) | **GET** /api/2.0/files/file/{fileId}/checkconversion | Get conversion status (third-party storage) |
| [**check_move_or_copy_batch_items**](FilesOperationsApi.md#check_move_or_copy_batch_items) | **GET** /api/2.0/files/fileops/move | Check move or copy conflicts |
| [**check_move_or_copy_dest_folder**](FilesOperationsApi.md#check_move_or_copy_dest_folder) | **GET** /api/2.0/files/fileops/checkdestfolder | Check the destination folder |
| [**copy_batch_items**](FilesOperationsApi.md#copy_batch_items) | **PUT** /api/2.0/files/fileops/copy | Copy files and folders |
| [**create_upload_session**](FilesOperationsApi.md#create_upload_session) | **POST** /api/2.0/files/{folderId}/upload/create_session | Chunked upload |
| [**create_upload_session_third_party**](FilesOperationsApi.md#create_upload_session_third_party) | **POST** /api/2.0/files/{folderId}/upload/create_session | Chunked upload (third-party storage) |
| [**create_upload_session_in_folder**](FilesOperationsApi.md#create_upload_session_in_folder) | **POST** /api/2.0/files/{folderId}/session | Create an upload session |
| [**create_upload_session_in_folder_third_party**](FilesOperationsApi.md#create_upload_session_in_folder_third_party) | **POST** /api/2.0/files/{folderId}/session | Create an upload session (third-party storage) |
| [**delete_batch_items**](FilesOperationsApi.md#delete_batch_items) | **PUT** /api/2.0/files/fileops/delete | Delete files and folders |
| [**delete_favorites_from_body**](FilesOperationsApi.md#delete_favorites_from_body) | **DELETE** /api/2.0/files/favorites | Delete favorite files and folders |
| [**delete_file_versions**](FilesOperationsApi.md#delete_file_versions) | **PUT** /api/2.0/files/fileops/deleteversion | Delete file versions |
| [**duplicate_batch_items**](FilesOperationsApi.md#duplicate_batch_items) | **PUT** /api/2.0/files/fileops/duplicate | Duplicate files and folders |
| [**empty_trash**](FilesOperationsApi.md#empty_trash) | **PUT** /api/2.0/files/fileops/emptytrash | Empty the Trash folder |
| [**finalize_session**](FilesOperationsApi.md#finalize_session) | **PUT** /api/2.0/files/{folderId}/session/{sessionId}/finalize | Finalize an upload session |
| [**finalize_session_third_party**](FilesOperationsApi.md#finalize_session_third_party) | **PUT** /api/2.0/files/{folderId}/session/{sessionId}/finalize | Finalize an upload session (third-party storage) |
| [**get_operation_statuses**](FilesOperationsApi.md#get_operation_statuses) | **GET** /api/2.0/files/fileops | Get active file operations |
| [**get_operation_statuses_by_type**](FilesOperationsApi.md#get_operation_statuses_by_type) | **GET** /api/2.0/files/fileops/{operationType} | Get file operations by type |
| [**mark_as_read**](FilesOperationsApi.md#mark_as_read) | **PUT** /api/2.0/files/fileops/markasread | Mark files and folders as read |
| [**move_batch_items**](FilesOperationsApi.md#move_batch_items) | **PUT** /api/2.0/files/fileops/move | Move files and folders |
| [**start_file_conversion**](FilesOperationsApi.md#start_file_conversion) | **PUT** /api/2.0/files/file/{fileId}/checkconversion | Start file conversion |
| [**start_file_conversion_third_party**](FilesOperationsApi.md#start_file_conversion_third_party) | **PUT** /api/2.0/files/file/{fileId}/checkconversion | Start file conversion (third-party storage) |
| [**terminate_tasks**](FilesOperationsApi.md#terminate_tasks) | **PUT** /api/2.0/files/fileops/terminate/{id} | Cancel file operations |
| [**update_file_comment**](FilesOperationsApi.md#update_file_comment) | **PUT** /api/2.0/files/file/{fileId}/comment | Update a comment |
| [**update_file_comment_third_party**](FilesOperationsApi.md#update_file_comment_third_party) | **PUT** /api/2.0/files/file/{fileId}/comment | Update a comment (third-party storage) |
| [**upload_async_session**](FilesOperationsApi.md#upload_async_session) | **POST** /api/2.0/files/{folderId}/session/{sessionId}/upload | Upload a numbered chunk |
| [**upload_async_session_third_party**](FilesOperationsApi.md#upload_async_session_third_party) | **POST** /api/2.0/files/{folderId}/session/{sessionId}/upload | Upload a numbered chunk (third-party storage) |
| [**upload_session**](FilesOperationsApi.md#upload_session) | **POST** /api/2.0/files/{folderId}/session/{sessionId} | Upload the next chunk |
| [**upload_session_third_party**](FilesOperationsApi.md#upload_session_third_party) | **POST** /api/2.0/files/{folderId}/session/{sessionId} | Upload the next chunk (third-party storage) |


## abort_upload_session

> abort_upload_session(session_id, folder_id)

Abort an upload session

Cancels a chunked upload opened with `POST api/2.0/files/{folderId}/session` and discards the parts already  received, so nothing of it reaches the folder. The session is found by the id in the path alone: the folder  segment is not matched against it, and neither is the account that opened it, which makes the id the only  secret protecting the transfer. The call is destructive and is not safe to repeat, because the record is gone  afterwards: a second attempt, a session already closed by  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize` and a session that expired after twelve hours of  silence all fail rather than answer as missing. Finalizing removes the session too, so there is nothing left  to abort once the file exists. The answer carries no body. An upload that is simply abandoned needs no call at  all, since the session and its buffered parts are dropped when it expires.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/abort-upload-session/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
session_id = '9f1c7a2b4d3e4f5a8b6c0d1e2f3a4b5c' # String | The session to cancel, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own.
folder_id = 1 # Integer | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.

begin
  # Abort an upload session
  api_instance.abort_upload_session(session_id, folder_id)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->abort_upload_session: #{e}"
end
```

#### Using the abort_upload_session_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> abort_upload_session_with_http_info(session_id, folder_id)

```ruby
begin
  # Abort an upload session
  data, status_code, headers = api_instance.abort_upload_session_with_http_info(session_id, folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->abort_upload_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | The session to cancel, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own. |  |
| **folder_id** | **Integer** | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## abort_upload_session_third_party

> abort_upload_session_third_party(session_id, folder_id)

Abort an upload session (third-party storage)

Cancels a chunked upload opened with `POST api/2.0/files/{folderId}/session` and discards the parts already  received, so nothing of it reaches the folder. The session is found by the id in the path alone: the folder  segment is not matched against it, and neither is the account that opened it, which makes the id the only  secret protecting the transfer. The call is destructive and is not safe to repeat, because the record is gone  afterwards: a second attempt, a session already closed by  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize` and a session that expired after twelve hours of  silence all fail rather than answer as missing. Finalizing removes the session too, so there is nothing left  to abort once the file exists. The answer carries no body. An upload that is simply abandoned needs no call at  all, since the session and its buffered parts are dropped when it expires.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/abort-upload-session-third-party/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
session_id = '9f1c7a2b4d3e4f5a8b6c0d1e2f3a4b5c' # String | The session to cancel, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own.
folder_id = '1' # String | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.

begin
  # Abort an upload session (third-party storage)
  api_instance.abort_upload_session_third_party(session_id, folder_id)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->abort_upload_session_third_party: #{e}"
end
```

#### Using the abort_upload_session_third_party_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> abort_upload_session_third_party_with_http_info(session_id, folder_id)

```ruby
begin
  # Abort an upload session (third-party storage)
  data, status_code, headers = api_instance.abort_upload_session_third_party_with_http_info(session_id, folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->abort_upload_session_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_id** | **String** | The session to cancel, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own. |  |
| **folder_id** | **String** | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## add_favorites

> <BooleanWrapper> add_favorites(opts)

Add favorite files and folders

Marks the listed files and folders as favorites for the calling account. The favorite list is personal:  nothing changes for other members, and the entries stay where they are stored. Read access to each item is  enough, so a room member with view-only rights and a guest may call it. Items the caller cannot read, ids that  do not exist and encrypted files of a private room are skipped without a word, and the answer is `true` even  when nothing was marked, so read the outcome back from `GET api/2.0/files/@favorites` instead of trusting it.  Numeric ids address entries stored in the portal itself, string ids entries on a connected third-party  account, and both kinds may be sent in one request. The call is mutating but safe to repeat: an item already  marked stays listed once. An entry moved to the Trash keeps its mark and is left out of the listing until it  is restored. `returnSingleOperation` arrives with the shared body and does nothing here. Use  `DELETE api/2.0/files/favorites` to undo, or `GET api/2.0/files/favorites/{fileId}` for a single file.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-favorites/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
opts = {
  base_batch_request_dto: DocspaceApiSdk::BaseBatchRequestDto.new # BaseBatchRequestDto | 
}

begin
  # Add favorite files and folders
  result = api_instance.add_favorites(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->add_favorites: #{e}"
end
```

#### Using the add_favorites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> add_favorites_with_http_info(opts)

```ruby
begin
  # Add favorite files and folders
  data, status_code, headers = api_instance.add_favorites_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->add_favorites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_batch_request_dto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## bulk_download

> <FileOperationArrayWrapper> bulk_download(opts)

Bulk download

Queues a background job that packs the requested files and folders into a single archive, and answers with the  caller's download operations, including the one just started. The archive is not ready when the response  arrives: poll `GET api/2.0/files/fileops` until the operation reports `finished`, then take the address of the  archive from its `url`. Items listed in `fileConvertIds` are converted to the format named there before they  are packed, while the items of `fileIds` are packed as they are. Read access to every listed item is required:  an item the caller may not read fails the whole call with 403, and an id that resolves to nothing is answered  as missing, so filter the selection beforehand. Only one download at a time is allowed per caller, and a  second call made while the first is still running is refused with 403 as well. An empty selection queues  nothing and simply answers with the operations that are already there. An anonymous caller may use the call  for the items covered by the external link they hold.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/bulk-download/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::Files::OperationsApi.new
opts = {
  download_request_dto: DocspaceApiSdk::DownloadRequestDto.new # DownloadRequestDto | 
}

begin
  # Bulk download
  result = api_instance.bulk_download(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->bulk_download: #{e}"
end
```

#### Using the bulk_download_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationArrayWrapper>, Integer, Hash)> bulk_download_with_http_info(opts)

```ruby
begin
  # Bulk download
  data, status_code, headers = api_instance.bulk_download_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->bulk_download_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **download_request_dto** | [**DownloadRequestDto**](DownloadRequestDto.md) |  | [optional] |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## check_conversion_status

> <ConversationResultArrayWrapper> check_conversion_status(file_id, opts)

Get conversion status

Reports how far the conversion of a file has got, as a list that holds one entry while the portal still knows  about that conversion and nothing once it is over. Read `progress`, which counts from 0 to 100, `error` for  the reason a conversion failed, and `file`, which carries the converted file as soon as it exists. Queue the  conversion with `PUT api/2.0/files/file/{fileId}/checkconversion` and poll this operation until the entry  reaches 100 or disappears: a finished entry is handed out once and then dropped, and an entry whose conversion  stopped is discarded a few minutes later, so an empty list means either already reported or never started  rather than an error. The same empty list is the answer for an identifier no file matches. Passing  `start=true` starts the conversion as well, with the format from the portal settings and no password, which  makes that one flag mutating; without it the operation is read-only. The caller needs read access to the file,  and anyone else is refused.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
file_id = 1 # Integer | The file whose conversion is asked about.
opts = {
  start: false # Boolean | Whether to start the conversion as well: `true` queues it with the default output format and no password,  `false` only reports what the portal already knows.
}

begin
  # Get conversion status
  result = api_instance.check_conversion_status(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->check_conversion_status: #{e}"
end
```

#### Using the check_conversion_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversationResultArrayWrapper>, Integer, Hash)> check_conversion_status_with_http_info(file_id, opts)

```ruby
begin
  # Get conversion status
  data, status_code, headers = api_instance.check_conversion_status_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversationResultArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->check_conversion_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file whose conversion is asked about. |  |
| **start** | **Boolean** | Whether to start the conversion as well: `true` queues it with the default output format and no password,  `false` only reports what the portal already knows. | [optional] |

### Return type

[**ConversationResultArrayWrapper**](ConversationResultArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_conversion_status_third_party

> <ConversationResultArrayWrapper> check_conversion_status_third_party(file_id, opts)

Get conversion status (third-party storage)

Reports how far the conversion of a file has got, as a list that holds one entry while the portal still knows  about that conversion and nothing once it is over. Read `progress`, which counts from 0 to 100, `error` for  the reason a conversion failed, and `file`, which carries the converted file as soon as it exists. Queue the  conversion with `PUT api/2.0/files/file/{fileId}/checkconversion` and poll this operation until the entry  reaches 100 or disappears: a finished entry is handed out once and then dropped, and an entry whose conversion  stopped is discarded a few minutes later, so an empty list means either already reported or never started  rather than an error. The same empty list is the answer for an identifier no file matches. Passing  `start=true` starts the conversion as well, with the format from the portal settings and no password, which  makes that one flag mutating; without it the operation is read-only. The caller needs read access to the file,  and anyone else is refused.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-conversion-status-third-party/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
file_id = '1' # String | The file whose conversion is asked about.
opts = {
  start: false # Boolean | Whether to start the conversion as well: `true` queues it with the default output format and no password,  `false` only reports what the portal already knows.
}

begin
  # Get conversion status (third-party storage)
  result = api_instance.check_conversion_status_third_party(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->check_conversion_status_third_party: #{e}"
end
```

#### Using the check_conversion_status_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversationResultArrayWrapper>, Integer, Hash)> check_conversion_status_third_party_with_http_info(file_id, opts)

```ruby
begin
  # Get conversion status (third-party storage)
  data, status_code, headers = api_instance.check_conversion_status_third_party_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversationResultArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->check_conversion_status_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file whose conversion is asked about. |  |
| **start** | **Boolean** | Whether to start the conversion as well: `true` queues it with the default output format and no password,  `false` only reports what the portal already knows. | [optional] |

### Return type

[**ConversationResultArrayWrapper**](ConversationResultArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_move_or_copy_batch_items

> <FileEntryBaseArrayWrapper> check_move_or_copy_batch_items(opts)

Check move or copy conflicts

Reports which of the requested files and folders already have a same-named entry in `destFolderId`, so that  the clash can be settled before the move or the copy is started. Nothing is moved, copied or changed by the  call, although the address is shared with `PUT api/2.0/files/fileops/move`: the answer is the part of the  request that clashes, and an empty array means the batch would go through without one. The  `conflictResolveType` of the request is not taken into account — clashing items are reported whatever it says  — and encrypted files are left out of the report. A source id that resolves to nothing is not an error and is  passed over. The caller needs create access to the destination: an archived room and a room the caller cannot  write to are refused with 403, a destination that does not exist is answered as missing, and a request without  `destFolderId` is rejected as an invalid request. To learn whether the destination accepts the files at all  use `GET api/2.0/files/fileops/checkdestfolder`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-batch-items/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
opts = {
  in_dto: DocspaceApiSdk::BatchRequestDto.new # BatchRequestDto | The files and folders to move or copy, the folder they go to, and the way name clashes are settled.
}

begin
  # Check move or copy conflicts
  result = api_instance.check_move_or_copy_batch_items(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->check_move_or_copy_batch_items: #{e}"
end
```

#### Using the check_move_or_copy_batch_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileEntryBaseArrayWrapper>, Integer, Hash)> check_move_or_copy_batch_items_with_http_info(opts)

```ruby
begin
  # Check move or copy conflicts
  data, status_code, headers = api_instance.check_move_or_copy_batch_items_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileEntryBaseArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->check_move_or_copy_batch_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **in_dto** | **BatchRequestDto** | The files and folders to move or copy, the folder they go to, and the way name clashes are settled. | [optional] |

### Return type

[**FileEntryBaseArrayWrapper**](FileEntryBaseArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_move_or_copy_dest_folder

> <CheckDestFolderWrapper> check_move_or_copy_dest_folder(opts)

Check the destination folder

Reports whether the destination folder accepts the listed files, before a move or a copy is started. Only  `fileIds` and `destFolderId` are read from the request: `result` says whether all of the files are accepted,  only some of them or none, and `files` names the ones that are. The check is about what the destination allows  to be stored in it rather than about name clashes — everywhere except a form-filling room every file is  accepted, while a form-filling room accepts only PDF forms, so a text document offered to one comes back as  none accepted. The caller needs create access to the destination, so a room the caller cannot write to and an  archived room are refused with 403, a destination that does not exist is answered as missing, and a request  without `destFolderId` is rejected as an invalid request. Folder ids and the copying options of the request  play no part here. The call changes nothing; for same-named entries at the destination use  `GET api/2.0/files/fileops/move`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-move-or-copy-dest-folder/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
opts = {
  in_dto: DocspaceApiSdk::BatchRequestDto.new # BatchRequestDto | The files and folders to move or copy, the folder they go to, and the way name clashes are settled.
}

begin
  # Check the destination folder
  result = api_instance.check_move_or_copy_dest_folder(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->check_move_or_copy_dest_folder: #{e}"
end
```

#### Using the check_move_or_copy_dest_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckDestFolderWrapper>, Integer, Hash)> check_move_or_copy_dest_folder_with_http_info(opts)

```ruby
begin
  # Check the destination folder
  data, status_code, headers = api_instance.check_move_or_copy_dest_folder_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckDestFolderWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->check_move_or_copy_dest_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **in_dto** | **BatchRequestDto** | The files and folders to move or copy, the folder they go to, and the way name clashes are settled. | [optional] |

### Return type

[**CheckDestFolderWrapper**](CheckDestFolderWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## copy_batch_items

> <FileOperationArrayWrapper> copy_batch_items(opts)

Copy files and folders

Queues a background job that copies the requested files and folders into `destFolderId`, leaving the originals  where they are, and answers with the caller's move and copy operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`; its `files` and `folders` then name what  was produced. Before starting, `GET api/2.0/files/fileops/move` reports which items already have a same-named  entry at the destination and `conflictResolveType` decides what happens to them, while  `GET api/2.0/files/fileops/checkdestfolder` reports whether the destination accepts the files at all. The  caller needs create access to the destination — room manager or content-creator rights inside a room — and  read access to every source item; anything less is refused with 403. With `content=true` each listed folder is  replaced by its own files and subfolders, so the folder itself is not recreated at the destination. An empty  selection queues nothing and answers with the operations that are already there. To remove the originals  instead use `PUT api/2.0/files/fileops/move`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-batch-items/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
opts = {
  batch_request_dto: DocspaceApiSdk::BatchRequestDto.new # BatchRequestDto | 
}

begin
  # Copy files and folders
  result = api_instance.copy_batch_items(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->copy_batch_items: #{e}"
end
```

#### Using the copy_batch_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationArrayWrapper>, Integer, Hash)> copy_batch_items_with_http_info(opts)

```ruby
begin
  # Copy files and folders
  data, status_code, headers = api_instance.copy_batch_items_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->copy_batch_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_request_dto** | [**BatchRequestDto**](BatchRequestDto.md) |  | [optional] |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_upload_session

> <ChunkedUploadSessionResponseWrapperWrapper> create_upload_session(folder_id, session_request)

Chunked upload

Deprecated in favour of `POST api/2.0/files/{folderId}/session`, which opens the same session and returns it  without the success envelope used here; new callers should go there. Reserves a chunked upload of a file in  the folder named by the path: the title comes from `fileName`, the declared payload size from `fileSize`, and  the answer carries the session id every later call quotes, the address of the standalone chunk handler, the  moment an idle session is dropped and the reserved byte count. No content is stored yet. Send the payload as  multipart parts to `POST api/2.0/files/{folderId}/session/{sessionId}/upload`, keeping each part within  `chunkUploadSize` from `GET api/2.0/files/settings`, then close the session with  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller needs the right to add content to the  target folder, which room managers and content creators have and readers, editors and guests do not: they get  403, as does a section root such as Rooms or Archive, while an unknown folder is answered as missing. A  payload above the portal limit for chunked uploads is refused before the session exists.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
folder_id = 1 # Integer | The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
session_request = DocspaceApiSdk::SessionRequest.new({file_name: 'My Document.docx'}) # SessionRequest | The file the session is opened for, and how a clash with an existing name is settled.

begin
  # Chunked upload
  result = api_instance.create_upload_session(folder_id, session_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->create_upload_session: #{e}"
end
```

#### Using the create_upload_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkedUploadSessionResponseWrapperWrapper>, Integer, Hash)> create_upload_session_with_http_info(folder_id, session_request)

```ruby
begin
  # Chunked upload
  data, status_code, headers = api_instance.create_upload_session_with_http_info(folder_id, session_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkedUploadSessionResponseWrapperWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->create_upload_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not. |  |
| **session_request** | [**SessionRequest**](SessionRequest.md) | The file the session is opened for, and how a clash with an existing name is settled. |  |

### Return type

[**ChunkedUploadSessionResponseWrapperWrapper**](ChunkedUploadSessionResponseWrapperWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_upload_session_third_party

> <ThirdPartyChunkedUploadSessionResponseWrapperWrapper> create_upload_session_third_party(folder_id, session_request)

Chunked upload (third-party storage)

Deprecated in favour of `POST api/2.0/files/{folderId}/session`, which opens the same session and returns it  without the success envelope used here; new callers should go there. Reserves a chunked upload of a file in  the folder named by the path: the title comes from `fileName`, the declared payload size from `fileSize`, and  the answer carries the session id every later call quotes, the address of the standalone chunk handler, the  moment an idle session is dropped and the reserved byte count. No content is stored yet. Send the payload as  multipart parts to `POST api/2.0/files/{folderId}/session/{sessionId}/upload`, keeping each part within  `chunkUploadSize` from `GET api/2.0/files/settings`, then close the session with  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller needs the right to add content to the  target folder, which room managers and content creators have and readers, editors and guests do not: they get  403, as does a section root such as Rooms or Archive, while an unknown folder is answered as missing. A  payload above the portal limit for chunked uploads is refused before the session exists.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-third-party/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
folder_id = '1' # String | The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
session_request = DocspaceApiSdk::SessionRequest.new({file_name: 'My Document.docx'}) # SessionRequest | The file the session is opened for, and how a clash with an existing name is settled.

begin
  # Chunked upload (third-party storage)
  result = api_instance.create_upload_session_third_party(folder_id, session_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->create_upload_session_third_party: #{e}"
end
```

#### Using the create_upload_session_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyChunkedUploadSessionResponseWrapperWrapper>, Integer, Hash)> create_upload_session_third_party_with_http_info(folder_id, session_request)

```ruby
begin
  # Chunked upload (third-party storage)
  data, status_code, headers = api_instance.create_upload_session_third_party_with_http_info(folder_id, session_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyChunkedUploadSessionResponseWrapperWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->create_upload_session_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **String** | The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not. |  |
| **session_request** | [**SessionRequest**](SessionRequest.md) | The file the session is opened for, and how a clash with an existing name is settled. |  |

### Return type

[**ThirdPartyChunkedUploadSessionResponseWrapperWrapper**](ThirdPartyChunkedUploadSessionResponseWrapperWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_upload_session_in_folder

> <ChunkedUploadSessionResponseResponseWrapper> create_upload_session_in_folder(folder_id, session_request)

Create an upload session

Opens a chunked upload session for a file in the folder named by the path and returns the session itself,  which is the difference from the deprecated `POST api/2.0/files/{folderId}/upload/create_session` and its  success envelope. The answer gives `id`, quoted by every later call, `location` for the standalone chunk  handler used by clients that bypass this API, `expired`, and `bytes_total` echoing the reserved size. Whether  parts are really needed follows from `fileSize`: below `chunkUploadSize` from `GET api/2.0/files/settings` the  whole payload goes in one `POST api/2.0/files/{folderId}/session/{sessionId}`, which stores the file and  answers 201, and above it the parts go one by one to  `POST api/2.0/files/{folderId}/session/{sessionId}/upload` and the file appears only after  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller must be allowed to add content to the  folder, so readers, editors and guests are refused, a section root is refused as well, and an unknown folder  is answered as missing. Nothing is written until the parts arrive, and an abandoned session disappears twelve  hours later.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-in-folder/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
folder_id = 1 # Integer | The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
session_request = DocspaceApiSdk::SessionRequest.new({file_name: 'My Document.docx'}) # SessionRequest | The file the session is opened for, and how a clash with an existing name is settled.

begin
  # Create an upload session
  result = api_instance.create_upload_session_in_folder(folder_id, session_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->create_upload_session_in_folder: #{e}"
end
```

#### Using the create_upload_session_in_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkedUploadSessionResponseResponseWrapper>, Integer, Hash)> create_upload_session_in_folder_with_http_info(folder_id, session_request)

```ruby
begin
  # Create an upload session
  data, status_code, headers = api_instance.create_upload_session_in_folder_with_http_info(folder_id, session_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkedUploadSessionResponseResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->create_upload_session_in_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not. |  |
| **session_request** | [**SessionRequest**](SessionRequest.md) | The file the session is opened for, and how a clash with an existing name is settled. |  |

### Return type

[**ChunkedUploadSessionResponseResponseWrapper**](ChunkedUploadSessionResponseResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_upload_session_in_folder_third_party

> <ThirdPartyChunkedUploadSessionResponseResponseWrapper> create_upload_session_in_folder_third_party(folder_id, session_request)

Create an upload session (third-party storage)

Opens a chunked upload session for a file in the folder named by the path and returns the session itself,  which is the difference from the deprecated `POST api/2.0/files/{folderId}/upload/create_session` and its  success envelope. The answer gives `id`, quoted by every later call, `location` for the standalone chunk  handler used by clients that bypass this API, `expired`, and `bytes_total` echoing the reserved size. Whether  parts are really needed follows from `fileSize`: below `chunkUploadSize` from `GET api/2.0/files/settings` the  whole payload goes in one `POST api/2.0/files/{folderId}/session/{sessionId}`, which stores the file and  answers 201, and above it the parts go one by one to  `POST api/2.0/files/{folderId}/session/{sessionId}/upload` and the file appears only after  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. The caller must be allowed to add content to the  folder, so readers, editors and guests are refused, a section root is refused as well, and an unknown folder  is answered as missing. Nothing is written until the parts arrive, and an abandoned session disappears twelve  hours later.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-upload-session-in-folder-third-party/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
folder_id = '1' # String | The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not.
session_request = DocspaceApiSdk::SessionRequest.new({file_name: 'My Document.docx'}) # SessionRequest | The file the session is opened for, and how a clash with an existing name is settled.

begin
  # Create an upload session (third-party storage)
  result = api_instance.create_upload_session_in_folder_third_party(folder_id, session_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->create_upload_session_in_folder_third_party: #{e}"
end
```

#### Using the create_upload_session_in_folder_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyChunkedUploadSessionResponseResponseWrapper>, Integer, Hash)> create_upload_session_in_folder_third_party_with_http_info(folder_id, session_request)

```ruby
begin
  # Create an upload session (third-party storage)
  data, status_code, headers = api_instance.create_upload_session_in_folder_third_party_with_http_info(folder_id, session_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyChunkedUploadSessionResponseResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->create_upload_session_in_folder_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **String** | The folder that receives the file; take the id from a listing such as `GET api/2.0/files/@root`. A room or an  ordinary folder inside one is accepted, a section root is not. |  |
| **session_request** | [**SessionRequest**](SessionRequest.md) | The file the session is opened for, and how a clash with an existing name is settled. |  |

### Return type

[**ThirdPartyChunkedUploadSessionResponseResponseWrapper**](ThirdPartyChunkedUploadSessionResponseResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_batch_items

> <FileOperationArrayWrapper> delete_batch_items(opts)

Delete files and folders

Queues a background job that deletes the requested files and folders, and answers with the caller's delete  operations, including the one just started. Poll `GET api/2.0/files/fileops` until the operation reports  `finished`, and read its `error`: a failure on a single item is reported there rather than as a status code.  With `immediately=false` the items are moved to the caller's Trash and can be restored from it, while  `immediately=true` removes them at once and for good; deleting a folder takes everything inside it either way.  The call is destructive and it is not a no-op on repetition — a second call with the same ids deletes whatever  has been restored in the meantime. Access is checked before the job is queued: deleting from a room requires  room manager or content-creator rights, editing or read rights are refused with 403, and an id that resolves  to nothing is answered as missing. An empty selection queues nothing and answers with the operations that are  already there. To clear the Trash itself use `PUT api/2.0/files/fileops/emptytrash`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-batch-items/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
opts = {
  delete_batch_request_dto: DocspaceApiSdk::DeleteBatchRequestDto.new # DeleteBatchRequestDto | 
}

begin
  # Delete files and folders
  result = api_instance.delete_batch_items(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->delete_batch_items: #{e}"
end
```

#### Using the delete_batch_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationArrayWrapper>, Integer, Hash)> delete_batch_items_with_http_info(opts)

```ruby
begin
  # Delete files and folders
  data, status_code, headers = api_instance.delete_batch_items_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->delete_batch_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_batch_request_dto** | [**DeleteBatchRequestDto**](DeleteBatchRequestDto.md) |  | [optional] |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_favorites_from_body

> <BooleanWrapper> delete_favorites_from_body(opts)

Delete favorite files and folders

Removes the favorite mark from the listed files and folders for the calling account. Nothing is deleted from  storage: the entries keep their place, their content and their sharing, and only disappear from  `GET api/2.0/files/@favorites`; to delete the entries themselves call `PUT api/2.0/files/fileops/delete`  instead. Marks of other members are untouched, and read access to each item is enough to call it. The ids go  into the JSON body documented here; the same route also accepts them as repeated `fileIds` and `folderIds`  query parameters, but only in a request that carries no JSON body at all. Numeric ids address entries stored  in the portal itself, string ids entries on a connected third-party account. The answer is `true` whenever the  request was understood, which an empty request, an id that does not exist and an item that was never marked  all achieve, so it does not report how many marks were dropped. `returnSingleOperation` arrives with the  shared body and does nothing here. Repeating the call is safe. Use `POST api/2.0/files/favorites` to mark  entries again.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-favorites-from-body/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
opts = {
  base_batch_request_dto: DocspaceApiSdk::BaseBatchRequestDto.new # BaseBatchRequestDto | 
}

begin
  # Delete favorite files and folders
  result = api_instance.delete_favorites_from_body(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->delete_favorites_from_body: #{e}"
end
```

#### Using the delete_favorites_from_body_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> delete_favorites_from_body_with_http_info(opts)

```ruby
begin
  # Delete favorite files and folders
  data, status_code, headers = api_instance.delete_favorites_from_body_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->delete_favorites_from_body_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_batch_request_dto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_file_versions

> <FileOperationArrayWrapper> delete_file_versions(opts)

Delete file versions

Queues a background job that removes the listed versions from the history of one file, and answers with the  caller's delete operations, including the one just started. Poll `GET api/2.0/files/fileops` until the  operation reports `finished`; a failure met while the job runs is reported in its `error` rather than as a  status code. Removal is permanent — deleted versions do not travel through Trash and cannot be restored, while  the file itself stays in place with the versions that are left. Send the numbers that  `GET api/2.0/files/file/{fileId}/history` reports, and send at least one: an empty list is not an empty  request, it deletes the whole file instead. The number of the current version is refused before anything is  queued, while numbers that no longer exist are passed over without a complaint. The caller needs the rights  that deleting the file itself would need, so a member with read-only rights is refused, as are a file in an  archived room and a file that is already in Trash, and a file that does not exist is answered as missing. To  delete the file itself use `PUT api/2.0/files/fileops/delete`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file-versions/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
opts = {
  delete_version_batch_request_dto: DocspaceApiSdk::DeleteVersionBatchRequestDto.new({file_id: 1, versions: [1,  2,  3]}) # DeleteVersionBatchRequestDto | 
}

begin
  # Delete file versions
  result = api_instance.delete_file_versions(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->delete_file_versions: #{e}"
end
```

#### Using the delete_file_versions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationArrayWrapper>, Integer, Hash)> delete_file_versions_with_http_info(opts)

```ruby
begin
  # Delete file versions
  data, status_code, headers = api_instance.delete_file_versions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->delete_file_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_version_batch_request_dto** | [**DeleteVersionBatchRequestDto**](DeleteVersionBatchRequestDto.md) |  | [optional] |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## duplicate_batch_items

> <FileOperationArrayWrapper> duplicate_batch_items(opts)

Duplicate files and folders

Queues a background job that copies each requested file and folder next to itself, into the folder where it  already is, and answers with the caller's duplicate operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`. The copies keep the name of the original  with a numeric suffix, so nothing is overwritten and every repetition adds one more copy; duplicating a folder  duplicates its content as well. No destination is taken — to place a copy somewhere else use  `PUT api/2.0/files/fileops/copy`. The caller needs the rights that creating an item in that folder would need,  which inside a room means room manager or content-creator rights: read or editing rights, and an item the  caller has no access to at all, are refused with 403. An empty selection queues nothing and answers with the  operations that are already there.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/duplicate-batch-items/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
opts = {
  duplicate_request_dto: DocspaceApiSdk::DuplicateRequestDto.new # DuplicateRequestDto | 
}

begin
  # Duplicate files and folders
  result = api_instance.duplicate_batch_items(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->duplicate_batch_items: #{e}"
end
```

#### Using the duplicate_batch_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationArrayWrapper>, Integer, Hash)> duplicate_batch_items_with_http_info(opts)

```ruby
begin
  # Duplicate files and folders
  data, status_code, headers = api_instance.duplicate_batch_items_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->duplicate_batch_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duplicate_request_dto** | [**DuplicateRequestDto**](DuplicateRequestDto.md) |  | [optional] |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## empty_trash

> <FileOperationArrayWrapper> empty_trash(opts)

Empty the Trash folder

Queues a background job that permanently removes the content of the caller's own Trash, and answers with the  caller's delete operations, including the one just started. Poll `GET api/2.0/files/fileops` until the  operation reports `finished`. Every authenticated account may empty its own Trash and only its own: no  per-item access check takes place because nothing outside the caller's Trash is touched. With `folderType` the  sweep is narrowed to the items that were originally stored in sections and rooms of the named types, so  clearing what came from personal documents leaves what came from rooms untouched; without the parameter the  whole Trash is emptied. What is removed here cannot be restored afterwards, which is the difference from  `PUT api/2.0/files/fileops/delete`, where `immediately=false` puts items into Trash in the first place.  Calling it on an already empty Trash queues nothing and answers with the operations that are already there.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/empty-trash/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
opts = {
  single: false, # Boolean | Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every delete operation that the caller has running or unread.
  folder_type: [0] # Array<Integer> | Limits the sweep to the items whose original location was inside a section or a room of one of the named  types, leaving the rest of the Trash untouched; without the parameter the whole Trash is emptied. `5` covers  what was deleted from personal documents, `14` what was deleted from rooms.
}

begin
  # Empty the Trash folder
  result = api_instance.empty_trash(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->empty_trash: #{e}"
end
```

#### Using the empty_trash_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationArrayWrapper>, Integer, Hash)> empty_trash_with_http_info(opts)

```ruby
begin
  # Empty the Trash folder
  data, status_code, headers = api_instance.empty_trash_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->empty_trash_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **single** | **Boolean** | Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every delete operation that the caller has running or unread. | [optional] |
| **folder_type** | [**Array&lt;Integer&gt;**](Integer.md) | Limits the sweep to the items whose original location was inside a section or a room of one of the named  types, leaving the rest of the Trash untouched; without the parameter the whole Trash is emptied. `5` covers  what was deleted from personal documents, `14` what was deleted from rooms. | [optional] |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## finalize_session

> <UploadSessionResponseWrapper> finalize_session(folder_id, session_id)

Finalize an upload session

Assembles the parts received so far into the file the session was opened for and closes the session. What  comes out depends on how the session started: one opened against an existing file through  `POST api/2.0/files/file/{fileId}/edit_session` replaces that content in place and keeps the version number,  while one opened against a folder either creates the file or, when a file of the same name was taken over,  stores the content as its next version. A form loses its filling state on the way in. The answer arrives with  201 and carries the identifiers of the file together with the file itself. The call ends the session: the  record and the buffered parts are removed, so it cannot be repeated and there is nothing left to abort  afterwards. Running it before all the declared bytes have arrived assembles whatever is there, so read the  progress from the chunk calls first. An unknown, already closed or expired session id fails instead of  answering as missing.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/finalize-session/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
folder_id = 1 # Integer | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
session_id = '9f1c7a2b4d3e4f5a8b6c0d1e2f3a4b5c' # String | The session to assemble, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own.

begin
  # Finalize an upload session
  result = api_instance.finalize_session(folder_id, session_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->finalize_session: #{e}"
end
```

#### Using the finalize_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadSessionResponseWrapper>, Integer, Hash)> finalize_session_with_http_info(folder_id, session_id)

```ruby
begin
  # Finalize an upload session
  data, status_code, headers = api_instance.finalize_session_with_http_info(folder_id, session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadSessionResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->finalize_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. |  |
| **session_id** | **String** | The session to assemble, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own. |  |

### Return type

[**UploadSessionResponseWrapper**](UploadSessionResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## finalize_session_third_party

> <ThirdPartyUploadSessionResponseWrapper> finalize_session_third_party(folder_id, session_id)

Finalize an upload session (third-party storage)

Assembles the parts received so far into the file the session was opened for and closes the session. What  comes out depends on how the session started: one opened against an existing file through  `POST api/2.0/files/file/{fileId}/edit_session` replaces that content in place and keeps the version number,  while one opened against a folder either creates the file or, when a file of the same name was taken over,  stores the content as its next version. A form loses its filling state on the way in. The answer arrives with  201 and carries the identifiers of the file together with the file itself. The call ends the session: the  record and the buffered parts are removed, so it cannot be repeated and there is nothing left to abort  afterwards. Running it before all the declared bytes have arrived assembles whatever is there, so read the  progress from the chunk calls first. An unknown, already closed or expired session id fails instead of  answering as missing.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/finalize-session-third-party/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
folder_id = '1' # String | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
session_id = '9f1c7a2b4d3e4f5a8b6c0d1e2f3a4b5c' # String | The session to assemble, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own.

begin
  # Finalize an upload session (third-party storage)
  result = api_instance.finalize_session_third_party(folder_id, session_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->finalize_session_third_party: #{e}"
end
```

#### Using the finalize_session_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyUploadSessionResponseWrapper>, Integer, Hash)> finalize_session_third_party_with_http_info(folder_id, session_id)

```ruby
begin
  # Finalize an upload session (third-party storage)
  data, status_code, headers = api_instance.finalize_session_third_party_with_http_info(folder_id, session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyUploadSessionResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->finalize_session_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **String** | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. |  |
| **session_id** | **String** | The session to assemble, as returned in `id` when it was created: a 32-character hexadecimal string that  identifies the session on its own. |  |

### Return type

[**ThirdPartyUploadSessionResponseWrapper**](ThirdPartyUploadSessionResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_operation_statuses

> <FileOperationArrayWrapper> get_operation_statuses(opts)

Get active file operations

Returns the background file operations of the caller that are still running or whose finished result has not  been read yet, grouped by kind: duplications first, then moves and copies, deletions, downloads and  mark-as-read. This is the polling target for every operation in this section — an operation appears here as  soon as it is queued and carries `progress` from 0 to 100, `finished`, the `error` of a failed item and, for a  download, the address of the archive in `url`. A record is dropped once its finished state has been handed  out, so a completed operation is reported once and an empty array means there is nothing left to report rather  than that the work failed. Pass `id` to follow a single operation; an id that is not among the caller's  operations gives an empty array. Operations are private to the account that started them, an anonymous caller  being scoped to the session of the external link. The call changes nothing. To follow one kind only use  `GET api/2.0/files/fileops/{operationType}`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::Files::OperationsApi.new
opts = {
  id: 'b2f3e9a4-7c15-4d8e-9f60-3a1c5e7d0b42' # String | The operation to report on, as returned in `id` when it was started; without it every operation of the caller  is reported. An id that is not among the caller's operations gives an empty answer rather than an error.
}

begin
  # Get active file operations
  result = api_instance.get_operation_statuses(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->get_operation_statuses: #{e}"
end
```

#### Using the get_operation_statuses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationArrayWrapper>, Integer, Hash)> get_operation_statuses_with_http_info(opts)

```ruby
begin
  # Get active file operations
  data, status_code, headers = api_instance.get_operation_statuses_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->get_operation_statuses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The operation to report on, as returned in `id` when it was started; without it every operation of the caller  is reported. An id that is not among the caller's operations gives an empty answer rather than an error. | [optional] |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_operation_statuses_by_type

> <FileOperationArrayWrapper> get_operation_statuses_by_type(operation_type, opts)

Get file operations by type

Returns the background file operations of the caller that are of one kind, named by the number in the route:  `1` for a copy, `2` for a deletion, `3` for a download, `4` for a mark-as-read and `7` for a duplication. The  answer carries the same records as `GET api/2.0/files/fileops`, with the same rule that a finished operation  is reported once and then dropped, and `id` narrows it further to a single operation. Moves, kind `0`, cannot  be read through this route: the address `api/2.0/files/fileops/move` belongs to another operation, so read  moves from `GET api/2.0/files/fileops` and pick the records whose `operation` is `0`. A kind that has no queue  of its own — `5` for an import, `6` for a conversion — is accepted and answers with an empty array, while a  number outside the operation type is rejected as an invalid request. The call changes nothing and never shows  another account's operations.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses-by-type/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::Files::OperationsApi.new
operation_type = DocspaceApiSdk::FileOperationType::Move # FileOperationType | The kind of operation the answer is limited to. Only the kinds that have a queue of their own ever carry  records — a copy, a deletion, a download, a mark-as-read and a duplication — and moves cannot be read through  this route at all, because its address belongs to another operation.
opts = {
  id: 'b2f3e9a4-7c15-4d8e-9f60-3a1c5e7d0b42' # String | The operation to report on, as returned in `id` when it was started; without it every operation of the caller  is reported. An id that is not among the caller's operations gives an empty answer rather than an error.
}

begin
  # Get file operations by type
  result = api_instance.get_operation_statuses_by_type(operation_type, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->get_operation_statuses_by_type: #{e}"
end
```

#### Using the get_operation_statuses_by_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationArrayWrapper>, Integer, Hash)> get_operation_statuses_by_type_with_http_info(operation_type, opts)

```ruby
begin
  # Get file operations by type
  data, status_code, headers = api_instance.get_operation_statuses_by_type_with_http_info(operation_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->get_operation_statuses_by_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation_type** | **FileOperationType** | The kind of operation the answer is limited to. Only the kinds that have a queue of their own ever carry  records — a copy, a deletion, a download, a mark-as-read and a duplication — and moves cannot be read through  this route at all, because its address belongs to another operation. |  |
| **id** | **String** | The operation to report on, as returned in `id` when it was started; without it every operation of the caller  is reported. An id that is not among the caller's operations gives an empty answer rather than an error. | [optional] |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mark_as_read

> <FileOperationArrayWrapper> mark_as_read(opts)

Mark files and folders as read

Queues a background job that clears the new-item badge from the requested files and folders for the calling  account, and answers with the caller's mark-as-read operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`. Marking a folder clears the badges of  everything inside it as well. Items the caller cannot read are passed over in silence rather than refused, so  the call succeeds even when the whole selection is inaccessible, and an empty selection queues nothing and  answers with the operations that are already there. Repeating the call on items that are already read changes  nothing, and nothing is opened, moved or modified by it — only the caller's own badges are affected, while  other members keep theirs. To see what is currently marked as new use `GET api/2.0/files/{folderId}/news` for  one folder and `GET api/2.0/files/rooms/news` for the rooms of the caller.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/mark-as-read/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
opts = {
  base_batch_request_dto: DocspaceApiSdk::BaseBatchRequestDto.new # BaseBatchRequestDto | 
}

begin
  # Mark files and folders as read
  result = api_instance.mark_as_read(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->mark_as_read: #{e}"
end
```

#### Using the mark_as_read_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationArrayWrapper>, Integer, Hash)> mark_as_read_with_http_info(opts)

```ruby
begin
  # Mark files and folders as read
  data, status_code, headers = api_instance.mark_as_read_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->mark_as_read_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_batch_request_dto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## move_batch_items

> <FileOperationArrayWrapper> move_batch_items(opts)

Move files and folders

Queues a background job that moves the requested files and folders into `destFolderId`, removing them from  where they were, and answers with the caller's move and copy operations, including the one just started. Poll  `GET api/2.0/files/fileops` until the operation reports `finished`. Before starting,  `GET api/2.0/files/fileops/move` reports which items already have a same-named entry at the destination and  `conflictResolveType` decides what happens to them, while `GET api/2.0/files/fileops/checkdestfolder` reports  whether the destination accepts the files at all. The caller needs create access to the destination and the  right to take the items out of their source, which is why room members with editing or review rights are  refused with 403, and why content-creator rights inside a room allow copying an item out of it but not moving  it. A room cannot be moved this way — use `PUT api/2.0/files/rooms/{id}/archive` instead. To keep the  originals use `PUT api/2.0/files/fileops/copy`. An empty selection queues nothing.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/move-batch-items/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
opts = {
  batch_request_dto: DocspaceApiSdk::BatchRequestDto.new # BatchRequestDto | 
}

begin
  # Move files and folders
  result = api_instance.move_batch_items(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->move_batch_items: #{e}"
end
```

#### Using the move_batch_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationArrayWrapper>, Integer, Hash)> move_batch_items_with_http_info(opts)

```ruby
begin
  # Move files and folders
  data, status_code, headers = api_instance.move_batch_items_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->move_batch_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_request_dto** | [**BatchRequestDto**](BatchRequestDto.md) |  | [optional] |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_file_conversion

> <ConversationResultArrayWrapper> start_file_conversion(file_id, opts)

Start file conversion

Queues the conversion of a file into the portal's own editable format and answers with the conversion entry  the caller is to poll. The whole body may be omitted, in which case the defaults apply. `outputType` names the  target format and, left empty, the portal's default for that kind of document is used; `password` unlocks a  protected source file; `version` converts an older version instead of the current one. `createNewIfExist`  decides where the result goes: with `true` a new file is created beside the source, while with `false`, the  default, the converted file that already exists is replaced. `sync=true` converts inside the request and  answers with the finished result instead of a queue entry, which is only sensible for small documents.  Otherwise poll `GET api/2.0/files/file/{fileId}/checkconversion` until `progress` reaches 100 and take the  converted file from `file`. Only formats the portal has to convert are accepted; anything already editable,  and anything it cannot convert, is answered without work being queued or rejected as an invalid request. The  caller needs read access to the file. The call is mutating and not idempotent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
file_id = 1 # Integer | The file to convert.
opts = {
  check_conversion_request_dto: DocspaceApiSdk::CheckConversionRequestDto.new # CheckConversionRequestDto | The parameters of the conversion. The whole body may be omitted, in which case the defaults of the portal  apply.
}

begin
  # Start file conversion
  result = api_instance.start_file_conversion(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->start_file_conversion: #{e}"
end
```

#### Using the start_file_conversion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversationResultArrayWrapper>, Integer, Hash)> start_file_conversion_with_http_info(file_id, opts)

```ruby
begin
  # Start file conversion
  data, status_code, headers = api_instance.start_file_conversion_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversationResultArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->start_file_conversion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file to convert. |  |
| **check_conversion_request_dto** | [**CheckConversionRequestDto**](CheckConversionRequestDto.md) | The parameters of the conversion. The whole body may be omitted, in which case the defaults of the portal  apply. | [optional] |

### Return type

[**ConversationResultArrayWrapper**](ConversationResultArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_file_conversion_third_party

> <ConversationResultArrayWrapper> start_file_conversion_third_party(file_id, opts)

Start file conversion (third-party storage)

Queues the conversion of a file into the portal's own editable format and answers with the conversion entry  the caller is to poll. The whole body may be omitted, in which case the defaults apply. `outputType` names the  target format and, left empty, the portal's default for that kind of document is used; `password` unlocks a  protected source file; `version` converts an older version instead of the current one. `createNewIfExist`  decides where the result goes: with `true` a new file is created beside the source, while with `false`, the  default, the converted file that already exists is replaced. `sync=true` converts inside the request and  answers with the finished result instead of a queue entry, which is only sensible for small documents.  Otherwise poll `GET api/2.0/files/file/{fileId}/checkconversion` until `progress` reaches 100 and take the  converted file from `file`. Only formats the portal has to convert are accepted; anything already editable,  and anything it cannot convert, is answered without work being queued or rejected as an invalid request. The  caller needs read access to the file. The call is mutating and not idempotent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-file-conversion-third-party/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
file_id = '1' # String | The file to convert.
opts = {
  third_party_check_conversion_request_dto: DocspaceApiSdk::ThirdPartyCheckConversionRequestDto.new # ThirdPartyCheckConversionRequestDto | The parameters of the conversion. The whole body may be omitted, in which case the defaults of the portal  apply.
}

begin
  # Start file conversion (third-party storage)
  result = api_instance.start_file_conversion_third_party(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->start_file_conversion_third_party: #{e}"
end
```

#### Using the start_file_conversion_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversationResultArrayWrapper>, Integer, Hash)> start_file_conversion_third_party_with_http_info(file_id, opts)

```ruby
begin
  # Start file conversion (third-party storage)
  data, status_code, headers = api_instance.start_file_conversion_third_party_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversationResultArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->start_file_conversion_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file to convert. |  |
| **third_party_check_conversion_request_dto** | [**ThirdPartyCheckConversionRequestDto**](ThirdPartyCheckConversionRequestDto.md) | The parameters of the conversion. The whole body may be omitted, in which case the defaults of the portal  apply. | [optional] |

### Return type

[**ConversationResultArrayWrapper**](ConversationResultArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## terminate_tasks

> <FileOperationArrayWrapper> terminate_tasks(id)

Cancel file operations

Cancels a background file operation of the caller and answers with the operations that are left. Pass the `id`  that was reported when the operation started to stop that one; a call that leaves the trailing route segment  out stops every operation the caller has running, of every kind. Cancelling stops the job where it stands and  does not undo it: what has already been copied, moved or deleted stays that way, so a cancelled batch can  leave part of itself at the destination and part of it at the source, and the result has to be read back  rather than assumed. The cancelled record is dropped from `GET api/2.0/files/fileops` at once, which is why  the answer here is usually empty. An id that is not among the caller's operations cancels nothing and is not  an error. Operations are private to the account that started them, an anonymous caller being scoped to the  session of the external link, so the call can never reach an operation of anyone else.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tasks/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::Files::OperationsApi.new
id = 'b2f3e9a4-7c15-4d8e-9f60-3a1c5e7d0b42' # String | The operation to cancel, as returned in `id` when it was started. A call that leaves the route segment out  cancels every operation of the caller, and an id that is not among their operations cancels nothing without  being an error.

begin
  # Cancel file operations
  result = api_instance.terminate_tasks(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->terminate_tasks: #{e}"
end
```

#### Using the terminate_tasks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationArrayWrapper>, Integer, Hash)> terminate_tasks_with_http_info(id)

```ruby
begin
  # Cancel file operations
  data, status_code, headers = api_instance.terminate_tasks_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->terminate_tasks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The operation to cancel, as returned in `id` when it was started. A call that leaves the route segment out  cancels every operation of the caller, and an id that is not among their operations cancels nothing without  being an error. |  |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_file_comment

> <StringWrapper> update_file_comment(file_id, update_comment)

Update a comment

Replaces the comment stored on one version of a file - the note that explains what changed in it - and answers  with the comment as it was stored, which is the text cut to the length the portal keeps. `version` names the  version and has to be an existing one: a version that does not exist is rejected as an invalid request, while  a file that does not exist at all is answered as not found. Sending an empty comment clears the note. The  caller needs the right to edit the history of the file, which the room admin, a DocSpace admin acting as room  manager and a member with content-creator rights have; a member with editing access to somebody else's file,  read-only access, a guest and an anonymous caller are all refused. A file that is locked by somebody else or  lies in Trash is refused as well. The call is mutating and idempotent - repeating it with the same text leaves  the same comment. The comments of all versions come back with `GET api/2.0/files/file/{fileId}/edit/history`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
file_id = 1 # Integer | The file whose version comment is replaced.
update_comment = DocspaceApiSdk::UpdateComment.new({version: 1}) # UpdateComment | The version and the comment to store on it.

begin
  # Update a comment
  result = api_instance.update_file_comment(file_id, update_comment)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->update_file_comment: #{e}"
end
```

#### Using the update_file_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> update_file_comment_with_http_info(file_id, update_comment)

```ruby
begin
  # Update a comment
  data, status_code, headers = api_instance.update_file_comment_with_http_info(file_id, update_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->update_file_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file whose version comment is replaced. |  |
| **update_comment** | [**UpdateComment**](UpdateComment.md) | The version and the comment to store on it. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_file_comment_third_party

> <StringWrapper> update_file_comment_third_party(file_id, update_comment)

Update a comment (third-party storage)

Replaces the comment stored on one version of a file - the note that explains what changed in it - and answers  with the comment as it was stored, which is the text cut to the length the portal keeps. `version` names the  version and has to be an existing one: a version that does not exist is rejected as an invalid request, while  a file that does not exist at all is answered as not found. Sending an empty comment clears the note. The  caller needs the right to edit the history of the file, which the room admin, a DocSpace admin acting as room  manager and a member with content-creator rights have; a member with editing access to somebody else's file,  read-only access, a guest and an anonymous caller are all refused. A file that is locked by somebody else or  lies in Trash is refused as well. The call is mutating and idempotent - repeating it with the same text leaves  the same comment. The comments of all versions come back with `GET api/2.0/files/file/{fileId}/edit/history`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-comment-third-party/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
file_id = '1' # String | The file whose version comment is replaced.
update_comment = DocspaceApiSdk::UpdateComment.new({version: 1}) # UpdateComment | The version and the comment to store on it.

begin
  # Update a comment (third-party storage)
  result = api_instance.update_file_comment_third_party(file_id, update_comment)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->update_file_comment_third_party: #{e}"
end
```

#### Using the update_file_comment_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> update_file_comment_third_party_with_http_info(file_id, update_comment)

```ruby
begin
  # Update a comment (third-party storage)
  data, status_code, headers = api_instance.update_file_comment_third_party_with_http_info(file_id, update_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->update_file_comment_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file whose version comment is replaced. |  |
| **update_comment** | [**UpdateComment**](UpdateComment.md) | The version and the comment to store on it. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_async_session

> <ChunkedUploadSessionResponseResponseWrapper> upload_async_session(folder_id, session_id, opts)

Upload a numbered chunk

Stores one part of a file under the number given in `chunkNumber`, which is what the ordinary chunked flow  uses: parts are kept by their number rather than by arrival, so a part that failed can be resent under the  same number without restarting the session. Numbering starts at 1, and leaving the number out makes the server  count the parts itself. The answer is always the session, never the file, and this call never completes the  upload: the file appears only after `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. Use  `POST api/2.0/files/{folderId}/session/{sessionId}` instead when the parts go strictly in order and the upload  should complete by itself. A part bigger than `chunkUploadSize` from `GET api/2.0/files/settings` is refused,  so that value is also the size to split the payload by. The first part of a PDF is inspected, and a PDF that  is not a fillable form is refused when the session targets a form-filling room. The session is found by its id  alone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-async-session/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
folder_id = 1 # Integer | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
session_id = '9f1c7a2b4d3e4f5a8b6c0d1e2f3a4b5c' # String | The session this part belongs to, as returned in `id` when it was created; a 32-character hexadecimal string.
opts = {
  chunk_number: 1, # Integer | The position of this part in the file, counted from 1. Sending the same number again replaces that part  instead of adding one, which is how a failed part is retried; leaving the number out makes the server count  the parts itself.
  file: File.new('/path/to/some/file') # File | The part of the file to store, sent as the multipart field of the same name. It is kept under the number given  beside it, and a part larger than the portal chunk size is refused.
}

begin
  # Upload a numbered chunk
  result = api_instance.upload_async_session(folder_id, session_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->upload_async_session: #{e}"
end
```

#### Using the upload_async_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkedUploadSessionResponseResponseWrapper>, Integer, Hash)> upload_async_session_with_http_info(folder_id, session_id, opts)

```ruby
begin
  # Upload a numbered chunk
  data, status_code, headers = api_instance.upload_async_session_with_http_info(folder_id, session_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkedUploadSessionResponseResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->upload_async_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. |  |
| **session_id** | **String** | The session this part belongs to, as returned in `id` when it was created; a 32-character hexadecimal string. |  |
| **chunk_number** | **Integer** | The position of this part in the file, counted from 1. Sending the same number again replaces that part  instead of adding one, which is how a failed part is retried; leaving the number out makes the server count  the parts itself. | [optional] |
| **file** | **File** | The part of the file to store, sent as the multipart field of the same name. It is kept under the number given  beside it, and a part larger than the portal chunk size is refused. | [optional] |

### Return type

[**ChunkedUploadSessionResponseResponseWrapper**](ChunkedUploadSessionResponseResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## upload_async_session_third_party

> <ThirdPartyChunkedUploadSessionResponseResponseWrapper> upload_async_session_third_party(folder_id, session_id, opts)

Upload a numbered chunk (third-party storage)

Stores one part of a file under the number given in `chunkNumber`, which is what the ordinary chunked flow  uses: parts are kept by their number rather than by arrival, so a part that failed can be resent under the  same number without restarting the session. Numbering starts at 1, and leaving the number out makes the server  count the parts itself. The answer is always the session, never the file, and this call never completes the  upload: the file appears only after `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`. Use  `POST api/2.0/files/{folderId}/session/{sessionId}` instead when the parts go strictly in order and the upload  should complete by itself. A part bigger than `chunkUploadSize` from `GET api/2.0/files/settings` is refused,  so that value is also the size to split the payload by. The first part of a PDF is inspected, and a PDF that  is not a fillable form is refused when the session targets a form-filling room. The session is found by its id  alone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-async-session-third-party/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
folder_id = '1' # String | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
session_id = '9f1c7a2b4d3e4f5a8b6c0d1e2f3a4b5c' # String | The session this part belongs to, as returned in `id` when it was created; a 32-character hexadecimal string.
opts = {
  chunk_number: 1, # Integer | The position of this part in the file, counted from 1. Sending the same number again replaces that part  instead of adding one, which is how a failed part is retried; leaving the number out makes the server count  the parts itself.
  file: File.new('/path/to/some/file') # File | The part of the file to store, sent as the multipart field of the same name. It is kept under the number given  beside it, and a part larger than the portal chunk size is refused.
}

begin
  # Upload a numbered chunk (third-party storage)
  result = api_instance.upload_async_session_third_party(folder_id, session_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->upload_async_session_third_party: #{e}"
end
```

#### Using the upload_async_session_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyChunkedUploadSessionResponseResponseWrapper>, Integer, Hash)> upload_async_session_third_party_with_http_info(folder_id, session_id, opts)

```ruby
begin
  # Upload a numbered chunk (third-party storage)
  data, status_code, headers = api_instance.upload_async_session_third_party_with_http_info(folder_id, session_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyChunkedUploadSessionResponseResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->upload_async_session_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **String** | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. |  |
| **session_id** | **String** | The session this part belongs to, as returned in `id` when it was created; a 32-character hexadecimal string. |  |
| **chunk_number** | **Integer** | The position of this part in the file, counted from 1. Sending the same number again replaces that part  instead of adding one, which is how a failed part is retried; leaving the number out makes the server count  the parts itself. | [optional] |
| **file** | **File** | The part of the file to store, sent as the multipart field of the same name. It is kept under the number given  beside it, and a part larger than the portal chunk size is refused. | [optional] |

### Return type

[**ThirdPartyChunkedUploadSessionResponseResponseWrapper**](ThirdPartyChunkedUploadSessionResponseResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## upload_session

> <UploadSessionResponseWrapper> upload_session(folder_id, session_id, opts)

Upload the next chunk

Sends the next part of a file into the session opened for it, as the multipart `File` field, and lets the  server keep count: parts are appended in the order they arrive, so two of these calls must never run in  parallel on one session. While bytes are still missing the answer describes the session and `uploaded` is  false; when the last part completes the declared size the file is written, its upload links are cleared, it is  marked as new for the room, and the answer comes back with 201, `uploaded` true and the whole file in `file`.  A session created for a payload smaller than `chunkUploadSize` from `GET api/2.0/files/settings` finishes on  the first such call and needs no separate finalize step. A part larger than that limit is refused. The first  part of a PDF is inspected, and a PDF that is not a fillable form is refused when the session targets a  form-filling room. The session is addressed by its id, and the folder in the path is not matched against it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-session/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
folder_id = 1 # Integer | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
session_id = '9f1c7a2b4d3e4f5a8b6c0d1e2f3a4b5c' # String | The session this part belongs to, as returned in `id` when it was created; the parts of one session must be  sent one after another, not in parallel.
opts = {
  file: File.new('/path/to/some/file') # File | The next part of the file, sent as the multipart field of the same name. Parts are appended in the order they  arrive, and a part larger than the portal chunk size is refused.
}

begin
  # Upload the next chunk
  result = api_instance.upload_session(folder_id, session_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->upload_session: #{e}"
end
```

#### Using the upload_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadSessionResponseWrapper>, Integer, Hash)> upload_session_with_http_info(folder_id, session_id, opts)

```ruby
begin
  # Upload the next chunk
  data, status_code, headers = api_instance.upload_session_with_http_info(folder_id, session_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadSessionResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->upload_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. |  |
| **session_id** | **String** | The session this part belongs to, as returned in `id` when it was created; the parts of one session must be  sent one after another, not in parallel. |  |
| **file** | **File** | The next part of the file, sent as the multipart field of the same name. Parts are appended in the order they  arrive, and a part larger than the portal chunk size is refused. | [optional] |

### Return type

[**UploadSessionResponseWrapper**](UploadSessionResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## upload_session_third_party

> <ThirdPartyUploadSessionResponseWrapper> upload_session_third_party(folder_id, session_id, opts)

Upload the next chunk (third-party storage)

Sends the next part of a file into the session opened for it, as the multipart `File` field, and lets the  server keep count: parts are appended in the order they arrive, so two of these calls must never run in  parallel on one session. While bytes are still missing the answer describes the session and `uploaded` is  false; when the last part completes the declared size the file is written, its upload links are cleared, it is  marked as new for the room, and the answer comes back with 201, `uploaded` true and the whole file in `file`.  A session created for a payload smaller than `chunkUploadSize` from `GET api/2.0/files/settings` finishes on  the first such call and needs no separate finalize step. A part larger than that limit is refused. The first  part of a PDF is inspected, and a PDF that is not a fillable form is refused when the session targets a  form-filling room. The session is addressed by its id, and the folder in the path is not matched against it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-session-third-party/).

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

api_instance = DocspaceApiSdk::Files::OperationsApi.new
folder_id = '1' # String | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id.
session_id = '9f1c7a2b4d3e4f5a8b6c0d1e2f3a4b5c' # String | The session this part belongs to, as returned in `id` when it was created; the parts of one session must be  sent one after another, not in parallel.
opts = {
  file: File.new('/path/to/some/file') # File | The next part of the file, sent as the multipart field of the same name. Parts are appended in the order they  arrive, and a part larger than the portal chunk size is refused.
}

begin
  # Upload the next chunk (third-party storage)
  result = api_instance.upload_session_third_party(folder_id, session_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->upload_session_third_party: #{e}"
end
```

#### Using the upload_session_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyUploadSessionResponseWrapper>, Integer, Hash)> upload_session_third_party_with_http_info(folder_id, session_id, opts)

```ruby
begin
  # Upload the next chunk (third-party storage)
  data, status_code, headers = api_instance.upload_session_third_party_with_http_info(folder_id, session_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyUploadSessionResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->upload_session_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **String** | The folder the session was opened against. It is part of the route only and is not matched against the  session, which is found by its own id. |  |
| **session_id** | **String** | The session this part belongs to, as returned in `id` when it was created; the parts of one session must be  sent one after another, not in parallel. |  |
| **file** | **File** | The next part of the file, sent as the multipart field of the same name. Parts are appended in the order they  arrive, and a part larger than the portal chunk size is refused. | [optional] |

### Return type

[**ThirdPartyUploadSessionResponseWrapper**](ThirdPartyUploadSessionResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

