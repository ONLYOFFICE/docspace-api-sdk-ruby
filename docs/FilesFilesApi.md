# DocspaceApiSdk::FilesFilesApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_file_to_recent**](FilesFilesApi.md#add_file_to_recent) | **POST** /api/2.0/files/file/{fileId}/recent | Add a file to the Recent section |
| [**add_templates**](FilesFilesApi.md#add_templates) | **POST** /api/2.0/files/templates | Add template files |
| [**change_version_history**](FilesFilesApi.md#change_version_history) | **PUT** /api/2.0/files/file/{fileId}/history | Change version history |
| [**check_fill_form_draft**](FilesFilesApi.md#check_fill_form_draft) | **POST** /api/2.0/files/masterform/{fileId}/checkfillformdraft | Check the form draft filling |
| [**copy_file_as**](FilesFilesApi.md#copy_file_as) | **POST** /api/2.0/files/file/{fileId}/copyas | Copy a file |
| [**create_edit_session**](FilesFilesApi.md#create_edit_session) | **POST** /api/2.0/files/file/{fileId}/edit_session | Create the editing session |
| [**create_file**](FilesFilesApi.md#create_file) | **POST** /api/2.0/files/{folderId}/file | Create a file |
| [**create_file_in_my_documents**](FilesFilesApi.md#create_file_in_my_documents) | **POST** /api/2.0/files/@my/file | Create a file in the My documents section |
| [**create_file_primary_external_link**](FilesFilesApi.md#create_file_primary_external_link) | **POST** /api/2.0/files/file/{id}/link | Create primary external link |
| [**create_html_file**](FilesFilesApi.md#create_html_file) | **POST** /api/2.0/files/{folderId}/html | Create an HTML file |
| [**create_html_file_in_my_documents**](FilesFilesApi.md#create_html_file_in_my_documents) | **POST** /api/2.0/files/@my/html | Create an HTML file in the My documents section |
| [**create_text_file**](FilesFilesApi.md#create_text_file) | **POST** /api/2.0/files/{folderId}/text | Create a text file |
| [**create_text_file_in_my_documents**](FilesFilesApi.md#create_text_file_in_my_documents) | **POST** /api/2.0/files/@my/text | Create a text file in the My documents section |
| [**create_thumbnails**](FilesFilesApi.md#create_thumbnails) | **POST** /api/2.0/files/thumbnails | Create file thumbnails |
| [**delete_file**](FilesFilesApi.md#delete_file) | **DELETE** /api/2.0/files/file/{fileId} | Delete a file |
| [**delete_recent**](FilesFilesApi.md#delete_recent) | **DELETE** /api/2.0/files/recent | Delete recent files |
| [**delete_templates**](FilesFilesApi.md#delete_templates) | **DELETE** /api/2.0/files/templates | Delete template files |
| [**generate_xlsx**](FilesFilesApi.md#generate_xlsx) | **POST** /api/2.0/files/file/{fileId}/xlsx | Generate XLSX report |
| [**get_all_form_roles**](FilesFilesApi.md#get_all_form_roles) | **GET** /api/2.0/files/file/{fileId}/formroles | Get form roles |
| [**get_edit_diff_url**](FilesFilesApi.md#get_edit_diff_url) | **GET** /api/2.0/files/file/{fileId}/edit/diff | Get changes URL |
| [**get_edit_history**](FilesFilesApi.md#get_edit_history) | **GET** /api/2.0/files/file/{fileId}/edit/history | Get version history |
| [**get_encryption_info**](FilesFilesApi.md#get_encryption_info) | **GET** /api/2.0/files/{fileId}/access | Get file encryption information |
| [**get_file_history**](FilesFilesApi.md#get_file_history) | **GET** /api/2.0/files/file/{fileId}/log | Get file history |
| [**get_file_info**](FilesFilesApi.md#get_file_info) | **GET** /api/2.0/files/file/{fileId} | Get file information |
| [**get_file_links**](FilesFilesApi.md#get_file_links) | **GET** /api/2.0/files/file/{id}/links | Get file external links |
| [**get_file_primary_external_link**](FilesFilesApi.md#get_file_primary_external_link) | **GET** /api/2.0/files/file/{id}/link | Get primary external link |
| [**get_file_version_info**](FilesFilesApi.md#get_file_version_info) | **GET** /api/2.0/files/file/{fileId}/history | Get file versions |
| [**get_fill_result**](FilesFilesApi.md#get_fill_result) | **GET** /api/2.0/files/file/fillresult | Get form-filling result |
| [**get_form_submissions**](FilesFilesApi.md#get_form_submissions) | **GET** /api/2.0/files/file/{fileId}/submissions | Get form submission results |
| [**get_presigned_file_uri**](FilesFilesApi.md#get_presigned_file_uri) | **GET** /api/2.0/files/file/{fileId}/presigned | Get file download link asynchronously |
| [**get_presigned_uri**](FilesFilesApi.md#get_presigned_uri) | **GET** /api/2.0/files/file/{fileId}/presigneduri | Get file download link |
| [**get_protected_file_users**](FilesFilesApi.md#get_protected_file_users) | **GET** /api/2.0/files/file/{fileId}/protectusers | Get users access rights to the protected file |
| [**get_reference_data**](FilesFilesApi.md#get_reference_data) | **POST** /api/2.0/files/file/referencedata | Get reference data |
| [**get_xlsx**](FilesFilesApi.md#get_xlsx) | **GET** /api/2.0/files/file/{fileId}/xlsx | Get XLSX report generation status |
| [**is_form_pdf**](FilesFilesApi.md#is_form_pdf) | **GET** /api/2.0/files/file/{fileId}/isformpdf | Check the PDF file |
| [**lock_file**](FilesFilesApi.md#lock_file) | **PUT** /api/2.0/files/file/{fileId}/lock | Lock a file |
| [**manage_form_filling**](FilesFilesApi.md#manage_form_filling) | **PUT** /api/2.0/files/file/{fileId}/manageformfilling | Perform form filling action |
| [**open_edit_file**](FilesFilesApi.md#open_edit_file) | **GET** /api/2.0/files/file/{fileId}/openedit | Open a file configuration |
| [**restore_file_version**](FilesFilesApi.md#restore_file_version) | **POST** /api/2.0/files/file/{fileId}/restoreversion | Restore a file version |
| [**save_editing_file_from_form**](FilesFilesApi.md#save_editing_file_from_form) | **PUT** /api/2.0/files/file/{fileId}/saveediting | Save file edits |
| [**save_file_as_pdf**](FilesFilesApi.md#save_file_as_pdf) | **POST** /api/2.0/files/file/{id}/saveaspdf | Save a file as PDF |
| [**save_form_role_mapping**](FilesFilesApi.md#save_form_role_mapping) | **POST** /api/2.0/files/file/{fileId}/formrolemapping | Save form role mapping |
| [**set_custom_filter_tag**](FilesFilesApi.md#set_custom_filter_tag) | **PUT** /api/2.0/files/file/{fileId}/customfilter | Set the Custom Filter editing mode |
| [**set_encryption_info**](FilesFilesApi.md#set_encryption_info) | **PUT** /api/2.0/files/{fileId}/access | Set file encryption information |
| [**set_file_external_link**](FilesFilesApi.md#set_file_external_link) | **PUT** /api/2.0/files/file/{id}/links | Set an external link |
| [**set_file_order**](FilesFilesApi.md#set_file_order) | **PUT** /api/2.0/files/{fileId}/order | Set file order |
| [**set_files_order**](FilesFilesApi.md#set_files_order) | **PUT** /api/2.0/files/order | Set order of files |
| [**start_edit_file**](FilesFilesApi.md#start_edit_file) | **POST** /api/2.0/files/file/{fileId}/startedit | Start file editing |
| [**start_filling_file**](FilesFilesApi.md#start_filling_file) | **PUT** /api/2.0/files/file/{fileId}/startfilling | Start file filling |
| [**toggle_file_favorite**](FilesFilesApi.md#toggle_file_favorite) | **GET** /api/2.0/files/favorites/{fileId} | Change the file favorite status |
| [**track_edit_file**](FilesFilesApi.md#track_edit_file) | **GET** /api/2.0/files/file/{fileId}/trackeditfile | Track file editing |
| [**update_file**](FilesFilesApi.md#update_file) | **PUT** /api/2.0/files/file/{fileId} | Update a file |


## add_file_to_recent

> <FileIntegerWrapper> add_file_to_recent(file_id)

Add a file to the Recent section

Adds a file with the ID specified in the request to the Recent section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-file-to-recent/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file unique identifier.

begin
  # Add a file to the Recent section
  result = api_instance.add_file_to_recent(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->add_file_to_recent: #{e}"
end
```

#### Using the add_file_to_recent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> add_file_to_recent_with_http_info(file_id)

```ruby
begin
  # Add a file to the Recent section
  data, status_code, headers = api_instance.add_file_to_recent_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->add_file_to_recent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file unique identifier. |  |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## add_templates

> <BooleanWrapper> add_templates(opts)

Add template files

Adds files with the IDs specified in the request to the template list.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-templates/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
opts = {
  templates_request_dto: DocspaceApiSdk::TemplatesRequestDto.new # TemplatesRequestDto | 
}

begin
  # Add template files
  result = api_instance.add_templates(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->add_templates: #{e}"
end
```

#### Using the add_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> add_templates_with_http_info(opts)

```ruby
begin
  # Add template files
  data, status_code, headers = api_instance.add_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->add_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **templates_request_dto** | [**TemplatesRequestDto**](TemplatesRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_version_history

> <FileIntegerArrayWrapper> change_version_history(file_id, change_history)

Change version history

Changes the version history of a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-version-history/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file Id to change its version history.
change_history = DocspaceApiSdk::ChangeHistory.new({version: 1}) # ChangeHistory | The parameters for changing version history.

begin
  # Change version history
  result = api_instance.change_version_history(file_id, change_history)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->change_version_history: #{e}"
end
```

#### Using the change_version_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerArrayWrapper>, Integer, Hash)> change_version_history_with_http_info(file_id, change_history)

```ruby
begin
  # Change version history
  data, status_code, headers = api_instance.change_version_history_with_http_info(file_id, change_history)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->change_version_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file Id to change its version history. |  |
| **change_history** | [**ChangeHistory**](ChangeHistory.md) | The parameters for changing version history. |  |

### Return type

[**FileIntegerArrayWrapper**](FileIntegerArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## check_fill_form_draft

> <StringWrapper> check_fill_form_draft(file_id, check_fill_form_draft)

Check the form draft filling

Checks if the current file is a form draft which can be filled out.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-fill-form-draft/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID of the form draft.
check_fill_form_draft = DocspaceApiSdk::CheckFillFormDraft.new({version: 1}) # CheckFillFormDraft | The parameters for checking the form draft filling.

begin
  # Check the form draft filling
  result = api_instance.check_fill_form_draft(file_id, check_fill_form_draft)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->check_fill_form_draft: #{e}"
end
```

#### Using the check_fill_form_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> check_fill_form_draft_with_http_info(file_id, check_fill_form_draft)

```ruby
begin
  # Check the form draft filling
  data, status_code, headers = api_instance.check_fill_form_draft_with_http_info(file_id, check_fill_form_draft)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->check_fill_form_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID of the form draft. |  |
| **check_fill_form_draft** | [**CheckFillFormDraft**](CheckFillFormDraft.md) | The parameters for checking the form draft filling. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## copy_file_as

> <FileEntryBaseWrapper> copy_file_as(file_id, copy_as_json_element)

Copy a file

Copies (and converts if possible) an existing file to the specified folder.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-file-as/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID to copy.
copy_as_json_element = DocspaceApiSdk::CopyAsJsonElement.new({dest_title: 'Document Copy.docx', dest_folder_id: nil}) # CopyAsJsonElement | The parameters for copying a file.

begin
  # Copy a file
  result = api_instance.copy_file_as(file_id, copy_as_json_element)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->copy_file_as: #{e}"
end
```

#### Using the copy_file_as_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileEntryBaseWrapper>, Integer, Hash)> copy_file_as_with_http_info(file_id, copy_as_json_element)

```ruby
begin
  # Copy a file
  data, status_code, headers = api_instance.copy_file_as_with_http_info(file_id, copy_as_json_element)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileEntryBaseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->copy_file_as_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID to copy. |  |
| **copy_as_json_element** | [**CopyAsJsonElement**](CopyAsJsonElement.md) | The parameters for copying a file. |  |

### Return type

[**FileEntryBaseWrapper**](FileEntryBaseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_edit_session

> <ChunkedUploadSessionResponseWrapperIntegerWrapper> create_edit_session(file_id, opts)

Create the editing session

Creates a session to edit the existing file with multiple chunks (needed for WebDAV).

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-edit-session/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID.
opts = {
  file_size: 1024 # Integer | The file size in bytes.
}

begin
  # Create the editing session
  result = api_instance.create_edit_session(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_edit_session: #{e}"
end
```

#### Using the create_edit_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChunkedUploadSessionResponseWrapperIntegerWrapper>, Integer, Hash)> create_edit_session_with_http_info(file_id, opts)

```ruby
begin
  # Create the editing session
  data, status_code, headers = api_instance.create_edit_session_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkedUploadSessionResponseWrapperIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_edit_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID. |  |
| **file_size** | **Integer** | The file size in bytes. | [optional] |

### Return type

[**ChunkedUploadSessionResponseWrapperIntegerWrapper**](ChunkedUploadSessionResponseWrapperIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_file

> <FileIntegerWrapper> create_file(folder_id, create_file_json_element)

Create a file

Creates a new file in the specified folder with the title specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
folder_id = 1 # Integer | The folder ID for the file creation.
create_file_json_element = DocspaceApiSdk::CreateFileJsonElement.new({title: 'New Document.docx'}) # CreateFileJsonElement | The parameters for creating a file.

begin
  # Create a file
  result = api_instance.create_file(folder_id, create_file_json_element)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_file: #{e}"
end
```

#### Using the create_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> create_file_with_http_info(folder_id, create_file_json_element)

```ruby
begin
  # Create a file
  data, status_code, headers = api_instance.create_file_with_http_info(folder_id, create_file_json_element)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID for the file creation. |  |
| **create_file_json_element** | [**CreateFileJsonElement**](CreateFileJsonElement.md) | The parameters for creating a file. |  |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_file_in_my_documents

> <FileIntegerWrapper> create_file_in_my_documents(opts)

Create a file in the My documents section

Creates a new file in the My documents section with the title specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-in-my-documents/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
opts = {
  create_file_json_element: DocspaceApiSdk::CreateFileJsonElement.new({title: 'New Document.docx'}) # CreateFileJsonElement | 
}

begin
  # Create a file in the My documents section
  result = api_instance.create_file_in_my_documents(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_file_in_my_documents: #{e}"
end
```

#### Using the create_file_in_my_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> create_file_in_my_documents_with_http_info(opts)

```ruby
begin
  # Create a file in the My documents section
  data, status_code, headers = api_instance.create_file_in_my_documents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_file_in_my_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_file_json_element** | [**CreateFileJsonElement**](CreateFileJsonElement.md) |  | [optional] |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_file_primary_external_link

> <FileShareWrapper> create_file_primary_external_link(id, file_link_request)

Create primary external link

Creates a primary external link by the identifier specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-primary-external-link/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
id = 1 # Integer | The file ID.
file_link_request = DocspaceApiSdk::FileLinkRequest.new # FileLinkRequest | The file external link parameters.

begin
  # Create primary external link
  result = api_instance.create_file_primary_external_link(id, file_link_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_file_primary_external_link: #{e}"
end
```

#### Using the create_file_primary_external_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareWrapper>, Integer, Hash)> create_file_primary_external_link_with_http_info(id, file_link_request)

```ruby
begin
  # Create primary external link
  data, status_code, headers = api_instance.create_file_primary_external_link_with_http_info(id, file_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_file_primary_external_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The file ID. |  |
| **file_link_request** | [**FileLinkRequest**](FileLinkRequest.md) | The file external link parameters. |  |

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_html_file

> <FileIntegerWrapper> create_html_file(folder_id, create_text_or_html_file)

Create an HTML file

Creates an HTML (.html) file in the selected folder with the title and contents specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
folder_id = 1 # Integer | The folder ID to create the text or HTML file.
create_text_or_html_file = DocspaceApiSdk::CreateTextOrHtmlFile.new({title: 'Document.txt'}) # CreateTextOrHtmlFile | The parameters for creating an HTML or text file.

begin
  # Create an HTML file
  result = api_instance.create_html_file(folder_id, create_text_or_html_file)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_html_file: #{e}"
end
```

#### Using the create_html_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> create_html_file_with_http_info(folder_id, create_text_or_html_file)

```ruby
begin
  # Create an HTML file
  data, status_code, headers = api_instance.create_html_file_with_http_info(folder_id, create_text_or_html_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_html_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID to create the text or HTML file. |  |
| **create_text_or_html_file** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) | The parameters for creating an HTML or text file. |  |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_html_file_in_my_documents

> <FileIntegerWrapper> create_html_file_in_my_documents(opts)

Create an HTML file in the My documents section

Creates an HTML (.html) file in the My documents section with the title and contents specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file-in-my-documents/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
opts = {
  create_text_or_html_file: DocspaceApiSdk::CreateTextOrHtmlFile.new({title: 'Document.txt'}) # CreateTextOrHtmlFile | 
}

begin
  # Create an HTML file in the My documents section
  result = api_instance.create_html_file_in_my_documents(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_html_file_in_my_documents: #{e}"
end
```

#### Using the create_html_file_in_my_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> create_html_file_in_my_documents_with_http_info(opts)

```ruby
begin
  # Create an HTML file in the My documents section
  data, status_code, headers = api_instance.create_html_file_in_my_documents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_html_file_in_my_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_text_or_html_file** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) |  | [optional] |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_text_file

> <FileIntegerWrapper> create_text_file(folder_id, create_text_or_html_file)

Create a text file

Creates a text (.txt) file in the selected folder with the title and contents specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
folder_id = 1 # Integer | The folder ID to create the text or HTML file.
create_text_or_html_file = DocspaceApiSdk::CreateTextOrHtmlFile.new({title: 'Document.txt'}) # CreateTextOrHtmlFile | The parameters for creating an HTML or text file.

begin
  # Create a text file
  result = api_instance.create_text_file(folder_id, create_text_or_html_file)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_text_file: #{e}"
end
```

#### Using the create_text_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> create_text_file_with_http_info(folder_id, create_text_or_html_file)

```ruby
begin
  # Create a text file
  data, status_code, headers = api_instance.create_text_file_with_http_info(folder_id, create_text_or_html_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_text_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID to create the text or HTML file. |  |
| **create_text_or_html_file** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) | The parameters for creating an HTML or text file. |  |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_text_file_in_my_documents

> <FileIntegerWrapper> create_text_file_in_my_documents(opts)

Create a text file in the My documents section

Creates a text (.txt) file in the My documents section with the title and contents specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file-in-my-documents/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
opts = {
  create_text_or_html_file: DocspaceApiSdk::CreateTextOrHtmlFile.new({title: 'Document.txt'}) # CreateTextOrHtmlFile | 
}

begin
  # Create a text file in the My documents section
  result = api_instance.create_text_file_in_my_documents(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_text_file_in_my_documents: #{e}"
end
```

#### Using the create_text_file_in_my_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> create_text_file_in_my_documents_with_http_info(opts)

```ruby
begin
  # Create a text file in the My documents section
  data, status_code, headers = api_instance.create_text_file_in_my_documents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_text_file_in_my_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_text_or_html_file** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) |  | [optional] |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_thumbnails

> <ObjectArrayWrapper> create_thumbnails(opts)

Create file thumbnails

Creates thumbnails for the files with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-thumbnails/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FilesApi.new
opts = {
  base_batch_request_dto: DocspaceApiSdk::BaseBatchRequestDto.new # BaseBatchRequestDto | 
}

begin
  # Create file thumbnails
  result = api_instance.create_thumbnails(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_thumbnails: #{e}"
end
```

#### Using the create_thumbnails_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectArrayWrapper>, Integer, Hash)> create_thumbnails_with_http_info(opts)

```ruby
begin
  # Create file thumbnails
  data, status_code, headers = api_instance.create_thumbnails_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_thumbnails_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_batch_request_dto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] |

### Return type

[**ObjectArrayWrapper**](ObjectArrayWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_file

> <FileOperationArrayWrapper> delete_file(file_id, delete, opts)

Delete a file

Deletes a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID to delete.
delete = DocspaceApiSdk::Delete.new # Delete | The parameters for deleting a file.
opts = {
  return_single_operation: false # Boolean | Specifies whether to return only the current operation
}

begin
  # Delete a file
  result = api_instance.delete_file(file_id, delete, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->delete_file: #{e}"
end
```

#### Using the delete_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationArrayWrapper>, Integer, Hash)> delete_file_with_http_info(file_id, delete, opts)

```ruby
begin
  # Delete a file
  data, status_code, headers = api_instance.delete_file_with_http_info(file_id, delete, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->delete_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID to delete. |  |
| **delete** | [**Delete**](Delete.md) | The parameters for deleting a file. |  |
| **return_single_operation** | **Boolean** | Specifies whether to return only the current operation | [optional] |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_recent

> delete_recent(opts)

Delete recent files

Removes files with the IDs specified in the request from the Recent section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-recent/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
opts = {
  base_batch_request_dto: DocspaceApiSdk::BaseBatchRequestDto.new # BaseBatchRequestDto | 
}

begin
  # Delete recent files
  api_instance.delete_recent(opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->delete_recent: #{e}"
end
```

#### Using the delete_recent_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_recent_with_http_info(opts)

```ruby
begin
  # Delete recent files
  data, status_code, headers = api_instance.delete_recent_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->delete_recent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_batch_request_dto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_templates

> <BooleanWrapper> delete_templates(opts)

Delete template files

Removes files with the IDs specified in the request from the template list.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-templates/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
opts = {
  request_body: [37] # Array<Integer> | The file IDs.
}

begin
  # Delete template files
  result = api_instance.delete_templates(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->delete_templates: #{e}"
end
```

#### Using the delete_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> delete_templates_with_http_info(opts)

```ruby
begin
  # Delete template files
  data, status_code, headers = api_instance.delete_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->delete_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Array&lt;Integer&gt;**](Integer.md) | The file IDs. | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_xlsx

> <XlsxReportResponseWrapper> generate_xlsx(file_id)

Generate XLSX report

Triggers asynchronous XLSX report generation for the specified form file.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-xlsx/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file unique identifier.

begin
  # Generate XLSX report
  result = api_instance.generate_xlsx(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->generate_xlsx: #{e}"
end
```

#### Using the generate_xlsx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<XlsxReportResponseWrapper>, Integer, Hash)> generate_xlsx_with_http_info(file_id)

```ruby
begin
  # Generate XLSX report
  data, status_code, headers = api_instance.generate_xlsx_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <XlsxReportResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->generate_xlsx_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file unique identifier. |  |

### Return type

[**XlsxReportResponseWrapper**](XlsxReportResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_form_roles

> <FormRoleArrayWrapper> get_all_form_roles(file_id)

Get form roles

Returns all roles for the specified form.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-form-roles/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file unique identifier.

begin
  # Get form roles
  result = api_instance.get_all_form_roles(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_all_form_roles: #{e}"
end
```

#### Using the get_all_form_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormRoleArrayWrapper>, Integer, Hash)> get_all_form_roles_with_http_info(file_id)

```ruby
begin
  # Get form roles
  data, status_code, headers = api_instance.get_all_form_roles_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormRoleArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_all_form_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file unique identifier. |  |

### Return type

[**FormRoleArrayWrapper**](FormRoleArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_edit_diff_url

> <EditHistoryDataWrapper> get_edit_diff_url(file_id, opts)

Get changes URL

Returns a URL to the changes of a file version specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-diff-url/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID.
opts = {
  version: 1 # Integer | The file version.
}

begin
  # Get changes URL
  result = api_instance.get_edit_diff_url(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_edit_diff_url: #{e}"
end
```

#### Using the get_edit_diff_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EditHistoryDataWrapper>, Integer, Hash)> get_edit_diff_url_with_http_info(file_id, opts)

```ruby
begin
  # Get changes URL
  data, status_code, headers = api_instance.get_edit_diff_url_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EditHistoryDataWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_edit_diff_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID. |  |
| **version** | **Integer** | The file version. | [optional] |

### Return type

[**EditHistoryDataWrapper**](EditHistoryDataWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_edit_history

> <EditHistoryArrayWrapper> get_edit_history(file_id)

Get version history

Returns the version history of a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-history/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file unique identifier.

begin
  # Get version history
  result = api_instance.get_edit_history(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_edit_history: #{e}"
end
```

#### Using the get_edit_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EditHistoryArrayWrapper>, Integer, Hash)> get_edit_history_with_http_info(file_id)

```ruby
begin
  # Get version history
  data, status_code, headers = api_instance.get_edit_history_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EditHistoryArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_edit_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file unique identifier. |  |

### Return type

[**EditHistoryArrayWrapper**](EditHistoryArrayWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_encryption_info

> <FileEncryptionInfoWrapper> get_encryption_info(file_id)

Get file encryption information

Returns the encryption information for a file with the specified identifier, including user encryption keys and file-specific encryption keys.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-encryption-info/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 56 # Integer | The file unique identifier.

begin
  # Get file encryption information
  result = api_instance.get_encryption_info(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_encryption_info: #{e}"
end
```

#### Using the get_encryption_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileEncryptionInfoWrapper>, Integer, Hash)> get_encryption_info_with_http_info(file_id)

```ruby
begin
  # Get file encryption information
  data, status_code, headers = api_instance.get_encryption_info_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileEncryptionInfoWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_encryption_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file unique identifier. |  |

### Return type

[**FileEncryptionInfoWrapper**](FileEncryptionInfoWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_history

> <HistoryArrayWrapper> get_file_history(file_id, opts)

Get file history

Returns the list of actions performed on the file with the specified identifier.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-history/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID of the history request.
opts = {
  from_date: Time.parse('2025-01-01T00:00:00.0000000Z'), # Time | The start date of the history.
  to_date: Time.parse('2025-12-31T23:59:59.0000000Z'), # Time | The end date of the history.
  count: 25, # Integer | The number of history entries to retrieve for the file log.
  start_index: 0 # Integer | The starting index for retrieving a subset of file history entries.
}

begin
  # Get file history
  result = api_instance.get_file_history(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_history: #{e}"
end
```

#### Using the get_file_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HistoryArrayWrapper>, Integer, Hash)> get_file_history_with_http_info(file_id, opts)

```ruby
begin
  # Get file history
  data, status_code, headers = api_instance.get_file_history_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HistoryArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID of the history request. |  |
| **from_date** | **Time** | The start date of the history. | [optional] |
| **to_date** | **Time** | The end date of the history. | [optional] |
| **count** | **Integer** | The number of history entries to retrieve for the file log. | [optional] |
| **start_index** | **Integer** | The starting index for retrieving a subset of file history entries. | [optional] |

### Return type

[**HistoryArrayWrapper**](HistoryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_info

> <FileIntegerWrapper> get_file_info(file_id, opts)

Get file information

Returns the detailed information about a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-info/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID.
opts = {
  version: 1 # Integer | The file version.
}

begin
  # Get file information
  result = api_instance.get_file_info(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_info: #{e}"
end
```

#### Using the get_file_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> get_file_info_with_http_info(file_id, opts)

```ruby
begin
  # Get file information
  data, status_code, headers = api_instance.get_file_info_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID. |  |
| **version** | **Integer** | The file version. | [optional] |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_links

> <FileShareArrayWrapper> get_file_links(id, opts)

Get file external links

Returns the external links of a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-links/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
id = 10 # Integer | The file unique identifier.
opts = {
  count: 25, # Integer | The number of items to retrieve in the request.
  start_index: 0 # Integer | The starting index for the query results.
}

begin
  # Get file external links
  result = api_instance.get_file_links(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_links: #{e}"
end
```

#### Using the get_file_links_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> get_file_links_with_http_info(id, opts)

```ruby
begin
  # Get file external links
  data, status_code, headers = api_instance.get_file_links_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_links_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The file unique identifier. |  |
| **count** | **Integer** | The number of items to retrieve in the request. | [optional] |
| **start_index** | **Integer** | The starting index for the query results. | [optional] |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_primary_external_link

> <FileShareWrapper> get_file_primary_external_link(id, opts)

Get primary external link

Returns the primary external link by the identifier specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-primary-external-link/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FilesApi.new
id = 10 # Integer | The file unique identifier.
opts = {
  count: 25, # Integer | The number of items to retrieve in the request.
  start_index: 0 # Integer | The starting index for the query results.
}

begin
  # Get primary external link
  result = api_instance.get_file_primary_external_link(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_primary_external_link: #{e}"
end
```

#### Using the get_file_primary_external_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareWrapper>, Integer, Hash)> get_file_primary_external_link_with_http_info(id, opts)

```ruby
begin
  # Get primary external link
  data, status_code, headers = api_instance.get_file_primary_external_link_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_primary_external_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The file unique identifier. |  |
| **count** | **Integer** | The number of items to retrieve in the request. | [optional] |
| **start_index** | **Integer** | The starting index for the query results. | [optional] |

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_version_info

> <FileIntegerArrayWrapper> get_file_version_info(file_id)

Get file versions

Returns the detailed information about all the available file versions with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-version-info/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file unique identifier.

begin
  # Get file versions
  result = api_instance.get_file_version_info(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_version_info: #{e}"
end
```

#### Using the get_file_version_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerArrayWrapper>, Integer, Hash)> get_file_version_info_with_http_info(file_id)

```ruby
begin
  # Get file versions
  data, status_code, headers = api_instance.get_file_version_info_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_version_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file unique identifier. |  |

### Return type

[**FileIntegerArrayWrapper**](FileIntegerArrayWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fill_result

> <FillingFormResultIntegerWrapper> get_fill_result(opts)

Get form-filling result

Retrieves the result of a form-filling session.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-fill-result/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FilesApi.new
opts = {
  filling_session_id: 'doc_key_123' # String | The form-filling session ID.
}

begin
  # Get form-filling result
  result = api_instance.get_fill_result(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_fill_result: #{e}"
end
```

#### Using the get_fill_result_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FillingFormResultIntegerWrapper>, Integer, Hash)> get_fill_result_with_http_info(opts)

```ruby
begin
  # Get form-filling result
  data, status_code, headers = api_instance.get_fill_result_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FillingFormResultIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_fill_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filling_session_id** | **String** | The form-filling session ID. | [optional] |

### Return type

[**FillingFormResultIntegerWrapper**](FillingFormResultIntegerWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_form_submissions

> <FormSubmissionsWrapper> get_form_submissions(file_id)

Get form submission results

Returns the results of form submissions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-form-submissions/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file unique identifier.

begin
  # Get form submission results
  result = api_instance.get_form_submissions(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_form_submissions: #{e}"
end
```

#### Using the get_form_submissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormSubmissionsWrapper>, Integer, Hash)> get_form_submissions_with_http_info(file_id)

```ruby
begin
  # Get form submission results
  data, status_code, headers = api_instance.get_form_submissions_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormSubmissionsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_form_submissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file unique identifier. |  |

### Return type

[**FormSubmissionsWrapper**](FormSubmissionsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_presigned_file_uri

> <FileLinkWrapper> get_presigned_file_uri(file_id)

Get file download link asynchronously

Returns a link to download a file with the ID specified in the request asynchronously.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-file-uri/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file unique identifier.

begin
  # Get file download link asynchronously
  result = api_instance.get_presigned_file_uri(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_presigned_file_uri: #{e}"
end
```

#### Using the get_presigned_file_uri_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileLinkWrapper>, Integer, Hash)> get_presigned_file_uri_with_http_info(file_id)

```ruby
begin
  # Get file download link asynchronously
  data, status_code, headers = api_instance.get_presigned_file_uri_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileLinkWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_presigned_file_uri_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file unique identifier. |  |

### Return type

[**FileLinkWrapper**](FileLinkWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_presigned_uri

> <StringWrapper> get_presigned_uri(file_id)

Get file download link

Returns a pre-signed URL to download a file with the specified ID.  This temporary link provides secure access to the file.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-uri/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file unique identifier.

begin
  # Get file download link
  result = api_instance.get_presigned_uri(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_presigned_uri: #{e}"
end
```

#### Using the get_presigned_uri_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> get_presigned_uri_with_http_info(file_id)

```ruby
begin
  # Get file download link
  data, status_code, headers = api_instance.get_presigned_uri_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_presigned_uri_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file unique identifier. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_protected_file_users

> <MentionWrapperArrayWrapper> get_protected_file_users(file_id)

Get users access rights to the protected file

Returns a list of users with their access rights to the protected file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-protected-file-users/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file unique identifier.

begin
  # Get users access rights to the protected file
  result = api_instance.get_protected_file_users(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_protected_file_users: #{e}"
end
```

#### Using the get_protected_file_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MentionWrapperArrayWrapper>, Integer, Hash)> get_protected_file_users_with_http_info(file_id)

```ruby
begin
  # Get users access rights to the protected file
  data, status_code, headers = api_instance.get_protected_file_users_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MentionWrapperArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_protected_file_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file unique identifier. |  |

### Return type

[**MentionWrapperArrayWrapper**](MentionWrapperArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reference_data

> <FileReferenceWrapper> get_reference_data(opts)

Get reference data

Returns the reference data to uniquely identify a file in its system and check the availability of insering data into the destination spreadsheet by the external link.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-reference-data/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
opts = {
  get_reference_data_dto_integer: DocspaceApiSdk::GetReferenceDataDtoInteger.new({file_key: 'doc_key_123', instance_id: 'doc_key_123'}) # GetReferenceDataDtoInteger | 
}

begin
  # Get reference data
  result = api_instance.get_reference_data(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_reference_data: #{e}"
end
```

#### Using the get_reference_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileReferenceWrapper>, Integer, Hash)> get_reference_data_with_http_info(opts)

```ruby
begin
  # Get reference data
  data, status_code, headers = api_instance.get_reference_data_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileReferenceWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_reference_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_reference_data_dto_integer** | [**GetReferenceDataDtoInteger**](GetReferenceDataDtoInteger.md) |  | [optional] |

### Return type

[**FileReferenceWrapper**](FileReferenceWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_xlsx

> <DocumentBuilderTaskWrapper> get_xlsx(file_id)

Get XLSX report generation status

Returns the status of the XLSX report generation task for the specified form.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-xlsx/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file unique identifier.

begin
  # Get XLSX report generation status
  result = api_instance.get_xlsx(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_xlsx: #{e}"
end
```

#### Using the get_xlsx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentBuilderTaskWrapper>, Integer, Hash)> get_xlsx_with_http_info(file_id)

```ruby
begin
  # Get XLSX report generation status
  data, status_code, headers = api_instance.get_xlsx_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentBuilderTaskWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_xlsx_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file unique identifier. |  |

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## is_form_pdf

> <BooleanWrapper> is_form_pdf(file_id)

Check the PDF file

Checks if the PDF file is a form or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/is-form-pdf/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file unique identifier.

begin
  # Check the PDF file
  result = api_instance.is_form_pdf(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->is_form_pdf: #{e}"
end
```

#### Using the is_form_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> is_form_pdf_with_http_info(file_id)

```ruby
begin
  # Check the PDF file
  data, status_code, headers = api_instance.is_form_pdf_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->is_form_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file unique identifier. |  |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## lock_file

> <FileIntegerWrapper> lock_file(file_id, lock_file_parameters)

Lock a file

Locks a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/lock-file/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID for locking.
lock_file_parameters = DocspaceApiSdk::LockFileParameters.new # LockFileParameters | The parameters for locking a file.

begin
  # Lock a file
  result = api_instance.lock_file(file_id, lock_file_parameters)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->lock_file: #{e}"
end
```

#### Using the lock_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> lock_file_with_http_info(file_id, lock_file_parameters)

```ruby
begin
  # Lock a file
  data, status_code, headers = api_instance.lock_file_with_http_info(file_id, lock_file_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->lock_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID for locking. |  |
| **lock_file_parameters** | [**LockFileParameters**](LockFileParameters.md) | The parameters for locking a file. |  |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## manage_form_filling

> manage_form_filling(file_id, opts)

Perform form filling action

Performs the specified form filling action.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/manage-form-filling/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 'file_id_example' # String | The form the action applies to. Send the same value as the `formId` of the request body, which is the one the handler reads.
opts = {
  manage_form_filling_dto_integer: DocspaceApiSdk::ManageFormFillingDtoInteger.new({form_id: 1}) # ManageFormFillingDtoInteger | 
}

begin
  # Perform form filling action
  api_instance.manage_form_filling(file_id, opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->manage_form_filling: #{e}"
end
```

#### Using the manage_form_filling_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> manage_form_filling_with_http_info(file_id, opts)

```ruby
begin
  # Perform form filling action
  data, status_code, headers = api_instance.manage_form_filling_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->manage_form_filling_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The form the action applies to. Send the same value as the `formId` of the request body, which is the one the handler reads. |  |
| **manage_form_filling_dto_integer** | [**ManageFormFillingDtoInteger**](ManageFormFillingDtoInteger.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## open_edit_file

> <ConfigurationIntegerWrapper> open_edit_file(file_id, opts)

Open a file configuration

Returns the initialization configuration of a file to open it in the editor.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/open-edit-file/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID to open.
opts = {
  version: 1, # Integer | The file version to open.
  view: false, # Boolean | Specifies if the document will be opened for viewing only or not.
  editor_type: DocspaceApiSdk::EditorType::Desktop, # EditorType | The editor type to open the file.
  edit: false, # Boolean | Specifies if the document is opened in the editing mode or not.
  fill: false # Boolean | Specifies if the document is opened in the form-filling mode or not.
}

begin
  # Open a file configuration
  result = api_instance.open_edit_file(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->open_edit_file: #{e}"
end
```

#### Using the open_edit_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConfigurationIntegerWrapper>, Integer, Hash)> open_edit_file_with_http_info(file_id, opts)

```ruby
begin
  # Open a file configuration
  data, status_code, headers = api_instance.open_edit_file_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConfigurationIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->open_edit_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID to open. |  |
| **version** | **Integer** | The file version to open. | [optional] |
| **view** | **Boolean** | Specifies if the document will be opened for viewing only or not. | [optional] |
| **editor_type** | **EditorType** | The editor type to open the file. | [optional] |
| **edit** | **Boolean** | Specifies if the document is opened in the editing mode or not. | [optional] |
| **fill** | **Boolean** | Specifies if the document is opened in the form-filling mode or not. | [optional] |

### Return type

[**ConfigurationIntegerWrapper**](ConfigurationIntegerWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restore_file_version

> <EditHistoryArrayWrapper> restore_file_version(file_id, opts)

Restore a file version

Restores a file version specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-file-version/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID of the restore version.
opts = {
  version: 1, # Integer | The file version of the restore.
  url: 'https://example.com' # String | The file version URL of the restore.
}

begin
  # Restore a file version
  result = api_instance.restore_file_version(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->restore_file_version: #{e}"
end
```

#### Using the restore_file_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EditHistoryArrayWrapper>, Integer, Hash)> restore_file_version_with_http_info(file_id, opts)

```ruby
begin
  # Restore a file version
  data, status_code, headers = api_instance.restore_file_version_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EditHistoryArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->restore_file_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID of the restore version. |  |
| **version** | **Integer** | The file version of the restore. | [optional] |
| **url** | **String** | The file version URL of the restore. | [optional] |

### Return type

[**EditHistoryArrayWrapper**](EditHistoryArrayWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## save_editing_file_from_form

> <FileIntegerWrapper> save_editing_file_from_form(file_id, opts)

Save file edits

Saves edits to a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-editing-file-from-form/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The editing file ID from the request.
opts = {
  download_uri: 'https://example.com/file.txt', # String | The URI to download the editing file.
  file_extension: 'file_extension_example', # String | The editing file extension from the request.
  file: File.new('/path/to/some/file'), # File | The edited file to be saved, uploaded as part of the multipart/form-data request.  This property represents the modified file content from the HTTP request form after editing operations.  The file is accessed via the IFormFile interface which provides access to the file name, content type, length, and stream.
  forcesave: true # Boolean | Specifies whether to force save the file or not.
}

begin
  # Save file edits
  result = api_instance.save_editing_file_from_form(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->save_editing_file_from_form: #{e}"
end
```

#### Using the save_editing_file_from_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> save_editing_file_from_form_with_http_info(file_id, opts)

```ruby
begin
  # Save file edits
  data, status_code, headers = api_instance.save_editing_file_from_form_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->save_editing_file_from_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The editing file ID from the request. |  |
| **download_uri** | **String** | The URI to download the editing file. | [optional] |
| **file_extension** | **String** | The editing file extension from the request. | [optional] |
| **file** | **File** | The edited file to be saved, uploaded as part of the multipart/form-data request.  This property represents the modified file content from the HTTP request form after editing operations.  The file is accessed via the IFormFile interface which provides access to the file name, content type, length, and stream. | [optional] |
| **forcesave** | **Boolean** | Specifies whether to force save the file or not. | [optional] |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## save_file_as_pdf

> <FileIntegerWrapper> save_file_as_pdf(id, save_as_pdf_integer)

Save a file as PDF

Saves a file with the identifier specified in the request as a PDF document.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-file-as-pdf/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
id = 1 # Integer | The file ID to save as PDF.
save_as_pdf_integer = DocspaceApiSdk::SaveAsPdfInteger.new({folder_id: 1, title: 'My Document'}) # SaveAsPdfInteger | The parameters for saving the file as PDF.

begin
  # Save a file as PDF
  result = api_instance.save_file_as_pdf(id, save_as_pdf_integer)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->save_file_as_pdf: #{e}"
end
```

#### Using the save_file_as_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> save_file_as_pdf_with_http_info(id, save_as_pdf_integer)

```ruby
begin
  # Save a file as PDF
  data, status_code, headers = api_instance.save_file_as_pdf_with_http_info(id, save_as_pdf_integer)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->save_file_as_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The file ID to save as PDF. |  |
| **save_as_pdf_integer** | [**SaveAsPdfInteger**](SaveAsPdfInteger.md) | The parameters for saving the file as PDF. |  |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## save_form_role_mapping

> save_form_role_mapping(file_id, opts)

Save form role mapping

Saves the form role mapping.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-form-role-mapping/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 'file_id_example' # String | The form the role mapping belongs to. Send the same value as the `formId` of the request body, which is the one the handler reads.
opts = {
  save_form_role_mapping_dto_integer: DocspaceApiSdk::SaveFormRoleMappingDtoInteger.new({form_id: 1, roles: [{roleName=Approver,  userId=00000000-0000-0000-0000-000000000000}]}) # SaveFormRoleMappingDtoInteger | 
}

begin
  # Save form role mapping
  api_instance.save_form_role_mapping(file_id, opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->save_form_role_mapping: #{e}"
end
```

#### Using the save_form_role_mapping_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> save_form_role_mapping_with_http_info(file_id, opts)

```ruby
begin
  # Save form role mapping
  data, status_code, headers = api_instance.save_form_role_mapping_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->save_form_role_mapping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The form the role mapping belongs to. Send the same value as the `formId` of the request body, which is the one the handler reads. |  |
| **save_form_role_mapping_dto_integer** | [**SaveFormRoleMappingDtoInteger**](SaveFormRoleMappingDtoInteger.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_custom_filter_tag

> <FileIntegerWrapper> set_custom_filter_tag(file_id, custom_filter_parameters)

Set the Custom Filter editing mode

Sets the Custom Filter editing mode to a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-custom-filter-tag/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID.
custom_filter_parameters = DocspaceApiSdk::CustomFilterParameters.new # CustomFilterParameters | The parameters for setting the Custom Filter editing mode.

begin
  # Set the Custom Filter editing mode
  result = api_instance.set_custom_filter_tag(file_id, custom_filter_parameters)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_custom_filter_tag: #{e}"
end
```

#### Using the set_custom_filter_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> set_custom_filter_tag_with_http_info(file_id, custom_filter_parameters)

```ruby
begin
  # Set the Custom Filter editing mode
  data, status_code, headers = api_instance.set_custom_filter_tag_with_http_info(file_id, custom_filter_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_custom_filter_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID. |  |
| **custom_filter_parameters** | [**CustomFilterParameters**](CustomFilterParameters.md) | The parameters for setting the Custom Filter editing mode. |  |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_encryption_info

> set_encryption_info(file_id, opts)

Set file encryption information

Sets or updates the encryption keys for a file with the specified identifier. This allows updating the file's encryption configuration.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-encryption-info/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 12345 # Integer | File ID
opts = {
  access_request_key_dto: [DocspaceApiSdk::AccessRequestKeyDto.new] # Array<AccessRequestKeyDto> | Collection of encryption key data for users with access to the file
}

begin
  # Set file encryption information
  api_instance.set_encryption_info(file_id, opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_encryption_info: #{e}"
end
```

#### Using the set_encryption_info_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_encryption_info_with_http_info(file_id, opts)

```ruby
begin
  # Set file encryption information
  data, status_code, headers = api_instance.set_encryption_info_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_encryption_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | File ID |  |
| **access_request_key_dto** | [**Array&lt;AccessRequestKeyDto&gt;**](AccessRequestKeyDto.md) | Collection of encryption key data for users with access to the file | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_file_external_link

> <FileShareWrapper> set_file_external_link(id, file_link_request)

Set an external link

Sets an external link to a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-external-link/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
id = 1 # Integer | The file ID.
file_link_request = DocspaceApiSdk::FileLinkRequest.new # FileLinkRequest | The file external link parameters.

begin
  # Set an external link
  result = api_instance.set_file_external_link(id, file_link_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_file_external_link: #{e}"
end
```

#### Using the set_file_external_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareWrapper>, Integer, Hash)> set_file_external_link_with_http_info(id, file_link_request)

```ruby
begin
  # Set an external link
  data, status_code, headers = api_instance.set_file_external_link_with_http_info(id, file_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_file_external_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The file ID. |  |
| **file_link_request** | [**FileLinkRequest**](FileLinkRequest.md) | The file external link parameters. |  |

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_file_order

> <FileIntegerWrapper> set_file_order(file_id, opts)

Set file order

Sets the order of the file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-order/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file unique identifier.
opts = {
  order_request_dto: DocspaceApiSdk::OrderRequestDto.new # OrderRequestDto | The file order information.
}

begin
  # Set file order
  result = api_instance.set_file_order(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_file_order: #{e}"
end
```

#### Using the set_file_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> set_file_order_with_http_info(file_id, opts)

```ruby
begin
  # Set file order
  data, status_code, headers = api_instance.set_file_order_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_file_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file unique identifier. |  |
| **order_request_dto** | [**OrderRequestDto**](OrderRequestDto.md) | The file order information. | [optional] |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_files_order

> <FileEntryIntegerArrayWrapper> set_files_order(opts)

Set order of files

Sets the order of the files specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-files-order/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
opts = {
  orders_request_dto_integer: DocspaceApiSdk::OrdersRequestDtoInteger.new({items: [{entryId=1,  order=1}]}) # OrdersRequestDtoInteger | 
}

begin
  # Set order of files
  result = api_instance.set_files_order(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_files_order: #{e}"
end
```

#### Using the set_files_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileEntryIntegerArrayWrapper>, Integer, Hash)> set_files_order_with_http_info(opts)

```ruby
begin
  # Set order of files
  data, status_code, headers = api_instance.set_files_order_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileEntryIntegerArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_files_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orders_request_dto_integer** | [**OrdersRequestDtoInteger**](OrdersRequestDtoInteger.md) |  | [optional] |

### Return type

[**FileEntryIntegerArrayWrapper**](FileEntryIntegerArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_edit_file

> <StringWrapper> start_edit_file(file_id, start_edit)

Start file editing

Informs about opening a file with the ID specified in the request for editing, locking it from being deleted or moved (this method is called by the mobile editors).

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-edit-file/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID to start editing.
start_edit = DocspaceApiSdk::StartEdit.new # StartEdit | The file parameters to start editing.

begin
  # Start file editing
  result = api_instance.start_edit_file(file_id, start_edit)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->start_edit_file: #{e}"
end
```

#### Using the start_edit_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> start_edit_file_with_http_info(file_id, start_edit)

```ruby
begin
  # Start file editing
  data, status_code, headers = api_instance.start_edit_file_with_http_info(file_id, start_edit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->start_edit_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID to start editing. |  |
| **start_edit** | [**StartEdit**](StartEdit.md) | The file parameters to start editing. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_filling_file

> <FileIntegerWrapper> start_filling_file(file_id)

Start file filling

Starts filling a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-filling-file/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID to start filling.

begin
  # Start file filling
  result = api_instance.start_filling_file(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->start_filling_file: #{e}"
end
```

#### Using the start_filling_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> start_filling_file_with_http_info(file_id)

```ruby
begin
  # Start file filling
  data, status_code, headers = api_instance.start_filling_file_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->start_filling_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID to start filling. |  |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## toggle_file_favorite

> <BooleanWrapper> toggle_file_favorite(file_id, opts)

Change the file favorite status

Changes the favorite status of the file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/toggle-file-favorite/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID.
opts = {
  favorite: true # Boolean | Specifies if the file is marked as favorite or not.
}

begin
  # Change the file favorite status
  result = api_instance.toggle_file_favorite(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->toggle_file_favorite: #{e}"
end
```

#### Using the toggle_file_favorite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> toggle_file_favorite_with_http_info(file_id, opts)

```ruby
begin
  # Change the file favorite status
  data, status_code, headers = api_instance.toggle_file_favorite_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->toggle_file_favorite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID. |  |
| **favorite** | **Boolean** | Specifies if the file is marked as favorite or not. | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## track_edit_file

> <ItemKeyValuePairBooleanStringWrapper> track_edit_file(file_id, opts)

Track file editing

Tracks file changes when editing.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/track-edit-file/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID to track editing changes.
opts = {
  tab_id: '00000000-0000-0000-0000-000000000000', # String | The tab ID to track editing changes.
  doc_key_for_track: 'abc123', # String | The document key for tracking changes.
  is_finish: true # Boolean | Specifies whether to finish file tracking or not.
}

begin
  # Track file editing
  result = api_instance.track_edit_file(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->track_edit_file: #{e}"
end
```

#### Using the track_edit_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ItemKeyValuePairBooleanStringWrapper>, Integer, Hash)> track_edit_file_with_http_info(file_id, opts)

```ruby
begin
  # Track file editing
  data, status_code, headers = api_instance.track_edit_file_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ItemKeyValuePairBooleanStringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->track_edit_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID to track editing changes. |  |
| **tab_id** | **String** | The tab ID to track editing changes. | [optional] |
| **doc_key_for_track** | **String** | The document key for tracking changes. | [optional] |
| **is_finish** | **Boolean** | Specifies whether to finish file tracking or not. | [optional] |

### Return type

[**ItemKeyValuePairBooleanStringWrapper**](ItemKeyValuePairBooleanStringWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_file

> <FileIntegerWrapper> update_file(file_id, update_file)

Update a file

Updates the information of the selected file with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file ID to update.
update_file = DocspaceApiSdk::UpdateFile.new # UpdateFile | The parameters for updating a file.

begin
  # Update a file
  result = api_instance.update_file(file_id, update_file)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->update_file: #{e}"
end
```

#### Using the update_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileIntegerWrapper>, Integer, Hash)> update_file_with_http_info(file_id, update_file)

```ruby
begin
  # Update a file
  data, status_code, headers = api_instance.update_file_with_http_info(file_id, update_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->update_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID to update. |  |
| **update_file** | [**UpdateFile**](UpdateFile.md) | The parameters for updating a file. |  |

### Return type

[**FileIntegerWrapper**](FileIntegerWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

