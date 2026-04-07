# DocspaceApiSdk::FilesFoldersApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_upload**](FilesFoldersApi.md#check_upload) | **POST** /api/2.0/files/{folderId}/upload/check | Check file uploads |
| [**create_folder**](FilesFoldersApi.md#create_folder) | **POST** /api/2.0/files/folder/{folderId} | Create a folder |
| [**create_folder_primary_external_link**](FilesFoldersApi.md#create_folder_primary_external_link) | **POST** /api/2.0/files/folder/{id}/link | Create primary external link |
| [**create_report_folder_history**](FilesFoldersApi.md#create_report_folder_history) | **POST** /api/2.0/files/folder/{folderId}/log/report | Generates folder history |
| [**delete_folder**](FilesFoldersApi.md#delete_folder) | **DELETE** /api/2.0/files/folder/{folderId} | Delete a folder |
| [**generate_xlsx_by_folder**](FilesFoldersApi.md#generate_xlsx_by_folder) | **POST** /api/2.0/files/folder/{folderId}/xlsx | Generate XLSX report by folder |
| [**get_favorites_folder**](FilesFoldersApi.md#get_favorites_folder) | **GET** /api/2.0/files/@favorites | Get the Favorites section |
| [**get_files_used_space**](FilesFoldersApi.md#get_files_used_space) | **GET** /api/2.0/files/filesusedspace | Get used space of files |
| [**get_folder**](FilesFoldersApi.md#get_folder) | **GET** /api/2.0/files/{folderId}/formfilter | Get folder form filter |
| [**get_folder_by_folder_id**](FilesFoldersApi.md#get_folder_by_folder_id) | **GET** /api/2.0/files/{folderId} | Get a folder by ID |
| [**get_folder_history**](FilesFoldersApi.md#get_folder_history) | **GET** /api/2.0/files/folder/{folderId}/log | Get folder history |
| [**get_folder_info**](FilesFoldersApi.md#get_folder_info) | **GET** /api/2.0/files/folder/{folderId} | Get folder information |
| [**get_folder_links**](FilesFoldersApi.md#get_folder_links) | **GET** /api/2.0/files/folder/{id}/links | Get the folder links |
| [**get_folder_path**](FilesFoldersApi.md#get_folder_path) | **GET** /api/2.0/files/folder/{folderId}/path | Get the folder path |
| [**get_folder_primary_external_link**](FilesFoldersApi.md#get_folder_primary_external_link) | **GET** /api/2.0/files/folder/{id}/link | Get primary external link |
| [**get_folders**](FilesFoldersApi.md#get_folders) | **GET** /api/2.0/files/{folderId}/subfolders | Get subfolders |
| [**get_my_folder**](FilesFoldersApi.md#get_my_folder) | **GET** /api/2.0/files/@my | Get the My documents section |
| [**get_new_folder_items**](FilesFoldersApi.md#get_new_folder_items) | **GET** /api/2.0/files/{folderId}/news | Get new folder items |
| [**get_privacy_folder**](FilesFoldersApi.md#get_privacy_folder) | **GET** /api/2.0/files/@privacy | Get the Private Room section |
| [**get_recent_folder**](FilesFoldersApi.md#get_recent_folder) | **GET** /api/2.0/files/recent | Get the Recent section |
| [**get_root_folders**](FilesFoldersApi.md#get_root_folders) | **GET** /api/2.0/files/@root | Get filtered sections |
| [**get_trash_folder**](FilesFoldersApi.md#get_trash_folder) | **GET** /api/2.0/files/@trash | Get the Trash section |
| [**insert_file**](FilesFoldersApi.md#insert_file) | **POST** /api/2.0/files/{folderId}/insert | Insert a file |
| [**insert_file_to_my_from_body**](FilesFoldersApi.md#insert_file_to_my_from_body) | **POST** /api/2.0/files/@my/insert | Insert a file to the My documents section |
| [**rename_folder**](FilesFoldersApi.md#rename_folder) | **PUT** /api/2.0/files/folder/{folderId} | Rename a folder |
| [**set_folder_order**](FilesFoldersApi.md#set_folder_order) | **PUT** /api/2.0/files/folder/{folderId}/order | Set folder order |
| [**set_folder_primary_external_link**](FilesFoldersApi.md#set_folder_primary_external_link) | **PUT** /api/2.0/files/folder/{id}/links | Set the folder external link |
| [**upload_file**](FilesFoldersApi.md#upload_file) | **POST** /api/2.0/files/{folderId}/upload | Upload a file |
| [**upload_file_to_my**](FilesFoldersApi.md#upload_file_to_my) | **POST** /api/2.0/files/@my/upload | Upload a file to the My documents section |


## check_upload

> <STRINGArrayWrapper> check_upload(folder_id, check_upload_request)

Check file uploads

Checks the file uploads to the folder with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-upload/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 1 # Integer | The folder ID.
check_upload_request = DocspaceApiSdk::CheckUploadRequest.new # CheckUploadRequest | The request parameters for checking file uploads.

begin
  # Check file uploads
  result = api_instance.check_upload(folder_id, check_upload_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->check_upload: #{e}"
end
```

#### Using the check_upload_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<STRINGArrayWrapper>, Integer, Hash)> check_upload_with_http_info(folder_id, check_upload_request)

```ruby
begin
  # Check file uploads
  data, status_code, headers = api_instance.check_upload_with_http_info(folder_id, check_upload_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <STRINGArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->check_upload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID. |  |
| **check_upload_request** | [**CheckUploadRequest**](CheckUploadRequest.md) | The request parameters for checking file uploads. |  |

### Return type

[**STRINGArrayWrapper**](STRINGArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_folder

> <FolderIntegerWrapper> create_folder(folder_id, create_folder)

Create a folder

Creates a new folder with the title specified in the request. The parent folder ID can be also specified.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 1 # Integer | The folder ID for the folder creation.
create_folder = DocspaceApiSdk::CreateFolder.new({title: 'New Folder'}) # CreateFolder | The parameters for creating a folder.

begin
  # Create a folder
  result = api_instance.create_folder(folder_id, create_folder)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->create_folder: #{e}"
end
```

#### Using the create_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> create_folder_with_http_info(folder_id, create_folder)

```ruby
begin
  # Create a folder
  data, status_code, headers = api_instance.create_folder_with_http_info(folder_id, create_folder)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->create_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID for the folder creation. |  |
| **create_folder** | [**CreateFolder**](CreateFolder.md) | The parameters for creating a folder. |  |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_folder_primary_external_link

> <FileShareWrapper> create_folder_primary_external_link(id, folder_link_request)

Create primary external link

Creates a primary external link by the identifier specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-folder-primary-external-link/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
id = 1 # Integer | The folder ID.
folder_link_request = DocspaceApiSdk::FolderLinkRequest.new # FolderLinkRequest | The folder link parameters.

begin
  # Create primary external link
  result = api_instance.create_folder_primary_external_link(id, folder_link_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->create_folder_primary_external_link: #{e}"
end
```

#### Using the create_folder_primary_external_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareWrapper>, Integer, Hash)> create_folder_primary_external_link_with_http_info(id, folder_link_request)

```ruby
begin
  # Create primary external link
  data, status_code, headers = api_instance.create_folder_primary_external_link_with_http_info(id, folder_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->create_folder_primary_external_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The folder ID. |  |
| **folder_link_request** | [**FolderLinkRequest**](FolderLinkRequest.md) | The folder link parameters. |  |

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_report_folder_history

> <StringWrapper> create_report_folder_history(folder_id)

Generates folder history

Generates the activity history of a folder.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-report-folder-history/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 56 # Integer | 

begin
  # Generates folder history
  result = api_instance.create_report_folder_history(folder_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->create_report_folder_history: #{e}"
end
```

#### Using the create_report_folder_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> create_report_folder_history_with_http_info(folder_id)

```ruby
begin
  # Generates folder history
  data, status_code, headers = api_instance.create_report_folder_history_with_http_info(folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->create_report_folder_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** |  |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_folder

> <FileOperationArrayWrapper> delete_folder(folder_id, delete_folder)

Delete a folder

Deletes a folder with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-folder/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 10 # Integer | The folder ID to delete.
delete_folder = DocspaceApiSdk::DeleteFolder.new # DeleteFolder | The parameters for deleting a folder.

begin
  # Delete a folder
  result = api_instance.delete_folder(folder_id, delete_folder)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->delete_folder: #{e}"
end
```

#### Using the delete_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationArrayWrapper>, Integer, Hash)> delete_folder_with_http_info(folder_id, delete_folder)

```ruby
begin
  # Delete a folder
  data, status_code, headers = api_instance.delete_folder_with_http_info(folder_id, delete_folder)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->delete_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID to delete. |  |
| **delete_folder** | [**DeleteFolder**](DeleteFolder.md) | The parameters for deleting a folder. |  |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_xlsx_by_folder

> <FileIntegerWrapper> generate_xlsx_by_folder(folder_id)

Generate XLSX report by folder

Triggers asynchronous XLSX report generation for the specified form results folder.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-xlsx-by-folder/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 1 # Integer | The folder unique identifier.

begin
  # Generate XLSX report by folder
  result = api_instance.generate_xlsx_by_folder(folder_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->generate_xlsx_by_folder: #{e}"
end
```

#### Using the generate_xlsx_by_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> generate_xlsx_by_folder_with_http_info(folder_id)

```ruby
begin
  # Generate XLSX report by folder
  data, status_code, headers = api_instance.generate_xlsx_by_folder_with_http_info(folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->generate_xlsx_by_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder unique identifier. |  |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_favorites_folder

> <FolderContentIntegerWrapper> get_favorites_folder(opts)

Get the Favorites section

Returns the detailed list of files and folders located in the Favorites section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-favorites-folder/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
opts = {
  user_id_or_group_id: '00000000-0000-0000-0000-000000000000', # String | The user or group ID.
  filter_type: DocspaceApiSdk::FilterType::None, # FilterType | The filter type.
  count: 25, # Integer | The maximum number of items to retrieve in the request.
  start_index: 0, # Integer | The zero-based index of the first item to retrieve in a paginated list.
  sort_by: 'DateAndTime', # String | Specifies the field by which the folder content should be sorted.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The order in which the results are sorted.
  filter_value: 'My Document' # String | The text used as a filter or search criterion for folder content queries.
}

begin
  # Get the Favorites section
  result = api_instance.get_favorites_folder(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_favorites_folder: #{e}"
end
```

#### Using the get_favorites_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderContentIntegerWrapper>, Integer, Hash)> get_favorites_folder_with_http_info(opts)

```ruby
begin
  # Get the Favorites section
  data, status_code, headers = api_instance.get_favorites_folder_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderContentIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_favorites_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id_or_group_id** | **String** | The user or group ID. | [optional] |
| **filter_type** | **FilterType** | The filter type. | [optional] |
| **count** | **Integer** | The maximum number of items to retrieve in the request. | [optional] |
| **start_index** | **Integer** | The zero-based index of the first item to retrieve in a paginated list. | [optional] |
| **sort_by** | **String** | Specifies the field by which the folder content should be sorted. | [optional] |
| **sort_order** | **SortOrder** | The order in which the results are sorted. | [optional] |
| **filter_value** | **String** | The text used as a filter or search criterion for folder content queries. | [optional] |

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_files_used_space

> <FilesStatisticsResultWrapper> get_files_used_space

Get used space of files

Returns the used space of files in the root folders.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-used-space/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new

begin
  # Get used space of files
  result = api_instance.get_files_used_space
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_files_used_space: #{e}"
end
```

#### Using the get_files_used_space_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilesStatisticsResultWrapper>, Integer, Hash)> get_files_used_space_with_http_info

```ruby
begin
  # Get used space of files
  data, status_code, headers = api_instance.get_files_used_space_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilesStatisticsResultWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_files_used_space_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**FilesStatisticsResultWrapper**](FilesStatisticsResultWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folder

> <FormsItemArrayWrapper> get_folder(folder_id)

Get folder form filter

Returns the form filter of a folder with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 1 # Integer | The folder unique identifier.

begin
  # Get folder form filter
  result = api_instance.get_folder(folder_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folder: #{e}"
end
```

#### Using the get_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormsItemArrayWrapper>, Integer, Hash)> get_folder_with_http_info(folder_id)

```ruby
begin
  # Get folder form filter
  data, status_code, headers = api_instance.get_folder_with_http_info(folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormsItemArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder unique identifier. |  |

### Return type

[**FormsItemArrayWrapper**](FormsItemArrayWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folder_by_folder_id

> <FolderContentIntegerWrapper> get_folder_by_folder_id(folder_id, opts)

Get a folder by ID

Returns the detailed list of files and folders located in the folder with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-by-folder-id/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 1 # Integer | The folder ID.
opts = {
  user_id_or_group_id: '00000000-0000-0000-0000-000000000000', # String | The user or group ID.
  shared_by: '00000000-0000-0000-0000-000000000000', # String | The identifier of the user who shared the folder or file.
  filter_type: DocspaceApiSdk::FilterType::None, # FilterType | The filter type.
  room_id: 1, # Integer | The room ID.
  exclude_subject: false, # Boolean | Specifies whether to exclude search by user or group ID.
  apply_filter_option: DocspaceApiSdk::ApplyFilterOption::All, # ApplyFilterOption | Specifies whether to return only files, only folders, or all elements from the specified folder.
  extension: '.docx', # String | Specifies whether to search for the specific file extension.
  search_area: DocspaceApiSdk::SearchArea::Active, # SearchArea | The search area.
  forms_item_key: 'doc_key_123', # String | The forms item key.
  forms_item_type: 'text', # String | The forms item type.
  count: 25, # Integer | The maximum number of items to retrieve in the request.
  start_index: 0, # Integer | The zero-based index of the first item to retrieve in a paginated request.
  sort_by: 'DateAndTime', # String | The property used for sorting the folder request results.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The order in which the results are sorted.
  filter_value: 'My Document', # String | The text value used as a filter parameter for folder content queries.
  location: DocspaceApiSdk::Location::Room # Location | The location context of the request, specifying the area  where the operation is performed, such as a room, documents, or a link.
}

begin
  # Get a folder by ID
  result = api_instance.get_folder_by_folder_id(folder_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folder_by_folder_id: #{e}"
end
```

#### Using the get_folder_by_folder_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderContentIntegerWrapper>, Integer, Hash)> get_folder_by_folder_id_with_http_info(folder_id, opts)

```ruby
begin
  # Get a folder by ID
  data, status_code, headers = api_instance.get_folder_by_folder_id_with_http_info(folder_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderContentIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folder_by_folder_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID. |  |
| **user_id_or_group_id** | **String** | The user or group ID. | [optional] |
| **shared_by** | **String** | The identifier of the user who shared the folder or file. | [optional] |
| **filter_type** | **FilterType** | The filter type. | [optional] |
| **room_id** | **Integer** | The room ID. | [optional] |
| **exclude_subject** | **Boolean** | Specifies whether to exclude search by user or group ID. | [optional] |
| **apply_filter_option** | **ApplyFilterOption** | Specifies whether to return only files, only folders, or all elements from the specified folder. | [optional] |
| **extension** | **String** | Specifies whether to search for the specific file extension. | [optional] |
| **search_area** | **SearchArea** | The search area. | [optional] |
| **forms_item_key** | **String** | The forms item key. | [optional] |
| **forms_item_type** | **String** | The forms item type. | [optional] |
| **count** | **Integer** | The maximum number of items to retrieve in the request. | [optional] |
| **start_index** | **Integer** | The zero-based index of the first item to retrieve in a paginated request. | [optional] |
| **sort_by** | **String** | The property used for sorting the folder request results. | [optional] |
| **sort_order** | **SortOrder** | The order in which the results are sorted. | [optional] |
| **filter_value** | **String** | The text value used as a filter parameter for folder content queries. | [optional] |
| **location** | **Location** | The location context of the request, specifying the area  where the operation is performed, such as a room, documents, or a link. | [optional] |

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folder_history

> <HistoryArrayWrapper> get_folder_history(folder_id, opts)

Get folder history

Returns the activity history of a folder with a specified identifier.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-history/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 1 # Integer | The folder ID of the history request.
opts = {
  from_date: DocspaceApiSdk::ApiDateTime.new, # ApiDateTime | The start date of the history request.
  to_date: DocspaceApiSdk::ApiDateTime.new, # ApiDateTime | The end date of the history request.
  count: 25, # Integer | The number of records to retrieve for the folder history.
  start_index: 0 # Integer | The starting index from which the history records are retrieved in the request.
}

begin
  # Get folder history
  result = api_instance.get_folder_history(folder_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folder_history: #{e}"
end
```

#### Using the get_folder_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HistoryArrayWrapper>, Integer, Hash)> get_folder_history_with_http_info(folder_id, opts)

```ruby
begin
  # Get folder history
  data, status_code, headers = api_instance.get_folder_history_with_http_info(folder_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HistoryArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folder_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID of the history request. |  |
| **from_date** | **ApiDateTime** | The start date of the history request. | [optional] |
| **to_date** | **ApiDateTime** | The end date of the history request. | [optional] |
| **count** | **Integer** | The number of records to retrieve for the folder history. | [optional] |
| **start_index** | **Integer** | The starting index from which the history records are retrieved in the request. | [optional] |

### Return type

[**HistoryArrayWrapper**](HistoryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folder_info

> <FolderIntegerWrapper> get_folder_info(folder_id)

Get folder information

Returns the detailed information about a folder with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-info/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 1 # Integer | The folder unique identifier.

begin
  # Get folder information
  result = api_instance.get_folder_info(folder_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folder_info: #{e}"
end
```

#### Using the get_folder_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> get_folder_info_with_http_info(folder_id)

```ruby
begin
  # Get folder information
  data, status_code, headers = api_instance.get_folder_info_with_http_info(folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folder_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder unique identifier. |  |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folder_links

> <FileShareArrayWrapper> get_folder_links(id)

Get the folder links

Returns the links of the folder with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-links/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
id = 1 # Integer | The folder ID.

begin
  # Get the folder links
  result = api_instance.get_folder_links(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folder_links: #{e}"
end
```

#### Using the get_folder_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> get_folder_links_with_http_info(id)

```ruby
begin
  # Get the folder links
  data, status_code, headers = api_instance.get_folder_links_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folder_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The folder ID. |  |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folder_path

> <FileEntryBaseArrayWrapper> get_folder_path(folder_id)

Get the folder path

Returns a path to the folder with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-path/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 1 # Integer | The folder unique identifier.

begin
  # Get the folder path
  result = api_instance.get_folder_path(folder_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folder_path: #{e}"
end
```

#### Using the get_folder_path_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileEntryBaseArrayWrapper>, Integer, Hash)> get_folder_path_with_http_info(folder_id)

```ruby
begin
  # Get the folder path
  data, status_code, headers = api_instance.get_folder_path_with_http_info(folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileEntryBaseArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folder_path_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder unique identifier. |  |

### Return type

[**FileEntryBaseArrayWrapper**](FileEntryBaseArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folder_primary_external_link

> <FileShareWrapper> get_folder_primary_external_link(id, opts)

Get primary external link

Returns the primary external link by the identifier specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-primary-external-link/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FoldersApi.new
id = 10 # Integer | The folder unique identifier.
opts = {
  count: 25, # Integer | The number of items to retrieve in the request.
  start_index: 0 # Integer | The starting index for the query results.
}

begin
  # Get primary external link
  result = api_instance.get_folder_primary_external_link(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folder_primary_external_link: #{e}"
end
```

#### Using the get_folder_primary_external_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareWrapper>, Integer, Hash)> get_folder_primary_external_link_with_http_info(id, opts)

```ruby
begin
  # Get primary external link
  data, status_code, headers = api_instance.get_folder_primary_external_link_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folder_primary_external_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The folder unique identifier. |  |
| **count** | **Integer** | The number of items to retrieve in the request. | [optional] |
| **start_index** | **Integer** | The starting index for the query results. | [optional] |

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folders

> <FileEntryBaseArrayWrapper> get_folders(folder_id)

Get subfolders

Returns a list of all the subfolders from a folder with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folders/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 1 # Integer | The folder unique identifier.

begin
  # Get subfolders
  result = api_instance.get_folders(folder_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folders: #{e}"
end
```

#### Using the get_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileEntryBaseArrayWrapper>, Integer, Hash)> get_folders_with_http_info(folder_id)

```ruby
begin
  # Get subfolders
  data, status_code, headers = api_instance.get_folders_with_http_info(folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileEntryBaseArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_folders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder unique identifier. |  |

### Return type

[**FileEntryBaseArrayWrapper**](FileEntryBaseArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_my_folder

> <FolderContentIntegerWrapper> get_my_folder(opts)

Get the My documents section

Returns the detailed list of files and folders located in the My documents section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-my-folder/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
opts = {
  user_id_or_group_id: '00000000-0000-0000-0000-000000000000', # String | The user or group ID.
  filter_type: DocspaceApiSdk::FilterType::None, # FilterType | The filter type.
  apply_filter_option: DocspaceApiSdk::ApplyFilterOption::All, # ApplyFilterOption | Specifies whether to return only files, only folders or all elements.
  count: 25, # Integer | The maximum number of items to retrieve in the response.
  start_index: 0, # Integer | The starting position of the items to be retrieved.
  sort_by: 'DateAndTime', # String | The property used to specify the sorting criteria for folder contents.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The order in which the results are sorted.
  filter_value: 'My Document' # String | The text used for filtering or searching folder contents.
}

begin
  # Get the My documents section
  result = api_instance.get_my_folder(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_my_folder: #{e}"
end
```

#### Using the get_my_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderContentIntegerWrapper>, Integer, Hash)> get_my_folder_with_http_info(opts)

```ruby
begin
  # Get the My documents section
  data, status_code, headers = api_instance.get_my_folder_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderContentIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_my_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id_or_group_id** | **String** | The user or group ID. | [optional] |
| **filter_type** | **FilterType** | The filter type. | [optional] |
| **apply_filter_option** | **ApplyFilterOption** | Specifies whether to return only files, only folders or all elements. | [optional] |
| **count** | **Integer** | The maximum number of items to retrieve in the response. | [optional] |
| **start_index** | **Integer** | The starting position of the items to be retrieved. | [optional] |
| **sort_by** | **String** | The property used to specify the sorting criteria for folder contents. | [optional] |
| **sort_order** | **SortOrder** | The order in which the results are sorted. | [optional] |
| **filter_value** | **String** | The text used for filtering or searching folder contents. | [optional] |

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_new_folder_items

> <FileEntryBaseArrayWrapper> get_new_folder_items(folder_id)

Get new folder items

Returns a list of all the new items from a folder with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-new-folder-items/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 1 # Integer | The folder unique identifier.

begin
  # Get new folder items
  result = api_instance.get_new_folder_items(folder_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_new_folder_items: #{e}"
end
```

#### Using the get_new_folder_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileEntryBaseArrayWrapper>, Integer, Hash)> get_new_folder_items_with_http_info(folder_id)

```ruby
begin
  # Get new folder items
  data, status_code, headers = api_instance.get_new_folder_items_with_http_info(folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileEntryBaseArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_new_folder_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder unique identifier. |  |

### Return type

[**FileEntryBaseArrayWrapper**](FileEntryBaseArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_privacy_folder

> <FolderContentIntegerWrapper> get_privacy_folder(opts)

Get the Private Room section

Returns the detailed list of files and folders located in the Private Room section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-privacy-folder/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
opts = {
  user_id_or_group_id: '00000000-0000-0000-0000-000000000000', # String | The user or group ID.
  filter_type: DocspaceApiSdk::FilterType::None, # FilterType | The filter type.
  count: 25, # Integer | The maximum number of items to retrieve in the request.
  start_index: 0, # Integer | The zero-based index of the first item to retrieve in a paginated list.
  sort_by: 'DateAndTime', # String | Specifies the field by which the folder content should be sorted.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The order in which the results are sorted.
  filter_value: 'My Document' # String | The text used as a filter or search criterion for folder content queries.
}

begin
  # Get the Private Room section
  result = api_instance.get_privacy_folder(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_privacy_folder: #{e}"
end
```

#### Using the get_privacy_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderContentIntegerWrapper>, Integer, Hash)> get_privacy_folder_with_http_info(opts)

```ruby
begin
  # Get the Private Room section
  data, status_code, headers = api_instance.get_privacy_folder_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderContentIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_privacy_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id_or_group_id** | **String** | The user or group ID. | [optional] |
| **filter_type** | **FilterType** | The filter type. | [optional] |
| **count** | **Integer** | The maximum number of items to retrieve in the request. | [optional] |
| **start_index** | **Integer** | The zero-based index of the first item to retrieve in a paginated list. | [optional] |
| **sort_by** | **String** | Specifies the field by which the folder content should be sorted. | [optional] |
| **sort_order** | **SortOrder** | The order in which the results are sorted. | [optional] |
| **filter_value** | **String** | The text used as a filter or search criterion for folder content queries. | [optional] |

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_recent_folder

> <FolderContentIntegerWrapper> get_recent_folder(opts)

Get the Recent section

Returns the detailed list of files located in the Recent section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-recent-folder/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
opts = {
  user_id_or_group_id: '00000000-0000-0000-0000-000000000000', # String | The user or group ID.
  filter_type: DocspaceApiSdk::FilterType::None, # FilterType | The filter type.
  exclude_subject: false, # Boolean | Specifies whether to exclude search by user or group ID.
  apply_filter_option: DocspaceApiSdk::ApplyFilterOption::All, # ApplyFilterOption | Specifies whether to return only files, only folders or all elements.
  search_area: DocspaceApiSdk::SearchArea::Active, # SearchArea | The search area.
  extension: [.docx], # Array<String> | Specifies whether to search for a specific file extension in the Recent folder.
  count: 25, # Integer | The maximum number of items to return.
  start_index: 0, # Integer | The starting position of the results to be returned in the query response.
  sort_by: 'DateAndTime', # String | Specifies the sorting criteria for the folder request.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The order in which the results are sorted.
  filter_value: 'My Document' # String | The text used for filtering or searching folder contents.
}

begin
  # Get the Recent section
  result = api_instance.get_recent_folder(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_recent_folder: #{e}"
end
```

#### Using the get_recent_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderContentIntegerWrapper>, Integer, Hash)> get_recent_folder_with_http_info(opts)

```ruby
begin
  # Get the Recent section
  data, status_code, headers = api_instance.get_recent_folder_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderContentIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_recent_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id_or_group_id** | **String** | The user or group ID. | [optional] |
| **filter_type** | **FilterType** | The filter type. | [optional] |
| **exclude_subject** | **Boolean** | Specifies whether to exclude search by user or group ID. | [optional] |
| **apply_filter_option** | **ApplyFilterOption** | Specifies whether to return only files, only folders or all elements. | [optional] |
| **search_area** | **SearchArea** | The search area. | [optional] |
| **extension** | [**Array&lt;String&gt;**](String.md) | Specifies whether to search for a specific file extension in the Recent folder. | [optional] |
| **count** | **Integer** | The maximum number of items to return. | [optional] |
| **start_index** | **Integer** | The starting position of the results to be returned in the query response. | [optional] |
| **sort_by** | **String** | Specifies the sorting criteria for the folder request. | [optional] |
| **sort_order** | **SortOrder** | The order in which the results are sorted. | [optional] |
| **filter_value** | **String** | The text used for filtering or searching folder contents. | [optional] |

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_root_folders

> <FolderContentIntegerArrayWrapper> get_root_folders(opts)

Get filtered sections

Returns all the sections matching the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-root-folders/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
opts = {
  user_id_or_group_id: '00000000-0000-0000-0000-000000000000', # String | The user or group ID.
  filter_type: DocspaceApiSdk::FilterType::None, # FilterType | The filter type.
  without_trash: false, # Boolean | Specifies whether to return the Trash section or not.
  count: 25, # Integer | The maximum number of items to retrieve in the response.
  start_index: 0, # Integer | The starting position of the items to be retrieved.
  sort_by: 'DateAndTime', # String | Specifies the field by which the folder content should be sorted.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The order in which the results are sorted.
  filter_value: 'My Document' # String | The text used as a filter for searching or retrieving folder contents.
}

begin
  # Get filtered sections
  result = api_instance.get_root_folders(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_root_folders: #{e}"
end
```

#### Using the get_root_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderContentIntegerArrayWrapper>, Integer, Hash)> get_root_folders_with_http_info(opts)

```ruby
begin
  # Get filtered sections
  data, status_code, headers = api_instance.get_root_folders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderContentIntegerArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_root_folders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id_or_group_id** | **String** | The user or group ID. | [optional] |
| **filter_type** | **FilterType** | The filter type. | [optional] |
| **without_trash** | **Boolean** | Specifies whether to return the Trash section or not. | [optional] |
| **count** | **Integer** | The maximum number of items to retrieve in the response. | [optional] |
| **start_index** | **Integer** | The starting position of the items to be retrieved. | [optional] |
| **sort_by** | **String** | Specifies the field by which the folder content should be sorted. | [optional] |
| **sort_order** | **SortOrder** | The order in which the results are sorted. | [optional] |
| **filter_value** | **String** | The text used as a filter for searching or retrieving folder contents. | [optional] |

### Return type

[**FolderContentIntegerArrayWrapper**](FolderContentIntegerArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_trash_folder

> <FolderContentIntegerWrapper> get_trash_folder(opts)

Get the Trash section

Returns the detailed list of files and folders located in the Trash section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-trash-folder/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
opts = {
  user_id_or_group_id: '00000000-0000-0000-0000-000000000000', # String | The user or group ID.
  filter_type: DocspaceApiSdk::FilterType::None, # FilterType | The filter type.
  apply_filter_option: DocspaceApiSdk::ApplyFilterOption::All, # ApplyFilterOption | Specifies whether to return only files, only folders or all elements.
  count: 25, # Integer | The maximum number of items to retrieve in the response.
  start_index: 0, # Integer | The starting position of the items to be retrieved.
  sort_by: 'DateAndTime', # String | The property used to specify the sorting criteria for folder contents.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The order in which the results are sorted.
  filter_value: 'My Document' # String | The text used for filtering or searching folder contents.
}

begin
  # Get the Trash section
  result = api_instance.get_trash_folder(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_trash_folder: #{e}"
end
```

#### Using the get_trash_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderContentIntegerWrapper>, Integer, Hash)> get_trash_folder_with_http_info(opts)

```ruby
begin
  # Get the Trash section
  data, status_code, headers = api_instance.get_trash_folder_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderContentIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->get_trash_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id_or_group_id** | **String** | The user or group ID. | [optional] |
| **filter_type** | **FilterType** | The filter type. | [optional] |
| **apply_filter_option** | **ApplyFilterOption** | Specifies whether to return only files, only folders or all elements. | [optional] |
| **count** | **Integer** | The maximum number of items to retrieve in the response. | [optional] |
| **start_index** | **Integer** | The starting position of the items to be retrieved. | [optional] |
| **sort_by** | **String** | The property used to specify the sorting criteria for folder contents. | [optional] |
| **sort_order** | **SortOrder** | The order in which the results are sorted. | [optional] |
| **filter_value** | **String** | The text used for filtering or searching folder contents. | [optional] |

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## insert_file

> <FileIntegerWrapper> insert_file(folder_id, opts)

Insert a file

Inserts a file specified in the request to the selected folder by single file uploading.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 1 # Integer | The folder ID for inserting a file.
opts = {
  insert_file_file: File.new('/path/to/some/file'), # File | The file to be inserted.
  insert_file_title: 'insert_file_title_example', # String | The file title to be inserted.
  insert_file_create_new_if_exist: true, # Boolean | Specifies whether to create a new file if it already exists or not.
  insert_file_keep_convert_status: true, # Boolean | Specifies whether to keep the file converting status or not.
  insert_file_stream_can_read: true, # Boolean | 
  insert_file_stream_can_write: true, # Boolean | 
  insert_file_stream_can_seek: true, # Boolean | 
  insert_file_stream_can_timeout: true, # Boolean | 
  insert_file_stream_length: 789, # Integer | 
  insert_file_stream_position: 789, # Integer | 
  insert_file_stream_read_timeout: 56, # Integer | 
  insert_file_stream_write_timeout: 56 # Integer | 
}

begin
  # Insert a file
  result = api_instance.insert_file(folder_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->insert_file: #{e}"
end
```

#### Using the insert_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> insert_file_with_http_info(folder_id, opts)

```ruby
begin
  # Insert a file
  data, status_code, headers = api_instance.insert_file_with_http_info(folder_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->insert_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID for inserting a file. |  |
| **insert_file_file** | **File** | The file to be inserted. | [optional] |
| **insert_file_title** | **String** | The file title to be inserted. | [optional] |
| **insert_file_create_new_if_exist** | **Boolean** | Specifies whether to create a new file if it already exists or not. | [optional] |
| **insert_file_keep_convert_status** | **Boolean** | Specifies whether to keep the file converting status or not. | [optional] |
| **insert_file_stream_can_read** | **Boolean** |  | [optional] |
| **insert_file_stream_can_write** | **Boolean** |  | [optional] |
| **insert_file_stream_can_seek** | **Boolean** |  | [optional] |
| **insert_file_stream_can_timeout** | **Boolean** |  | [optional] |
| **insert_file_stream_length** | **Integer** |  | [optional] |
| **insert_file_stream_position** | **Integer** |  | [optional] |
| **insert_file_stream_read_timeout** | **Integer** |  | [optional] |
| **insert_file_stream_write_timeout** | **Integer** |  | [optional] |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## insert_file_to_my_from_body

> <FileIntegerWrapper> insert_file_to_my_from_body(opts)

Insert a file to the My documents section

Inserts a file specified in the request to the My documents section by single file uploading.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/insert-file-to-my-from-body/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
opts = {
  file: File.new('/path/to/some/file'), # File | The file to be inserted.
  title: 'title_example', # String | The file title to be inserted.
  create_new_if_exist: true, # Boolean | Specifies whether to create a new file if it already exists or not.
  keep_convert_status: true, # Boolean | Specifies whether to keep the file converting status or not.
  stream_can_read: true, # Boolean | 
  stream_can_write: true, # Boolean | 
  stream_can_seek: true, # Boolean | 
  stream_can_timeout: true, # Boolean | 
  stream_length: 789, # Integer | 
  stream_position: 789, # Integer | 
  stream_read_timeout: 56, # Integer | 
  stream_write_timeout: 56 # Integer | 
}

begin
  # Insert a file to the My documents section
  result = api_instance.insert_file_to_my_from_body(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->insert_file_to_my_from_body: #{e}"
end
```

#### Using the insert_file_to_my_from_body_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> insert_file_to_my_from_body_with_http_info(opts)

```ruby
begin
  # Insert a file to the My documents section
  data, status_code, headers = api_instance.insert_file_to_my_from_body_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->insert_file_to_my_from_body_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | The file to be inserted. | [optional] |
| **title** | **String** | The file title to be inserted. | [optional] |
| **create_new_if_exist** | **Boolean** | Specifies whether to create a new file if it already exists or not. | [optional] |
| **keep_convert_status** | **Boolean** | Specifies whether to keep the file converting status or not. | [optional] |
| **stream_can_read** | **Boolean** |  | [optional] |
| **stream_can_write** | **Boolean** |  | [optional] |
| **stream_can_seek** | **Boolean** |  | [optional] |
| **stream_can_timeout** | **Boolean** |  | [optional] |
| **stream_length** | **Integer** |  | [optional] |
| **stream_position** | **Integer** |  | [optional] |
| **stream_read_timeout** | **Integer** |  | [optional] |
| **stream_write_timeout** | **Integer** |  | [optional] |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## rename_folder

> <FolderIntegerWrapper> rename_folder(folder_id, create_folder)

Rename a folder

Renames the selected folder with a new title specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-folder/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 1 # Integer | The folder ID for the folder creation.
create_folder = DocspaceApiSdk::CreateFolder.new({title: 'New Folder'}) # CreateFolder | The parameters for creating a folder.

begin
  # Rename a folder
  result = api_instance.rename_folder(folder_id, create_folder)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->rename_folder: #{e}"
end
```

#### Using the rename_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> rename_folder_with_http_info(folder_id, create_folder)

```ruby
begin
  # Rename a folder
  data, status_code, headers = api_instance.rename_folder_with_http_info(folder_id, create_folder)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->rename_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID for the folder creation. |  |
| **create_folder** | [**CreateFolder**](CreateFolder.md) | The parameters for creating a folder. |  |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_folder_order

> <FolderIntegerWrapper> set_folder_order(folder_id, opts)

Set folder order

Sets the order of a folder with ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-order/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 1 # Integer | The folder unique identifier.
opts = {
  order_request_dto: DocspaceApiSdk::OrderRequestDto.new # OrderRequestDto | The folder order information.
}

begin
  # Set folder order
  result = api_instance.set_folder_order(folder_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->set_folder_order: #{e}"
end
```

#### Using the set_folder_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> set_folder_order_with_http_info(folder_id, opts)

```ruby
begin
  # Set folder order
  data, status_code, headers = api_instance.set_folder_order_with_http_info(folder_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->set_folder_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder unique identifier. |  |
| **order_request_dto** | [**OrderRequestDto**](OrderRequestDto.md) | The folder order information. | [optional] |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_folder_primary_external_link

> <FileShareWrapper> set_folder_primary_external_link(id, folder_link_request)

Set the folder external link

Sets the folder external link with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-primary-external-link/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
id = 1 # Integer | The folder ID.
folder_link_request = DocspaceApiSdk::FolderLinkRequest.new # FolderLinkRequest | The folder link parameters.

begin
  # Set the folder external link
  result = api_instance.set_folder_primary_external_link(id, folder_link_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->set_folder_primary_external_link: #{e}"
end
```

#### Using the set_folder_primary_external_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareWrapper>, Integer, Hash)> set_folder_primary_external_link_with_http_info(id, folder_link_request)

```ruby
begin
  # Set the folder external link
  data, status_code, headers = api_instance.set_folder_primary_external_link_with_http_info(id, folder_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->set_folder_primary_external_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The folder ID. |  |
| **folder_link_request** | [**FolderLinkRequest**](FolderLinkRequest.md) | The folder link parameters. |  |

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_file

> <ObjectWrapper> upload_file(folder_id, opts)

Upload a file

Uploads a file specified in the request to the selected folder by single file uploading or standart multipart/form-data method.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
folder_id = 1 # Integer | The folder ID to upload a file.
opts = {
  upload_request_dto: DocspaceApiSdk::UploadRequestDto.new # UploadRequestDto | The request parameters for uploading a file.
}

begin
  # Upload a file
  result = api_instance.upload_file(folder_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->upload_file: #{e}"
end
```

#### Using the upload_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectWrapper>, Integer, Hash)> upload_file_with_http_info(folder_id, opts)

```ruby
begin
  # Upload a file
  data, status_code, headers = api_instance.upload_file_with_http_info(folder_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->upload_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID to upload a file. |  |
| **upload_request_dto** | [**UploadRequestDto**](UploadRequestDto.md) | The request parameters for uploading a file. | [optional] |

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_file_to_my

> <ObjectWrapper> upload_file_to_my(opts)

Upload a file to the My documents section

Uploads a file specified in the request to the My documents section by single file uploading or standart multipart/form-data method.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-file-to-my/).

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

api_instance = DocspaceApiSdk::Files::FoldersApi.new
opts = {
  in_dto: DocspaceApiSdk::UploadRequestDto.new # UploadRequestDto | The request parameters for uploading a file.
}

begin
  # Upload a file to the My documents section
  result = api_instance.upload_file_to_my(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->upload_file_to_my: #{e}"
end
```

#### Using the upload_file_to_my_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectWrapper>, Integer, Hash)> upload_file_to_my_with_http_info(opts)

```ruby
begin
  # Upload a file to the My documents section
  data, status_code, headers = api_instance.upload_file_to_my_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FoldersApi->upload_file_to_my_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **in_dto** | **UploadRequestDto** | The request parameters for uploading a file. | [optional] |

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

