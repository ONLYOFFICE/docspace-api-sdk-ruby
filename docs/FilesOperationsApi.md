# DocspaceApiSdk::FilesOperationsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**abort_upload_session**](FilesOperationsApi.md#abort_upload_session) | **DELETE** /api/2.0/files/{folderId}/session/{sessionId} | Aborts an in-progress file upload session. |
| [**add_favorites**](FilesOperationsApi.md#add_favorites) | **POST** /api/2.0/files/favorites | Add favorite files and folders |
| [**bulk_download**](FilesOperationsApi.md#bulk_download) | **PUT** /api/2.0/files/fileops/bulkdownload | Bulk download |
| [**check_conversion_status**](FilesOperationsApi.md#check_conversion_status) | **GET** /api/2.0/files/file/{fileId}/checkconversion | Get conversion status |
| [**check_move_or_copy_batch_items**](FilesOperationsApi.md#check_move_or_copy_batch_items) | **GET** /api/2.0/files/fileops/move | Move or copy files to a folder |
| [**check_move_or_copy_dest_folder**](FilesOperationsApi.md#check_move_or_copy_dest_folder) | **GET** /api/2.0/files/fileops/checkdestfolder | Check for moving or copying files to a folder |
| [**copy_batch_items**](FilesOperationsApi.md#copy_batch_items) | **PUT** /api/2.0/files/fileops/copy | Copy to the folder |
| [**create_upload_session**](FilesOperationsApi.md#create_upload_session) | **POST** /api/2.0/files/{folderId}/upload/create_session | Chunked upload |
| [**create_upload_session_in_folder**](FilesOperationsApi.md#create_upload_session_in_folder) | **POST** /api/2.0/files/{folderId}/session | Creates a session for uploading a file to a specific folder in chunks. |
| [**delete_batch_items**](FilesOperationsApi.md#delete_batch_items) | **PUT** /api/2.0/files/fileops/delete | Delete files and folders |
| [**delete_favorites_from_body**](FilesOperationsApi.md#delete_favorites_from_body) | **DELETE** /api/2.0/files/favorites | Delete favorite files and folders (using body parameters) |
| [**delete_file_versions**](FilesOperationsApi.md#delete_file_versions) | **PUT** /api/2.0/files/fileops/deleteversion | Delete file versions |
| [**duplicate_batch_items**](FilesOperationsApi.md#duplicate_batch_items) | **PUT** /api/2.0/files/fileops/duplicate | Duplicate files and folders |
| [**empty_trash**](FilesOperationsApi.md#empty_trash) | **PUT** /api/2.0/files/fileops/emptytrash | Empty the Trash folder |
| [**finalize_session**](FilesOperationsApi.md#finalize_session) | **PUT** /api/2.0/files/{folderId}/session/{sessionId}/finalize | Finalize an upload session |
| [**get_operation_statuses**](FilesOperationsApi.md#get_operation_statuses) | **GET** /api/2.0/files/fileops | Get active file operations |
| [**get_operation_statuses_by_type**](FilesOperationsApi.md#get_operation_statuses_by_type) | **GET** /api/2.0/files/fileops/{operationType} | Get file operation statuses |
| [**mark_as_read**](FilesOperationsApi.md#mark_as_read) | **PUT** /api/2.0/files/fileops/markasread | Mark as read |
| [**move_batch_items**](FilesOperationsApi.md#move_batch_items) | **PUT** /api/2.0/files/fileops/move | Move or copy to a folder |
| [**start_file_conversion**](FilesOperationsApi.md#start_file_conversion) | **PUT** /api/2.0/files/file/{fileId}/checkconversion | Start file conversion |
| [**terminate_tasks**](FilesOperationsApi.md#terminate_tasks) | **PUT** /api/2.0/files/fileops/terminate/{id} | Finish active operations |
| [**update_file_comment**](FilesOperationsApi.md#update_file_comment) | **PUT** /api/2.0/files/file/{fileId}/comment | Update a comment |
| [**upload_async_session**](FilesOperationsApi.md#upload_async_session) | **POST** /api/2.0/files/{folderId}/session/{sessionId}/upload | Handles the upload of a chunk for an existing upload session. |
| [**upload_session**](FilesOperationsApi.md#upload_session) | **POST** /api/2.0/files/{folderId}/session/{sessionId} | Resumes an ongoing file upload session for uploading additional chunks of data. |


## abort_upload_session

> abort_upload_session(session_id, folder_id)

Aborts an in-progress file upload session.

This method allows users to cancel an ongoing upload session identified by the session ID.  Once the session is aborted, the associated resources will be cleaned up, and the session will no longer accept further uploads.

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
session_id = 'session-123-abc' # String | The session ID.
folder_id = 1 # Integer | The folder ID.

begin
  # Aborts an in-progress file upload session.
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
  # Aborts an in-progress file upload session.
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
| **session_id** | **String** | The session ID. |  |
| **folder_id** | **Integer** | The folder ID. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## add_favorites

> <BooleanWrapper> add_favorites(opts)

Add favorite files and folders

Adds files and folders with the IDs specified in the request to the favorite list.

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

Starts the download process of files and folders with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/bulk-download/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## check_conversion_status

> <ConversationResultArrayWrapper> check_conversion_status(file_id, opts)

Get conversion status

Checks the conversion status of a file with the ID specified in the request.

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
file_id = 1 # Integer | The file ID to check conversion status.
opts = {
  start: false # Boolean | Specifies whether a conversion operation is started or not.
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
| **file_id** | **Integer** | The file ID to check conversion status. |  |
| **start** | **Boolean** | Specifies whether a conversion operation is started or not. | [optional] |

### Return type

[**ConversationResultArrayWrapper**](ConversationResultArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_move_or_copy_batch_items

> <FileEntryBaseArrayWrapper> check_move_or_copy_batch_items(opts)

Move or copy files to a folder

Checks if files or folders can be moved or copied to the specified folder, moves or copies them, and returns their information.

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
  in_dto: DocspaceApiSdk::BatchRequestDto.new # BatchRequestDto | The request parameters for copying/moving files.
}

begin
  # Move or copy files to a folder
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
  # Move or copy files to a folder
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
| **in_dto** | **BatchRequestDto** | The request parameters for copying/moving files. | [optional] |

### Return type

[**FileEntryBaseArrayWrapper**](FileEntryBaseArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_move_or_copy_dest_folder

> <CheckDestFolderWrapper> check_move_or_copy_dest_folder(opts)

Check for moving or copying files to a folder

Checks if files can be moved or copied to the specified folder.

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
  in_dto: DocspaceApiSdk::BatchRequestDto.new # BatchRequestDto | The request parameters for copying/moving files.
}

begin
  # Check for moving or copying files to a folder
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
  # Check for moving or copying files to a folder
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
| **in_dto** | **BatchRequestDto** | The request parameters for copying/moving files. | [optional] |

### Return type

[**CheckDestFolderWrapper**](CheckDestFolderWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## copy_batch_items

> <FileOperationArrayWrapper> copy_batch_items(opts)

Copy to the folder

Copies all the selected files and folders to the folder with the ID specified in the request.

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
  # Copy to the folder
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
  # Copy to the folder
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

> <ChunkedUploadSessionResponseWrapperIntegerWrapper> create_upload_session(folder_id, session_request)

Chunked upload

Creates the session to upload large files in multiple chunks to the folder with the ID specified in the request.

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
folder_id = 1 # Integer | The session folder ID.
session_request = DocspaceApiSdk::SessionRequest.new({file_name: 'My Document.docx'}) # SessionRequest | The session parameters.

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

> <Array(<ChunkedUploadSessionResponseWrapperIntegerWrapper>, Integer, Hash)> create_upload_session_with_http_info(folder_id, session_request)

```ruby
begin
  # Chunked upload
  data, status_code, headers = api_instance.create_upload_session_with_http_info(folder_id, session_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkedUploadSessionResponseWrapperIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->create_upload_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The session folder ID. |  |
| **session_request** | [**SessionRequest**](SessionRequest.md) | The session parameters. |  |

### Return type

[**ChunkedUploadSessionResponseWrapperIntegerWrapper**](ChunkedUploadSessionResponseWrapperIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_upload_session_in_folder

> <ChunkedUploadSessionResponseIntegerWrapper> create_upload_session_in_folder(folder_id, session_request)

Creates a session for uploading a file to a specific folder in chunks.

The session allows the user to upload a file in smaller chunks to the folder identified by its ID.  The file information, such as name, size, and additional metadata, must be provided in the request.  This method facilitates large file upload scenarios by enabling chunked file uploads.

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
folder_id = 1 # Integer | The session folder ID.
session_request = DocspaceApiSdk::SessionRequest.new({file_name: 'My Document.docx'}) # SessionRequest | The session parameters.

begin
  # Creates a session for uploading a file to a specific folder in chunks.
  result = api_instance.create_upload_session_in_folder(folder_id, session_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->create_upload_session_in_folder: #{e}"
end
```

#### Using the create_upload_session_in_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkedUploadSessionResponseIntegerWrapper>, Integer, Hash)> create_upload_session_in_folder_with_http_info(folder_id, session_request)

```ruby
begin
  # Creates a session for uploading a file to a specific folder in chunks.
  data, status_code, headers = api_instance.create_upload_session_in_folder_with_http_info(folder_id, session_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkedUploadSessionResponseIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->create_upload_session_in_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The session folder ID. |  |
| **session_request** | [**SessionRequest**](SessionRequest.md) | The session parameters. |  |

### Return type

[**ChunkedUploadSessionResponseIntegerWrapper**](ChunkedUploadSessionResponseIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_batch_items

> <FileOperationArrayWrapper> delete_batch_items(opts)

Delete files and folders

Deletes the files and folders with the IDs specified in the request.

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

Delete favorite files and folders (using body parameters)

Removes files and folders with the IDs specified in the request from the favorite list. This method uses the body parameters.

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
  # Delete favorite files and folders (using body parameters)
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
  # Delete favorite files and folders (using body parameters)
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

> <FileOperationWrapper> delete_file_versions(opts)

Delete file versions

Deletes the file versions with the IDs specified in the request.

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
  delete_version_batch_request_dto: DocspaceApiSdk::DeleteVersionBatchRequestDto.new({file_id: 1, versions: [1, 2, 3]}) # DeleteVersionBatchRequestDto | 
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

> <Array(<FileOperationWrapper>, Integer, Hash)> delete_file_versions_with_http_info(opts)

```ruby
begin
  # Delete file versions
  data, status_code, headers = api_instance.delete_file_versions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->delete_file_versions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_version_batch_request_dto** | [**DeleteVersionBatchRequestDto**](DeleteVersionBatchRequestDto.md) |  | [optional] |

### Return type

[**FileOperationWrapper**](FileOperationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## duplicate_batch_items

> <FileOperationArrayWrapper> duplicate_batch_items(opts)

Duplicate files and folders

Duplicates all the selected files and folders.

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

Deletes all the files and folders from the Trash folder.

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
  single: false # Boolean | Specifies whether to return only the current operation
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
| **single** | **Boolean** | Specifies whether to return only the current operation | [optional] |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## finalize_session

> <UploadSessionResponseIntegerWrapper> finalize_session(folder_id, session_id)

Finalize an upload session

Finalizes the upload session by processing the uploaded file chunks and marking the upload as complete.  This method consolidates chunked uploads into a complete file if required, sends notifications about the upload event,  and performs any additional cleanup or related actions, such as socket updates and webhook publishing.

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
folder_id = 1 # Integer | The folder ID.
session_id = 'doc_key_123' # String | The session ID.

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

> <Array(<UploadSessionResponseIntegerWrapper>, Integer, Hash)> finalize_session_with_http_info(folder_id, session_id)

```ruby
begin
  # Finalize an upload session
  data, status_code, headers = api_instance.finalize_session_with_http_info(folder_id, session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadSessionResponseIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->finalize_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID. |  |
| **session_id** | **String** | The session ID. |  |

### Return type

[**UploadSessionResponseIntegerWrapper**](UploadSessionResponseIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_operation_statuses

> <FileOperationArrayWrapper> get_operation_statuses(opts)

Get active file operations

Returns a list of all the active file operations.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::OperationsApi.new
opts = {
  id: 'operation-123-abc' # String | The ID of the file operation.
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
| **id** | **String** | The ID of the file operation. | [optional] |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_operation_statuses_by_type

> <FileOperationArrayWrapper> get_operation_statuses_by_type(operation_type, opts)

Get file operation statuses

Retrieves the statuses of operations filtered by the specified operation type.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-operation-statuses-by-type/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::OperationsApi.new
operation_type = DocspaceApiSdk::FileOperationType::Move # FileOperationType | Specifies the type of file operation to be retrieved.
opts = {
  id: 'operation-123-abc' # String | The ID of the file operation.
}

begin
  # Get file operation statuses
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
  # Get file operation statuses
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
| **operation_type** | **FileOperationType** | Specifies the type of file operation to be retrieved. |  |
| **id** | **String** | The ID of the file operation. | [optional] |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mark_as_read

> <FileOperationArrayWrapper> mark_as_read(opts)

Mark as read

Marks the files and folders with the IDs specified in the request as read.

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
  # Mark as read
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
  # Mark as read
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

Move or copy to a folder

Moves or copies all the selected files and folders to the folder with the ID specified in the request.

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
  # Move or copy to a folder
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
  # Move or copy to a folder
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

Starts a conversion operation of a file with the ID specified in the request.

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
file_id = 1 # Integer | The file ID to start conversion proccess.
opts = {
  check_conversion_request_dto_integer: DocspaceApiSdk::CheckConversionRequestDtoInteger.new # CheckConversionRequestDtoInteger | The parameters for checking file conversion.
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
| **file_id** | **Integer** | The file ID to start conversion proccess. |  |
| **check_conversion_request_dto_integer** | [**CheckConversionRequestDtoInteger**](CheckConversionRequestDtoInteger.md) | The parameters for checking file conversion. | [optional] |

### Return type

[**ConversationResultArrayWrapper**](ConversationResultArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## terminate_tasks

> <FileOperationArrayWrapper> terminate_tasks(id)

Finish active operations

Finishes an operation with the ID specified in the request or all the active operations.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tasks/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::OperationsApi.new
id = 'some-operation-id' # String | The operation unique identifier.

begin
  # Finish active operations
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
  # Finish active operations
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
| **id** | **String** | The operation unique identifier. |  |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_file_comment

> <StringWrapper> update_file_comment(file_id, update_comment)

Update a comment

Updates a comment in a file with the ID specified in the request.

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
file_id = 1 # Integer | The file ID where the comment is located.
update_comment = DocspaceApiSdk::UpdateComment.new({version: 1}) # UpdateComment | The parameters for updating a comment.

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
| **file_id** | **Integer** | The file ID where the comment is located. |  |
| **update_comment** | [**UpdateComment**](UpdateComment.md) | The parameters for updating a comment. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_async_session

> <ChunkedUploadSessionResponseIntegerWrapper> upload_async_session(folder_id, session_id, opts)

Handles the upload of a chunk for an existing upload session.

This method allows the caller to upload a specific chunk of a file to an ongoing upload session.  The session is identified by the session ID provided in the request. The chunk can be of any size  within the limits allowed during the session initialization. Each chunk must be uploaded in the  correct order for the server to process it appropriately.  The server updates the upload session status and stores the progress information after processing  each chunk. The updated session details are returned in the response.

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
folder_id = 1 # Integer | The folder ID.
session_id = 'session_abc123' # String | The upload session ID.
opts = {
  chunk_number: 1, # Integer | The chunk number.
  file: File.new('/path/to/some/file') # File | The file chunk to be uploaded as part of the multipart/form-data request.  This property represents the uploaded file chunk content from the HTTP request form for chunked upload operations.  The file chunk is accessed via the IFormFile interface which provides access to the chunk content and length.
}

begin
  # Handles the upload of a chunk for an existing upload session.
  result = api_instance.upload_async_session(folder_id, session_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->upload_async_session: #{e}"
end
```

#### Using the upload_async_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkedUploadSessionResponseIntegerWrapper>, Integer, Hash)> upload_async_session_with_http_info(folder_id, session_id, opts)

```ruby
begin
  # Handles the upload of a chunk for an existing upload session.
  data, status_code, headers = api_instance.upload_async_session_with_http_info(folder_id, session_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkedUploadSessionResponseIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->upload_async_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID. |  |
| **session_id** | **String** | The upload session ID. |  |
| **chunk_number** | **Integer** | The chunk number. | [optional] |
| **file** | **File** | The file chunk to be uploaded as part of the multipart/form-data request.  This property represents the uploaded file chunk content from the HTTP request form for chunked upload operations.  The file chunk is accessed via the IFormFile interface which provides access to the chunk content and length. | [optional] |

### Return type

[**ChunkedUploadSessionResponseIntegerWrapper**](ChunkedUploadSessionResponseIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## upload_session

> <UploadSessionResponseIntegerWrapper> upload_session(folder_id, session_id, opts)

Resumes an ongoing file upload session for uploading additional chunks of data.

This method allows continuing an interrupted or partially completed file upload session by uploading subsequent data chunks.  The server will validate each uploaded chunk, update the session state, and respond with the status of the current upload. Once  the total bytes uploaded match the total file size, the file upload process is finalized and related events are triggered.  If the file is newly uploaded, the server responds with a 201 Created status upon completion. If it overwrites an existing file,  versioning information is updated accordingly. The method also triggers associated webhooks and socket notifications to reflect  the updated file state.

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
folder_id = 1 # Integer | The folder ID.
session_id = 'session_abc123' # String | The upload session ID.
opts = {
  file: File.new('/path/to/some/file') # File | The file to be uploaded as part of the multipart/form-data request.  This property represents the uploaded file content from the HTTP request form.  The file is accessed via the IFormFile interface which provides access to the file name, content type, length, and stream.
}

begin
  # Resumes an ongoing file upload session for uploading additional chunks of data.
  result = api_instance.upload_session(folder_id, session_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->upload_session: #{e}"
end
```

#### Using the upload_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadSessionResponseIntegerWrapper>, Integer, Hash)> upload_session_with_http_info(folder_id, session_id, opts)

```ruby
begin
  # Resumes an ongoing file upload session for uploading additional chunks of data.
  data, status_code, headers = api_instance.upload_session_with_http_info(folder_id, session_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadSessionResponseIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::OperationsApi->upload_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID. |  |
| **session_id** | **String** | The upload session ID. |  |
| **file** | **File** | The file to be uploaded as part of the multipart/form-data request.  This property represents the uploaded file content from the HTTP request form.  The file is accessed via the IFormFile interface which provides access to the file name, content type, length, and stream. | [optional] |

### Return type

[**UploadSessionResponseIntegerWrapper**](UploadSessionResponseIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

