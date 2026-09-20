# DocspaceApiSdk::FilesFilesApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_file_to_recent**](FilesFilesApi.md#add_file_to_recent) | **POST** /api/2.0/files/file/{fileId}/recent | Add a file to Recent |
| [**add_file_to_recent_third_party**](FilesFilesApi.md#add_file_to_recent_third_party) | **POST** /api/2.0/files/file/{fileId}/recent | Add a file to Recent (third-party storage) |
| [**add_templates**](FilesFilesApi.md#add_templates) | **POST** /api/2.0/files/templates | Add template files |
| [**change_version_history**](FilesFilesApi.md#change_version_history) | **PUT** /api/2.0/files/file/{fileId}/history | Change version history |
| [**change_version_history_third_party**](FilesFilesApi.md#change_version_history_third_party) | **PUT** /api/2.0/files/file/{fileId}/history | Change version history (third-party storage) |
| [**check_fill_form_draft**](FilesFilesApi.md#check_fill_form_draft) | **POST** /api/2.0/files/masterform/{fileId}/checkfillformdraft | Open a form draft for filling |
| [**check_fill_form_draft_third_party**](FilesFilesApi.md#check_fill_form_draft_third_party) | **POST** /api/2.0/files/masterform/{fileId}/checkfillformdraft | Open a form draft for filling (third-party storage) |
| [**copy_file_as**](FilesFilesApi.md#copy_file_as) | **POST** /api/2.0/files/file/{fileId}/copyas | Copy a file |
| [**copy_file_as_third_party**](FilesFilesApi.md#copy_file_as_third_party) | **POST** /api/2.0/files/file/{fileId}/copyas | Copy a file (third-party storage) |
| [**create_edit_session**](FilesFilesApi.md#create_edit_session) | **POST** /api/2.0/files/file/{fileId}/edit_session | Create the editing session |
| [**create_edit_session_third_party**](FilesFilesApi.md#create_edit_session_third_party) | **POST** /api/2.0/files/file/{fileId}/edit_session | Create the editing session (third-party storage) |
| [**create_file**](FilesFilesApi.md#create_file) | **POST** /api/2.0/files/{folderId}/file | Create a file |
| [**create_file_third_party**](FilesFilesApi.md#create_file_third_party) | **POST** /api/2.0/files/{folderId}/file | Create a file (third-party storage) |
| [**create_file_in_my_documents**](FilesFilesApi.md#create_file_in_my_documents) | **POST** /api/2.0/files/@my/file | Create a file in My documents |
| [**create_file_primary_external_link**](FilesFilesApi.md#create_file_primary_external_link) | **POST** /api/2.0/files/file/{id}/link | Create the file primary external link |
| [**create_file_primary_external_link_third_party**](FilesFilesApi.md#create_file_primary_external_link_third_party) | **POST** /api/2.0/files/file/{id}/link | Create the file primary external link (third-party storage) |
| [**create_html_file**](FilesFilesApi.md#create_html_file) | **POST** /api/2.0/files/{folderId}/html | Create an HTML file |
| [**create_html_file_third_party**](FilesFilesApi.md#create_html_file_third_party) | **POST** /api/2.0/files/{folderId}/html | Create an HTML file (third-party storage) |
| [**create_html_file_in_my_documents**](FilesFilesApi.md#create_html_file_in_my_documents) | **POST** /api/2.0/files/@my/html | Create an HTML file in My documents |
| [**create_text_file**](FilesFilesApi.md#create_text_file) | **POST** /api/2.0/files/{folderId}/text | Create a text file |
| [**create_text_file_third_party**](FilesFilesApi.md#create_text_file_third_party) | **POST** /api/2.0/files/{folderId}/text | Create a text file (third-party storage) |
| [**create_text_file_in_my_documents**](FilesFilesApi.md#create_text_file_in_my_documents) | **POST** /api/2.0/files/@my/text | Create a text file in My documents |
| [**create_thumbnails**](FilesFilesApi.md#create_thumbnails) | **POST** /api/2.0/files/thumbnails | Queue file thumbnails |
| [**delete_file**](FilesFilesApi.md#delete_file) | **DELETE** /api/2.0/files/file/{fileId} | Delete a file |
| [**delete_file_third_party**](FilesFilesApi.md#delete_file_third_party) | **DELETE** /api/2.0/files/file/{fileId} | Delete a file (third-party storage) |
| [**delete_recent**](FilesFilesApi.md#delete_recent) | **DELETE** /api/2.0/files/recent | Delete recent files |
| [**delete_templates**](FilesFilesApi.md#delete_templates) | **DELETE** /api/2.0/files/templates | Delete template files |
| [**generate_xlsx**](FilesFilesApi.md#generate_xlsx) | **POST** /api/2.0/files/file/{fileId}/xlsx | Generate a form answers report |
| [**get_all_form_roles**](FilesFilesApi.md#get_all_form_roles) | **GET** /api/2.0/files/file/{fileId}/formroles | Get form roles |
| [**get_all_form_roles_third_party**](FilesFilesApi.md#get_all_form_roles_third_party) | **GET** /api/2.0/files/file/{fileId}/formroles | Get form roles (third-party storage) |
| [**get_edit_diff_url**](FilesFilesApi.md#get_edit_diff_url) | **GET** /api/2.0/files/file/{fileId}/edit/diff | Get changes URL |
| [**get_edit_diff_url_third_party**](FilesFilesApi.md#get_edit_diff_url_third_party) | **GET** /api/2.0/files/file/{fileId}/edit/diff | Get changes URL (third-party storage) |
| [**get_edit_history**](FilesFilesApi.md#get_edit_history) | **GET** /api/2.0/files/file/{fileId}/edit/history | Get version history |
| [**get_edit_history_third_party**](FilesFilesApi.md#get_edit_history_third_party) | **GET** /api/2.0/files/file/{fileId}/edit/history | Get version history (third-party storage) |
| [**get_encryption_info**](FilesFilesApi.md#get_encryption_info) | **GET** /api/2.0/files/{fileId}/access | Get file encryption information |
| [**get_encryption_info_third_party**](FilesFilesApi.md#get_encryption_info_third_party) | **GET** /api/2.0/files/{fileId}/access | Get file encryption information (third-party storage) |
| [**get_file_history**](FilesFilesApi.md#get_file_history) | **GET** /api/2.0/files/file/{fileId}/log | Get file history |
| [**get_file_info**](FilesFilesApi.md#get_file_info) | **GET** /api/2.0/files/file/{fileId} | Get file information |
| [**get_file_info_third_party**](FilesFilesApi.md#get_file_info_third_party) | **GET** /api/2.0/files/file/{fileId} | Get file information (third-party storage) |
| [**get_file_links**](FilesFilesApi.md#get_file_links) | **GET** /api/2.0/files/file/{id}/links | Get file external links |
| [**get_file_links_third_party**](FilesFilesApi.md#get_file_links_third_party) | **GET** /api/2.0/files/file/{id}/links | Get file external links (third-party storage) |
| [**get_file_primary_external_link**](FilesFilesApi.md#get_file_primary_external_link) | **GET** /api/2.0/files/file/{id}/link | Get the file primary external link |
| [**get_file_primary_external_link_third_party**](FilesFilesApi.md#get_file_primary_external_link_third_party) | **GET** /api/2.0/files/file/{id}/link | Get the file primary external link (third-party storage) |
| [**get_file_version_info**](FilesFilesApi.md#get_file_version_info) | **GET** /api/2.0/files/file/{fileId}/history | Get file versions |
| [**get_file_version_info_third_party**](FilesFilesApi.md#get_file_version_info_third_party) | **GET** /api/2.0/files/file/{fileId}/history | Get file versions (third-party storage) |
| [**get_fill_result**](FilesFilesApi.md#get_fill_result) | **GET** /api/2.0/files/file/fillresult | Get form-filling result |
| [**get_form_submissions**](FilesFilesApi.md#get_form_submissions) | **GET** /api/2.0/files/file/{fileId}/submissions | Get form submission results |
| [**get_presigned_file_uri**](FilesFilesApi.md#get_presigned_file_uri) | **GET** /api/2.0/files/file/{fileId}/presigned | Get a signed download address |
| [**get_presigned_file_uri_third_party**](FilesFilesApi.md#get_presigned_file_uri_third_party) | **GET** /api/2.0/files/file/{fileId}/presigned | Get a signed download address (third-party storage) |
| [**get_presigned_uri**](FilesFilesApi.md#get_presigned_uri) | **GET** /api/2.0/files/file/{fileId}/presigneduri | Get file download link |
| [**get_presigned_uri_third_party**](FilesFilesApi.md#get_presigned_uri_third_party) | **GET** /api/2.0/files/file/{fileId}/presigneduri | Get file download link (third-party storage) |
| [**get_protected_file_users**](FilesFilesApi.md#get_protected_file_users) | **GET** /api/2.0/files/file/{fileId}/protectusers | Get users for document protection |
| [**get_protected_file_users_third_party**](FilesFilesApi.md#get_protected_file_users_third_party) | **GET** /api/2.0/files/file/{fileId}/protectusers | Get users for document protection (third-party storage) |
| [**get_reference_data**](FilesFilesApi.md#get_reference_data) | **POST** /api/2.0/files/file/referencedata | Resolve a spreadsheet reference |
| [**get_xlsx**](FilesFilesApi.md#get_xlsx) | **GET** /api/2.0/files/file/{fileId}/xlsx | Get form report generation status |
| [**is_form_pdf**](FilesFilesApi.md#is_form_pdf) | **GET** /api/2.0/files/file/{fileId}/isformpdf | Check the PDF file |
| [**is_form_pdf_third_party**](FilesFilesApi.md#is_form_pdf_third_party) | **GET** /api/2.0/files/file/{fileId}/isformpdf | Check the PDF file (third-party storage) |
| [**lock_file**](FilesFilesApi.md#lock_file) | **PUT** /api/2.0/files/file/{fileId}/lock | Lock a file |
| [**lock_file_third_party**](FilesFilesApi.md#lock_file_third_party) | **PUT** /api/2.0/files/file/{fileId}/lock | Lock a file (third-party storage) |
| [**manage_form_filling**](FilesFilesApi.md#manage_form_filling) | **PUT** /api/2.0/files/file/{fileId}/manageformfilling | Perform form filling action |
| [**open_edit_file**](FilesFilesApi.md#open_edit_file) | **GET** /api/2.0/files/file/{fileId}/openedit | Get the editor configuration |
| [**open_edit_file_third_party**](FilesFilesApi.md#open_edit_file_third_party) | **GET** /api/2.0/files/file/{fileId}/openedit | Get the editor configuration (third-party storage) |
| [**restore_file_version**](FilesFilesApi.md#restore_file_version) | **POST** /api/2.0/files/file/{fileId}/restoreversion | Restore a file version |
| [**restore_file_version_third_party**](FilesFilesApi.md#restore_file_version_third_party) | **POST** /api/2.0/files/file/{fileId}/restoreversion | Restore a file version (third-party storage) |
| [**save_editing_file_from_form**](FilesFilesApi.md#save_editing_file_from_form) | **PUT** /api/2.0/files/file/{fileId}/saveediting | Save edited file content |
| [**save_editing_file_from_form_third_party**](FilesFilesApi.md#save_editing_file_from_form_third_party) | **PUT** /api/2.0/files/file/{fileId}/saveediting | Save edited file content (third-party storage) |
| [**save_file_as_pdf**](FilesFilesApi.md#save_file_as_pdf) | **POST** /api/2.0/files/file/{id}/saveaspdf | Save a file as PDF |
| [**save_file_as_pdf_third_party**](FilesFilesApi.md#save_file_as_pdf_third_party) | **POST** /api/2.0/files/file/{id}/saveaspdf | Save a file as PDF (third-party storage) |
| [**save_form_role_mapping**](FilesFilesApi.md#save_form_role_mapping) | **POST** /api/2.0/files/file/{fileId}/formrolemapping | Save form role mapping |
| [**set_custom_filter_tag**](FilesFilesApi.md#set_custom_filter_tag) | **PUT** /api/2.0/files/file/{fileId}/customfilter | Set the Custom Filter editing mode |
| [**set_custom_filter_tag_third_party**](FilesFilesApi.md#set_custom_filter_tag_third_party) | **PUT** /api/2.0/files/file/{fileId}/customfilter | Set the Custom Filter editing mode (third-party storage) |
| [**set_encryption_info**](FilesFilesApi.md#set_encryption_info) | **PUT** /api/2.0/files/{fileId}/access | Set file encryption information |
| [**set_encryption_info_third_party**](FilesFilesApi.md#set_encryption_info_third_party) | **PUT** /api/2.0/files/{fileId}/access | Set file encryption information (third-party storage) |
| [**set_file_external_link**](FilesFilesApi.md#set_file_external_link) | **PUT** /api/2.0/files/file/{id}/links | Set a file external link |
| [**set_file_external_link_third_party**](FilesFilesApi.md#set_file_external_link_third_party) | **PUT** /api/2.0/files/file/{id}/links | Set a file external link (third-party storage) |
| [**set_file_order**](FilesFilesApi.md#set_file_order) | **PUT** /api/2.0/files/{fileId}/order | Set file order |
| [**set_file_order_third_party**](FilesFilesApi.md#set_file_order_third_party) | **PUT** /api/2.0/files/{fileId}/order | Set file order (third-party storage) |
| [**set_files_order**](FilesFilesApi.md#set_files_order) | **PUT** /api/2.0/files/order | Set order of files |
| [**start_edit_file**](FilesFilesApi.md#start_edit_file) | **POST** /api/2.0/files/file/{fileId}/startedit | Open an editing session |
| [**start_edit_file_third_party**](FilesFilesApi.md#start_edit_file_third_party) | **POST** /api/2.0/files/file/{fileId}/startedit | Open an editing session (third-party storage) |
| [**start_filling_file**](FilesFilesApi.md#start_filling_file) | **PUT** /api/2.0/files/file/{fileId}/startfilling | Start filling a form |
| [**start_filling_file_third_party**](FilesFilesApi.md#start_filling_file_third_party) | **PUT** /api/2.0/files/file/{fileId}/startfilling | Start filling a form (third-party storage) |
| [**toggle_file_favorite**](FilesFilesApi.md#toggle_file_favorite) | **GET** /api/2.0/files/favorites/{fileId} | Set the file favorite status |
| [**toggle_file_favorite_third_party**](FilesFilesApi.md#toggle_file_favorite_third_party) | **GET** /api/2.0/files/favorites/{fileId} | Set the file favorite status (third-party storage) |
| [**track_edit_file**](FilesFilesApi.md#track_edit_file) | **GET** /api/2.0/files/file/{fileId}/trackeditfile | Track an editing session |
| [**track_edit_file_third_party**](FilesFilesApi.md#track_edit_file_third_party) | **GET** /api/2.0/files/file/{fileId}/trackeditfile | Track an editing session (third-party storage) |
| [**update_file**](FilesFilesApi.md#update_file) | **PUT** /api/2.0/files/file/{fileId} | Update a file |
| [**update_file_third_party**](FilesFilesApi.md#update_file_third_party) | **PUT** /api/2.0/files/file/{fileId} | Update a file (third-party storage) |


## add_file_to_recent

> <FileWrapper> add_file_to_recent(file_id)

Add a file to Recent

Stamps the file as just used by the calling account and puts it at the top of that account's Recent section,  then answers with the file as it stands now. The list is personal: no other member sees the change, and the  file itself is untouched. Read access is enough, so a room member with view-only rights and an invited guest  may call it, and a visitor who reaches the file through an external link is recorded against that link. A  caller without read access is refused with 403, and an identifier that resolves to nothing answers 404.  Repeating the call is safe: the file keeps a single entry and only moves back to the top. The section holds  the 1000 newest entries of an account and drops the oldest beyond that on its own; folders never enter it, and  an encrypted file of a private room is answered normally but never recorded. Read the section back with  `GET api/2.0/files/recent` and drop entries with `DELETE api/2.0/files/recent`; whether it is offered among  the sections of `GET api/2.0/files/@root` is decided by `PUT api/2.0/files/displayrecent`.

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
file_id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Add a file to Recent
  result = api_instance.add_file_to_recent(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->add_file_to_recent: #{e}"
end
```

#### Using the add_file_to_recent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileWrapper>, Integer, Hash)> add_file_to_recent_with_http_info(file_id)

```ruby
begin
  # Add a file to Recent
  data, status_code, headers = api_instance.add_file_to_recent_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->add_file_to_recent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## add_file_to_recent_third_party

> <ThirdPartyFileWrapper> add_file_to_recent_third_party(file_id)

Add a file to Recent (third-party storage)

Stamps the file as just used by the calling account and puts it at the top of that account's Recent section,  then answers with the file as it stands now. The list is personal: no other member sees the change, and the  file itself is untouched. Read access is enough, so a room member with view-only rights and an invited guest  may call it, and a visitor who reaches the file through an external link is recorded against that link. A  caller without read access is refused with 403, and an identifier that resolves to nothing answers 404.  Repeating the call is safe: the file keeps a single entry and only moves back to the top. The section holds  the 1000 newest entries of an account and drops the oldest beyond that on its own; folders never enter it, and  an encrypted file of a private room is answered normally but never recorded. Read the section back with  `GET api/2.0/files/recent` and drop entries with `DELETE api/2.0/files/recent`; whether it is offered among  the sections of `GET api/2.0/files/@root` is decided by `PUT api/2.0/files/displayrecent`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-file-to-recent-third-party/).

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
file_id = '10' # String | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Add a file to Recent (third-party storage)
  result = api_instance.add_file_to_recent_third_party(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->add_file_to_recent_third_party: #{e}"
end
```

#### Using the add_file_to_recent_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyFileWrapper>, Integer, Hash)> add_file_to_recent_third_party_with_http_info(file_id)

```ruby
begin
  # Add a file to Recent (third-party storage)
  data, status_code, headers = api_instance.add_file_to_recent_third_party_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyFileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->add_file_to_recent_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**ThirdPartyFileWrapper**](ThirdPartyFileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## add_templates

> <BooleanWrapper> add_templates(opts)

Add template files

Adds the listed files to the personal template list of the calling account, the set the portal offers when a  new document is started from an existing one. The list belongs to the account and no other member sees it.  Every authenticated member type may manage their own list, a guest is refused, and read access to each file is  required. Only formats the portal treats as template documents survive: the accepted extensions arrive in  `extsWebTemplate` of `GET api/2.0/files/settings`, and a file of any other format is dropped silently. Only  numeric ids are accepted, so a file on a connected third-party account cannot become a template. The answer is  `true` whenever the request was understood, which an empty list, an id that does not exist and an unreadable  file all achieve, so it confirms nothing about what was added; no operation of this document reads the list  back. Repeating the call is safe. Use `DELETE api/2.0/files/templates` to drop a file again.

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

> <FileArrayWrapper> change_version_history(file_id, change_history)

Change version history

Closes or reopens a revision group in the version history of a file and answers with every stored version of  that file, newest first. With `continueVersion=false` the named version is completed: its content is stored  again as a fresh version that opens a new revision group, so the editing that follows no longer extends the  previous one. With `continueVersion=true` the last revision group is folded back into the group before it, so  the next save continues that revision instead of becoming a version of its own; a file that has only one group  is left as it is. A `version` of 0 means the current version. The caller needs the right to edit the history  of the file, which the room admin, a DocSpace admin acting as room manager and a member with content-creator  rights have; plain editing access is refused with 403, as are a guest and a member without access to the room.  The call is mutating and not idempotent. A file that is locked, lies in Trash, is open in an editing session  or is kept in a connected third-party storage is refused.

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
file_id = 1 # Integer | The file whose version history is changed.
change_history = DocspaceApiSdk::ChangeHistory.new({version: 1}) # ChangeHistory | The change to make to the revision group.

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

> <Array(<FileArrayWrapper>, Integer, Hash)> change_version_history_with_http_info(file_id, change_history)

```ruby
begin
  # Change version history
  data, status_code, headers = api_instance.change_version_history_with_http_info(file_id, change_history)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->change_version_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file whose version history is changed. |  |
| **change_history** | [**ChangeHistory**](ChangeHistory.md) | The change to make to the revision group. |  |

### Return type

[**FileArrayWrapper**](FileArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_version_history_third_party

> <ThirdPartyFileArrayWrapper> change_version_history_third_party(file_id, change_history)

Change version history (third-party storage)

Closes or reopens a revision group in the version history of a file and answers with every stored version of  that file, newest first. With `continueVersion=false` the named version is completed: its content is stored  again as a fresh version that opens a new revision group, so the editing that follows no longer extends the  previous one. With `continueVersion=true` the last revision group is folded back into the group before it, so  the next save continues that revision instead of becoming a version of its own; a file that has only one group  is left as it is. A `version` of 0 means the current version. The caller needs the right to edit the history  of the file, which the room admin, a DocSpace admin acting as room manager and a member with content-creator  rights have; plain editing access is refused with 403, as are a guest and a member without access to the room.  The call is mutating and not idempotent. A file that is locked, lies in Trash, is open in an editing session  or is kept in a connected third-party storage is refused.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-version-history-third-party/).

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
file_id = '1' # String | The file whose version history is changed.
change_history = DocspaceApiSdk::ChangeHistory.new({version: 1}) # ChangeHistory | The change to make to the revision group.

begin
  # Change version history (third-party storage)
  result = api_instance.change_version_history_third_party(file_id, change_history)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->change_version_history_third_party: #{e}"
end
```

#### Using the change_version_history_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyFileArrayWrapper>, Integer, Hash)> change_version_history_third_party_with_http_info(file_id, change_history)

```ruby
begin
  # Change version history (third-party storage)
  data, status_code, headers = api_instance.change_version_history_third_party_with_http_info(file_id, change_history)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyFileArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->change_version_history_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file whose version history is changed. |  |
| **change_history** | [**ChangeHistory**](ChangeHistory.md) | The change to make to the revision group. |  |

### Return type

[**ThirdPartyFileArrayWrapper**](ThirdPartyFileArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## check_fill_form_draft

> <StringWrapper> check_fill_form_draft(file_id, check_fill_form_draft)

Open a form draft for filling

Resolves the editor address the caller must open to fill out the given PDF form, and provisions the personal  draft that filling needs. The form has to live in a form-filling room and filling has to be started for it  with `PUT api/2.0/files/file/{fileId}/manageformfilling`; a caller who may edit the form, a form whose filling  has not started, and a request naming `view` or `embedded` as the action are all sent straight to the form  itself. Read access to the form is enough to get an address, fill-forms access is what puts the caller into  the filling flow, and a holder of an external link may call it without signing in, while a caller with neither  a session nor a link key is rejected. In the filling case the call is not read-only: it copies the form into  the room's in-progress folder under the caller's name, clears the new-item badge, closes the editing session  of the original, and answers with the address of that copy. A repeated call reuses that copy, and a call  naming an existing draft adds a discard notice when that draft is no longer valid. The answer is one URL  string that may carry a `#message/...` fragment the editor renders as a notice. For the full editor  configuration use `GET api/2.0/files/file/{fileId}/openedit`. A form the caller cannot open is refused with  403, and one that does not exist is answered as missing.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-fill-form-draft/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The identifier of the PDF form to open, as it is returned by a room listing such as  `GET api/2.0/files/{folderId}`. The identifier of an already created draft is accepted here as well.
check_fill_form_draft = DocspaceApiSdk::CheckFillFormDraft.new({version: 0}) # CheckFillFormDraft | The revision of the form to open and what the caller intends to do with it.

begin
  # Open a form draft for filling
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
  # Open a form draft for filling
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
| **file_id** | **Integer** | The identifier of the PDF form to open, as it is returned by a room listing such as  `GET api/2.0/files/{folderId}`. The identifier of an already created draft is accepted here as well. |  |
| **check_fill_form_draft** | [**CheckFillFormDraft**](CheckFillFormDraft.md) | The revision of the form to open and what the caller intends to do with it. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## check_fill_form_draft_third_party

> <StringWrapper> check_fill_form_draft_third_party(file_id, check_fill_form_draft)

Open a form draft for filling (third-party storage)

Resolves the editor address the caller must open to fill out the given PDF form, and provisions the personal  draft that filling needs. The form has to live in a form-filling room and filling has to be started for it  with `PUT api/2.0/files/file/{fileId}/manageformfilling`; a caller who may edit the form, a form whose filling  has not started, and a request naming `view` or `embedded` as the action are all sent straight to the form  itself. Read access to the form is enough to get an address, fill-forms access is what puts the caller into  the filling flow, and a holder of an external link may call it without signing in, while a caller with neither  a session nor a link key is rejected. In the filling case the call is not read-only: it copies the form into  the room's in-progress folder under the caller's name, clears the new-item badge, closes the editing session  of the original, and answers with the address of that copy. A repeated call reuses that copy, and a call  naming an existing draft adds a discard notice when that draft is no longer valid. The answer is one URL  string that may carry a `#message/...` fragment the editor renders as a notice. For the full editor  configuration use `GET api/2.0/files/file/{fileId}/openedit`. A form the caller cannot open is refused with  403, and one that does not exist is answered as missing.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-fill-form-draft-third-party/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = '1' # String | The identifier of the PDF form to open, as it is returned by a room listing such as  `GET api/2.0/files/{folderId}`. The identifier of an already created draft is accepted here as well.
check_fill_form_draft = DocspaceApiSdk::CheckFillFormDraft.new({version: 0}) # CheckFillFormDraft | The revision of the form to open and what the caller intends to do with it.

begin
  # Open a form draft for filling (third-party storage)
  result = api_instance.check_fill_form_draft_third_party(file_id, check_fill_form_draft)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->check_fill_form_draft_third_party: #{e}"
end
```

#### Using the check_fill_form_draft_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> check_fill_form_draft_third_party_with_http_info(file_id, check_fill_form_draft)

```ruby
begin
  # Open a form draft for filling (third-party storage)
  data, status_code, headers = api_instance.check_fill_form_draft_third_party_with_http_info(file_id, check_fill_form_draft)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->check_fill_form_draft_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The identifier of the PDF form to open, as it is returned by a room listing such as  `GET api/2.0/files/{folderId}`. The identifier of an already created draft is accepted here as well. |  |
| **check_fill_form_draft** | [**CheckFillFormDraft**](CheckFillFormDraft.md) | The revision of the form to open and what the caller intends to do with it. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## copy_file_as

> <FileEntryBaseWrapper> copy_file_as(file_id, copy_as_json_element)

Copy a file

Copies one file into another folder under a new title, converting its content when the new title names a  different format, and answers with the copy that was created. The extension of `destTitle` decides what  happens: the same extension as the source copies the bytes as they are, a different one has the document  service convert them first, and `toForm=true` converts a document into a PDF form. `password` unlocks a source  file that is protected by one. `destFolderId` is read as a number for a folder inside the portal and as a  string for a folder in a connected third-party storage; anything else is answered with an empty body and  nothing is copied. The caller needs read access to the source file and the right to create files in the  destination folder, and is otherwise refused with 403; a missing file or folder is answered with 404, and a  format that cannot be converted with 400. The call is mutating and not idempotent - each call adds another  copy. To copy many items at once, and without converting, use `PUT api/2.0/files/fileops/copy`.

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
file_id = 1 # Integer | The file to copy.
copy_as_json_element = DocspaceApiSdk::CopyAsJsonElement.new({dest_title: 'Document Copy.docx', dest_folder_id: nil}) # CopyAsJsonElement | The title, the destination and the conversion options of the copy.

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
| **file_id** | **Integer** | The file to copy. |  |
| **copy_as_json_element** | [**CopyAsJsonElement**](CopyAsJsonElement.md) | The title, the destination and the conversion options of the copy. |  |

### Return type

[**FileEntryBaseWrapper**](FileEntryBaseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## copy_file_as_third_party

> <FileEntryBaseWrapper> copy_file_as_third_party(file_id, copy_as_json_element)

Copy a file (third-party storage)

Copies one file into another folder under a new title, converting its content when the new title names a  different format, and answers with the copy that was created. The extension of `destTitle` decides what  happens: the same extension as the source copies the bytes as they are, a different one has the document  service convert them first, and `toForm=true` converts a document into a PDF form. `password` unlocks a source  file that is protected by one. `destFolderId` is read as a number for a folder inside the portal and as a  string for a folder in a connected third-party storage; anything else is answered with an empty body and  nothing is copied. The caller needs read access to the source file and the right to create files in the  destination folder, and is otherwise refused with 403; a missing file or folder is answered with 404, and a  format that cannot be converted with 400. The call is mutating and not idempotent - each call adds another  copy. To copy many items at once, and without converting, use `PUT api/2.0/files/fileops/copy`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/copy-file-as-third-party/).

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
file_id = '1' # String | The file to copy.
copy_as_json_element = DocspaceApiSdk::CopyAsJsonElement.new({dest_title: 'Document Copy.docx', dest_folder_id: nil}) # CopyAsJsonElement | The title, the destination and the conversion options of the copy.

begin
  # Copy a file (third-party storage)
  result = api_instance.copy_file_as_third_party(file_id, copy_as_json_element)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->copy_file_as_third_party: #{e}"
end
```

#### Using the copy_file_as_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileEntryBaseWrapper>, Integer, Hash)> copy_file_as_third_party_with_http_info(file_id, copy_as_json_element)

```ruby
begin
  # Copy a file (third-party storage)
  data, status_code, headers = api_instance.copy_file_as_third_party_with_http_info(file_id, copy_as_json_element)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileEntryBaseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->copy_file_as_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file to copy. |  |
| **copy_as_json_element** | [**CopyAsJsonElement**](CopyAsJsonElement.md) | The title, the destination and the conversion options of the copy. |  |

### Return type

[**FileEntryBaseWrapper**](FileEntryBaseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_edit_session

> <ChunkedUploadSessionResponseWrapperWrapper> create_edit_session(file_id, opts)

Create the editing session

Opens a chunked session that replaces the content of an existing file, which is how WebDAV clients save over a  document. The answer carries the session id the later calls quote, the address of the standalone chunk  handler, the expiry and the reserved size, and nothing is written until the parts reach  `POST api/2.0/files/{folderId}/session/{sessionId}/upload` and the session is closed with  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`, where `folderId` is the folder the file lives in.  Unlike an upload into a folder, the finished content does not become a new version: it overwrites the current  one, and the file loses its encrypted flag and its stored conversion result in the process. The caller must be  allowed to edit the file, as the owner, a room manager and a member invited with editing rights are; a reader  and a guest get 403. A file that does not exist is answered as missing, and a payload above the portal limit  for chunked uploads is refused before the session is created.

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
file_id = 1 # Integer | The file whose content the session will replace; take the id from a folder listing or from the file itself.
opts = {
  file_size: 1024 # Integer | The number of bytes the new content will take. It is checked against the portal limit for chunked uploads  before the session opens, and a session left at 0 takes the whole content in a single part.
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

> <Array(<ChunkedUploadSessionResponseWrapperWrapper>, Integer, Hash)> create_edit_session_with_http_info(file_id, opts)

```ruby
begin
  # Create the editing session
  data, status_code, headers = api_instance.create_edit_session_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChunkedUploadSessionResponseWrapperWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_edit_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file whose content the session will replace; take the id from a folder listing or from the file itself. |  |
| **file_size** | **Integer** | The number of bytes the new content will take. It is checked against the portal limit for chunked uploads  before the session opens, and a session left at 0 takes the whole content in a single part. | [optional] |

### Return type

[**ChunkedUploadSessionResponseWrapperWrapper**](ChunkedUploadSessionResponseWrapperWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_edit_session_third_party

> <ThirdPartyChunkedUploadSessionResponseWrapperWrapper> create_edit_session_third_party(file_id, opts)

Create the editing session (third-party storage)

Opens a chunked session that replaces the content of an existing file, which is how WebDAV clients save over a  document. The answer carries the session id the later calls quote, the address of the standalone chunk  handler, the expiry and the reserved size, and nothing is written until the parts reach  `POST api/2.0/files/{folderId}/session/{sessionId}/upload` and the session is closed with  `PUT api/2.0/files/{folderId}/session/{sessionId}/finalize`, where `folderId` is the folder the file lives in.  Unlike an upload into a folder, the finished content does not become a new version: it overwrites the current  one, and the file loses its encrypted flag and its stored conversion result in the process. The caller must be  allowed to edit the file, as the owner, a room manager and a member invited with editing rights are; a reader  and a guest get 403. A file that does not exist is answered as missing, and a payload above the portal limit  for chunked uploads is refused before the session is created.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-edit-session-third-party/).

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
file_id = '1' # String | The file whose content the session will replace; take the id from a folder listing or from the file itself.
opts = {
  file_size: 1024 # Integer | The number of bytes the new content will take. It is checked against the portal limit for chunked uploads  before the session opens, and a session left at 0 takes the whole content in a single part.
}

begin
  # Create the editing session (third-party storage)
  result = api_instance.create_edit_session_third_party(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_edit_session_third_party: #{e}"
end
```

#### Using the create_edit_session_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyChunkedUploadSessionResponseWrapperWrapper>, Integer, Hash)> create_edit_session_third_party_with_http_info(file_id, opts)

```ruby
begin
  # Create the editing session (third-party storage)
  data, status_code, headers = api_instance.create_edit_session_third_party_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyChunkedUploadSessionResponseWrapperWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_edit_session_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file whose content the session will replace; take the id from a folder listing or from the file itself. |  |
| **file_size** | **Integer** | The number of bytes the new content will take. It is checked against the portal limit for chunked uploads  before the session opens, and a session left at 0 takes the whole content in a single part. | [optional] |

### Return type

[**ThirdPartyChunkedUploadSessionResponseWrapperWrapper**](ThirdPartyChunkedUploadSessionResponseWrapperWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_file

> <FileWrapper> create_file(folder_id, create_file_json_element)

Create a file

Creates a file in the folder named in the route and answers with the stored file. The extension in the title  decides the format: an extension of a known text, spreadsheet or presentation format is rewritten to the  portal's own DOCX, XLSX or PPTX, a title with no extension at all gets DOCX added, while an unknown extension  and the few formats the portal keeps as they are stay untouched; `enableExternalExt=true` stores the title  verbatim and skips that rewriting. The content comes from one of three sources, tried in this order: `formId`  copies a ready form out of the form gallery, `templateId` copies an existing file the caller can read - a  number for a file in the portal, a string for one in a connected third-party storage - and with neither of  them the portal's blank template for that format and the caller's language is used. The caller needs the right  to create files in the folder, and the room roots, Archive and the template sections are refused even to an  admin. The call is mutating and not idempotent. To create the file in the caller's own section use  `POST api/2.0/files/@my/file`.

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
folder_id = 1 # Integer | The folder the file is created in.
create_file_json_element = DocspaceApiSdk::CreateFileJsonElement.new({title: 'New Document.docx'}) # CreateFileJsonElement | The title of the new file and the source of its content.

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

> <Array(<FileWrapper>, Integer, Hash)> create_file_with_http_info(folder_id, create_file_json_element)

```ruby
begin
  # Create a file
  data, status_code, headers = api_instance.create_file_with_http_info(folder_id, create_file_json_element)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder the file is created in. |  |
| **create_file_json_element** | [**CreateFileJsonElement**](CreateFileJsonElement.md) | The title of the new file and the source of its content. |  |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_file_third_party

> <ThirdPartyFileWrapper> create_file_third_party(folder_id, create_file_json_element)

Create a file (third-party storage)

Creates a file in the folder named in the route and answers with the stored file. The extension in the title  decides the format: an extension of a known text, spreadsheet or presentation format is rewritten to the  portal's own DOCX, XLSX or PPTX, a title with no extension at all gets DOCX added, while an unknown extension  and the few formats the portal keeps as they are stay untouched; `enableExternalExt=true` stores the title  verbatim and skips that rewriting. The content comes from one of three sources, tried in this order: `formId`  copies a ready form out of the form gallery, `templateId` copies an existing file the caller can read - a  number for a file in the portal, a string for one in a connected third-party storage - and with neither of  them the portal's blank template for that format and the caller's language is used. The caller needs the right  to create files in the folder, and the room roots, Archive and the template sections are refused even to an  admin. The call is mutating and not idempotent. To create the file in the caller's own section use  `POST api/2.0/files/@my/file`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-third-party/).

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
folder_id = '1' # String | The folder the file is created in.
create_file_json_element = DocspaceApiSdk::CreateFileJsonElement.new({title: 'New Document.docx'}) # CreateFileJsonElement | The title of the new file and the source of its content.

begin
  # Create a file (third-party storage)
  result = api_instance.create_file_third_party(folder_id, create_file_json_element)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_file_third_party: #{e}"
end
```

#### Using the create_file_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyFileWrapper>, Integer, Hash)> create_file_third_party_with_http_info(folder_id, create_file_json_element)

```ruby
begin
  # Create a file (third-party storage)
  data, status_code, headers = api_instance.create_file_third_party_with_http_info(folder_id, create_file_json_element)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyFileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_file_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **String** | The folder the file is created in. |  |
| **create_file_json_element** | [**CreateFileJsonElement**](CreateFileJsonElement.md) | The title of the new file and the source of its content. |  |

### Return type

[**ThirdPartyFileWrapper**](ThirdPartyFileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_file_in_my_documents

> <FileWrapper> create_file_in_my_documents(opts)

Create a file in My documents

Creates a file in the caller's own My documents section and answers with the stored file. The extension in  the title decides the format: an extension of a known text, spreadsheet or presentation format is rewritten to  the portal's own DOCX, XLSX or PPTX, a title with no extension at all gets DOCX added, while an unknown  extension and the few formats the portal keeps as they are stay untouched; `enableExternalExt=true` stores the  title verbatim and skips that rewriting. The content comes from one of three sources, tried in this order:  `formId` copies a ready form out of the form gallery, `templateId` copies an existing file the caller can read  - a number for a file in the portal, a string for one in a connected third-party storage - and with neither of  them the portal's blank template for that format and the caller's language is used. The call is mutating and  not idempotent: each call adds another file. A guest has no My documents section of their own, so a guest  cannot use this operation at all, and a template the caller cannot read is refused. To create a file in a  room or any other folder use  `POST api/2.0/files/{folderId}/file`.

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
  # Create a file in My documents
  result = api_instance.create_file_in_my_documents(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_file_in_my_documents: #{e}"
end
```

#### Using the create_file_in_my_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileWrapper>, Integer, Hash)> create_file_in_my_documents_with_http_info(opts)

```ruby
begin
  # Create a file in My documents
  data, status_code, headers = api_instance.create_file_in_my_documents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_file_in_my_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_file_json_element** | [**CreateFileJsonElement**](CreateFileJsonElement.md) |  | [optional] |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_file_primary_external_link

> <FileShareWrapper> create_file_primary_external_link(id, file_link_request)

Create the file primary external link

Answers with the primary external link of a file, creating it on the first call and returning the one that  already exists afterwards, so the operation is idempotent in effect: a second call with other parameters does  not reconfigure the existing link, and changing one is the business of `PUT api/2.0/files/file/{id}/links`.  The parameters therefore only shape the link at the moment it is born - `access` its rights, `expirationDate`  its lifetime, which for a file in a personal section is unlimited here rather than the default of a few days,  `internal` whether only signed-in members may follow it, `denyDownload` whether the content may only be  viewed, and `password` a secret to be asked for. A PDF form gets the rights it needs for filling out whatever  was asked for, and a form in a form-filling room is answered with the link of the room instead. The caller  needs the right to share the file and is otherwise refused with 403; a link that was deliberately revoked is  not recreated but answered with 404. Read the address from `sharedTo.shareLink`.

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
id = 1 # Integer | The file the link points at.
file_link_request = DocspaceApiSdk::FileLinkRequest.new # FileLinkRequest | The settings of the link. They are applied in full, so a field left out is reset rather than kept.

begin
  # Create the file primary external link
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
  # Create the file primary external link
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
| **id** | **Integer** | The file the link points at. |  |
| **file_link_request** | [**FileLinkRequest**](FileLinkRequest.md) | The settings of the link. They are applied in full, so a field left out is reset rather than kept. |  |

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_file_primary_external_link_third_party

> <FileShareWrapper> create_file_primary_external_link_third_party(id, file_link_request)

Create the file primary external link (third-party storage)

Answers with the primary external link of a file, creating it on the first call and returning the one that  already exists afterwards, so the operation is idempotent in effect: a second call with other parameters does  not reconfigure the existing link, and changing one is the business of `PUT api/2.0/files/file/{id}/links`.  The parameters therefore only shape the link at the moment it is born - `access` its rights, `expirationDate`  its lifetime, which for a file in a personal section is unlimited here rather than the default of a few days,  `internal` whether only signed-in members may follow it, `denyDownload` whether the content may only be  viewed, and `password` a secret to be asked for. A PDF form gets the rights it needs for filling out whatever  was asked for, and a form in a form-filling room is answered with the link of the room instead. The caller  needs the right to share the file and is otherwise refused with 403; a link that was deliberately revoked is  not recreated but answered with 404. Read the address from `sharedTo.shareLink`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-file-primary-external-link-third-party/).

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
id = '1' # String | The file the link points at.
file_link_request = DocspaceApiSdk::FileLinkRequest.new # FileLinkRequest | The settings of the link. They are applied in full, so a field left out is reset rather than kept.

begin
  # Create the file primary external link (third-party storage)
  result = api_instance.create_file_primary_external_link_third_party(id, file_link_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_file_primary_external_link_third_party: #{e}"
end
```

#### Using the create_file_primary_external_link_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareWrapper>, Integer, Hash)> create_file_primary_external_link_third_party_with_http_info(id, file_link_request)

```ruby
begin
  # Create the file primary external link (third-party storage)
  data, status_code, headers = api_instance.create_file_primary_external_link_third_party_with_http_info(id, file_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_file_primary_external_link_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The file the link points at. |  |
| **file_link_request** | [**FileLinkRequest**](FileLinkRequest.md) | The settings of the link. They are applied in full, so a field left out is reset rather than kept. |  |

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_html_file

> <FileWrapper> create_html_file(folder_id, create_text_or_html_file)

Create an HTML file

Creates an HTML file in the folder named in the route out of the markup passed as the content, and answers  with the stored file. The `.html` extension is added to the title unless the title already ends with it, and a  request carrying no content is rejected as an invalid request. `createNewIfExist` acts the other way round  than its name reads: with `true` the file that already carries this title is updated, the markup replacing its  content and a version appearing in its history, while with `false`, which is also the default, another file is  created and its title made unique, as in Notes (1).html. Updating needs the existing file to be editable by  the caller, so one that is locked, open in an editing session, encrypted or in Trash is left alone and a new  file appears beside it instead. The caller needs the right to create files in the folder and is otherwise  refused with 403. The call is mutating. To create the file in the caller's own section use  `POST api/2.0/files/@my/html`.

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
folder_id = 1 # Integer | The folder the file is created in.
create_text_or_html_file = DocspaceApiSdk::CreateTextOrHtmlFile.new({title: 'Document.txt'}) # CreateTextOrHtmlFile | The title, the content and the collision behaviour of the new file.

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

> <Array(<FileWrapper>, Integer, Hash)> create_html_file_with_http_info(folder_id, create_text_or_html_file)

```ruby
begin
  # Create an HTML file
  data, status_code, headers = api_instance.create_html_file_with_http_info(folder_id, create_text_or_html_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_html_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder the file is created in. |  |
| **create_text_or_html_file** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) | The title, the content and the collision behaviour of the new file. |  |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_html_file_third_party

> <ThirdPartyFileWrapper> create_html_file_third_party(folder_id, create_text_or_html_file)

Create an HTML file (third-party storage)

Creates an HTML file in the folder named in the route out of the markup passed as the content, and answers  with the stored file. The `.html` extension is added to the title unless the title already ends with it, and a  request carrying no content is rejected as an invalid request. `createNewIfExist` acts the other way round  than its name reads: with `true` the file that already carries this title is updated, the markup replacing its  content and a version appearing in its history, while with `false`, which is also the default, another file is  created and its title made unique, as in Notes (1).html. Updating needs the existing file to be editable by  the caller, so one that is locked, open in an editing session, encrypted or in Trash is left alone and a new  file appears beside it instead. The caller needs the right to create files in the folder and is otherwise  refused with 403. The call is mutating. To create the file in the caller's own section use  `POST api/2.0/files/@my/html`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-html-file-third-party/).

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
folder_id = '1' # String | The folder the file is created in.
create_text_or_html_file = DocspaceApiSdk::CreateTextOrHtmlFile.new({title: 'Document.txt'}) # CreateTextOrHtmlFile | The title, the content and the collision behaviour of the new file.

begin
  # Create an HTML file (third-party storage)
  result = api_instance.create_html_file_third_party(folder_id, create_text_or_html_file)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_html_file_third_party: #{e}"
end
```

#### Using the create_html_file_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyFileWrapper>, Integer, Hash)> create_html_file_third_party_with_http_info(folder_id, create_text_or_html_file)

```ruby
begin
  # Create an HTML file (third-party storage)
  data, status_code, headers = api_instance.create_html_file_third_party_with_http_info(folder_id, create_text_or_html_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyFileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_html_file_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **String** | The folder the file is created in. |  |
| **create_text_or_html_file** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) | The title, the content and the collision behaviour of the new file. |  |

### Return type

[**ThirdPartyFileWrapper**](ThirdPartyFileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_html_file_in_my_documents

> <FileWrapper> create_html_file_in_my_documents(opts)

Create an HTML file in My documents

Creates an HTML file in the caller's own My documents section out of the markup passed as the content, and  answers with the stored file. The `.html` extension is added to the title unless the title already ends with  it, and a request carrying no content is rejected as invalid. `createNewIfExist` acts the other way round than  its name reads: with `true` the file that already carries this title is updated, the markup replacing its  content and a version appearing in its history, while with `false`, which is also the default, another file is  created and its title made unique, as in Notes (1).html. Updating needs the existing file to be editable by  the caller, so one that is locked, open in an editing session, encrypted or in Trash is left alone and a new  file appears beside it instead. The call is mutating: repeating it with `true` keeps a single file and grows  its history, repeating it with `false` fills the section with numbered copies. A guest has no My documents  section and is refused. To create the file in a room or another folder use  `POST api/2.0/files/{folderId}/html`.

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
  # Create an HTML file in My documents
  result = api_instance.create_html_file_in_my_documents(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_html_file_in_my_documents: #{e}"
end
```

#### Using the create_html_file_in_my_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileWrapper>, Integer, Hash)> create_html_file_in_my_documents_with_http_info(opts)

```ruby
begin
  # Create an HTML file in My documents
  data, status_code, headers = api_instance.create_html_file_in_my_documents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_html_file_in_my_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_text_or_html_file** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) |  | [optional] |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_text_file

> <FileWrapper> create_text_file(folder_id, create_text_or_html_file)

Create a text file

Creates a text file in the folder named in the route out of the text passed as the content, and answers with  the stored file. The extension follows the content rather than the request: `.txt` normally, but `.html` as  soon as the text contains something shaped like an HTML tag, so a snippet of markup sent here ends up as an  HTML file; the extension is added to the title unless the title already ends with it. A request carrying no  content is rejected as an invalid request. `createNewIfExist` acts the other way round than its name reads:  with `true` the file that already carries this title is updated and a version appears in its history, while  with `false`, which is also the default, another file is created and its title made unique, as in Notes  (1).txt. A file that is locked, open in an editing session, encrypted or in Trash is not updated - a new file  appears beside it instead. The caller needs the right to create files in the folder. The call is mutating. To  create the file in the caller's own section use `POST api/2.0/files/@my/text`.

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
folder_id = 1 # Integer | The folder the file is created in.
create_text_or_html_file = DocspaceApiSdk::CreateTextOrHtmlFile.new({title: 'Document.txt'}) # CreateTextOrHtmlFile | The title, the content and the collision behaviour of the new file.

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

> <Array(<FileWrapper>, Integer, Hash)> create_text_file_with_http_info(folder_id, create_text_or_html_file)

```ruby
begin
  # Create a text file
  data, status_code, headers = api_instance.create_text_file_with_http_info(folder_id, create_text_or_html_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_text_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder the file is created in. |  |
| **create_text_or_html_file** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) | The title, the content and the collision behaviour of the new file. |  |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_text_file_third_party

> <ThirdPartyFileWrapper> create_text_file_third_party(folder_id, create_text_or_html_file)

Create a text file (third-party storage)

Creates a text file in the folder named in the route out of the text passed as the content, and answers with  the stored file. The extension follows the content rather than the request: `.txt` normally, but `.html` as  soon as the text contains something shaped like an HTML tag, so a snippet of markup sent here ends up as an  HTML file; the extension is added to the title unless the title already ends with it. A request carrying no  content is rejected as an invalid request. `createNewIfExist` acts the other way round than its name reads:  with `true` the file that already carries this title is updated and a version appears in its history, while  with `false`, which is also the default, another file is created and its title made unique, as in Notes  (1).txt. A file that is locked, open in an editing session, encrypted or in Trash is not updated - a new file  appears beside it instead. The caller needs the right to create files in the folder. The call is mutating. To  create the file in the caller's own section use `POST api/2.0/files/@my/text`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-text-file-third-party/).

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
folder_id = '1' # String | The folder the file is created in.
create_text_or_html_file = DocspaceApiSdk::CreateTextOrHtmlFile.new({title: 'Document.txt'}) # CreateTextOrHtmlFile | The title, the content and the collision behaviour of the new file.

begin
  # Create a text file (third-party storage)
  result = api_instance.create_text_file_third_party(folder_id, create_text_or_html_file)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_text_file_third_party: #{e}"
end
```

#### Using the create_text_file_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyFileWrapper>, Integer, Hash)> create_text_file_third_party_with_http_info(folder_id, create_text_or_html_file)

```ruby
begin
  # Create a text file (third-party storage)
  data, status_code, headers = api_instance.create_text_file_third_party_with_http_info(folder_id, create_text_or_html_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyFileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_text_file_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **String** | The folder the file is created in. |  |
| **create_text_or_html_file** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) | The title, the content and the collision behaviour of the new file. |  |

### Return type

[**ThirdPartyFileWrapper**](ThirdPartyFileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_text_file_in_my_documents

> <FileWrapper> create_text_file_in_my_documents(opts)

Create a text file in My documents

Creates a text file in the caller's own My documents section out of the text passed as the content, and  answers with the stored file. The extension follows the content rather than the request: `.txt` normally, but  `.html` as soon as the text contains something shaped like an HTML tag, so a snippet of markup sent here ends  up as an HTML file; the extension is added to the title unless the title already ends with it. A request  carrying no content is rejected as invalid. `createNewIfExist` acts the other way round than its name reads:  with `true` the file that already carries this title is updated and a version appears in its history, while  with `false`, which is also the default, another file is created and its title made unique, as in  Notes (1).txt. A file that is locked, open in an editing session, encrypted or in Trash is not updated - a  new file appears beside it instead. The call is mutating. A guest has no My documents section and is  refused. To create the file in a room or another folder use `POST api/2.0/files/{folderId}/text`.

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
  # Create a text file in My documents
  result = api_instance.create_text_file_in_my_documents(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_text_file_in_my_documents: #{e}"
end
```

#### Using the create_text_file_in_my_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileWrapper>, Integer, Hash)> create_text_file_in_my_documents_with_http_info(opts)

```ruby
begin
  # Create a text file in My documents
  data, status_code, headers = api_instance.create_text_file_in_my_documents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->create_text_file_in_my_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_text_or_html_file** | [**CreateTextOrHtmlFile**](CreateTextOrHtmlFile.md) |  | [optional] |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_thumbnails

> <ObjectArrayWrapper> create_thumbnails(opts)

Queue file thumbnails

Asks the portal to build preview thumbnails for the listed files, and answers at once with the same file ids  that were sent. That answer echoes the request and does not confirm that anything was queued: the work is  handed over to a background worker, and a failure on the way there is written to the log rather than reported  to the caller. Only the file ids of the body are read - the folder ids are ignored, and a request naming no  files at all is answered with an empty list. Ids of files kept in a connected third-party storage are dropped  as well, because the worker handles portal storage only. Access to the individual files is not checked here;  the caller has to be signed in or to reach the portal through an external share link, and an anonymous caller  without such a link is refused. The call is asynchronous and safe to repeat. The thumbnails themselves are not  in the answer: read `thumbnailStatus` and `thumbnailUrl` of the file, for instance with  `GET api/2.0/files/file/{fileId}`, until the status reports the thumbnail as created.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-thumbnails/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
opts = {
  base_batch_request_dto: DocspaceApiSdk::BaseBatchRequestDto.new # BaseBatchRequestDto | 
}

begin
  # Queue file thumbnails
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
  # Queue file thumbnails
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_file

> <FileOperationArrayWrapper> delete_file(file_id, delete, opts)

Delete a file

Queues the deletion of one file and answers with the caller's file operations, the one just created among  them. The file is not gone when the response arrives: poll `GET api/2.0/files/fileops` until the operation  reports `finished`, and read its `error` to learn whether the deletion succeeded. By default the file is moved  to Trash, from where it can be restored; `immediately=true` deletes it for good instead, and inside a room,  where there is no Trash, deletion is always final. `deleteAfter=true` postpones the deletion until the editing  session on the file has ended, so a file somebody is working on is not pulled away.  `returnSingleOperation=true` narrows the answer to this deletion instead of listing every active operation of  the caller. The caller needs the right to delete the file, which the room admin, a DocSpace admin acting as  room manager and a content creator acting on their own file have; editing access alone, read access, a guest  and a member without access to the room are all refused. The call is destructive. To delete several items at  once use `PUT api/2.0/files/fileops/delete`.

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
file_id = 1 # Integer | The file to delete.
delete = DocspaceApiSdk::Delete.new # Delete | When and how the file is deleted.
opts = {
  return_single_operation: false # Boolean | Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list.
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
| **file_id** | **Integer** | The file to delete. |  |
| **delete** | [**Delete**](Delete.md) | When and how the file is deleted. |  |
| **return_single_operation** | **Boolean** | Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list. | [optional] |

### Return type

[**FileOperationArrayWrapper**](FileOperationArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_file_third_party

> <FileOperationArrayWrapper> delete_file_third_party(file_id, delete, opts)

Delete a file (third-party storage)

Queues the deletion of one file and answers with the caller's file operations, the one just created among  them. The file is not gone when the response arrives: poll `GET api/2.0/files/fileops` until the operation  reports `finished`, and read its `error` to learn whether the deletion succeeded. By default the file is moved  to Trash, from where it can be restored; `immediately=true` deletes it for good instead, and inside a room,  where there is no Trash, deletion is always final. `deleteAfter=true` postpones the deletion until the editing  session on the file has ended, so a file somebody is working on is not pulled away.  `returnSingleOperation=true` narrows the answer to this deletion instead of listing every active operation of  the caller. The caller needs the right to delete the file, which the room admin, a DocSpace admin acting as  room manager and a content creator acting on their own file have; editing access alone, read access, a guest  and a member without access to the room are all refused. The call is destructive. To delete several items at  once use `PUT api/2.0/files/fileops/delete`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-file-third-party/).

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
file_id = '1' # String | The file to delete.
delete = DocspaceApiSdk::Delete.new # Delete | When and how the file is deleted.
opts = {
  return_single_operation: false # Boolean | Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list.
}

begin
  # Delete a file (third-party storage)
  result = api_instance.delete_file_third_party(file_id, delete, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->delete_file_third_party: #{e}"
end
```

#### Using the delete_file_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationArrayWrapper>, Integer, Hash)> delete_file_third_party_with_http_info(file_id, delete, opts)

```ruby
begin
  # Delete a file (third-party storage)
  data, status_code, headers = api_instance.delete_file_third_party_with_http_info(file_id, delete, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->delete_file_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file to delete. |  |
| **delete** | [**Delete**](Delete.md) | When and how the file is deleted. |  |
| **return_single_operation** | **Boolean** | Which operations the answer carries: `true` returns the operation this call started and nothing else, `false`  returns every operation of the same kind that the caller has running or unread. When nothing was queued, which  happens for an empty selection, `true` falls back to the full list. | [optional] |

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

Removes the listed entries from the Recent section of the calling account, the history of opened files that  `GET api/2.0/files/recent` returns. Nothing is deleted from storage and no other member's history is touched;  access to the entries is not checked at all, so a file the caller can no longer read can still be cleared from  their own history. Only numeric file ids are honoured, so a file on a connected third-party account cannot be  cleared this way, and folder ids are accepted but change nothing because the section lists files only. The  answer carries no body and reports nothing about how many entries were found: an empty request and an id that  was never in the section are accepted alike. Repeating the call is safe, but an entry returns the next time  the file is opened or `POST api/2.0/files/file/{fileId}/recent` is called for it. To hide the whole section  instead, call `PUT api/2.0/files/displayrecent`.

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

Takes the listed files off the personal template list of the calling account, leaving the files themselves  untouched: only the template mark is dropped. The body of this request is a bare JSON array of numeric file  ids rather than an object with a field, and a request that carries no array at all is rejected as an invalid  request. Every authenticated member type may manage their own list, a guest is refused, and read access to a  file is required for its mark to be dropped. The answer is `true` whenever the array was understood, which an  empty array, an id that does not exist and a file that was never a template all achieve, so it confirms  nothing about what was removed. Repeating the call is safe. Use `POST api/2.0/files/templates` to put a file  back on the list; that operation expects an object with a `fileIds` field, so the two bodies are not  interchangeable.

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
  request_body: [37] # Array<Integer> | The files to take off the template list, by id; this array is the whole request body. Only a file stored in  the portal itself can be a template, which is why an id here is always numeric.
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
| **request_body** | [**Array&lt;Integer&gt;**](Integer.md) | The files to take off the template list, by id; this array is the whole request body. Only a file stored in  the portal itself can be a template, which is why an id here is always numeric. | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## generate_xlsx

> <XlsxReportResponseWrapper> generate_xlsx(file_id)

Generate a form answers report

Queues generation of the spreadsheet that collects every answer submitted for a PDF form in a form-filling  room, and answers at once with the queued task, the original form and a flag telling whether the report file  is being created now or an existing one refreshed in place. Either identifier works: the id of the original  form, or the id of an XLSX or CSV result file inside the room's Complete folder, from which the portal  resolves the form behind it. The form must already have been opened for filling with  `PUT api/2.0/files/file/{fileId}/startfilling` and must still live in the form-filling room that started it.  The caller must be allowed to update that form's report. The call is mutating and asynchronous: the  spreadsheet is not ready when the response arrives, so poll `GET api/2.0/files/file/{fileId}/xlsx` with the  original form's id until the task reports completion, then take the produced file from the task. Calling it  again while a run is still going answers with that run instead of starting a second one.

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
file_id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Generate a form answers report
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
  # Generate a form answers report
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
| **file_id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

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

Returns the roles of a PDF form together with the state each of them is in, which is how a client shows who is  expected to fill the form next. Every entry carries the name of the role, the account holding it, the sequence  number that decides the turn and a status: the roles of earlier turns are reported as complete, those of later  turns as waiting, and the role whose turn it is as either yours to fill or already in progress, depending on  whether that person has opened the form; when the filling has been stopped, the role it was interrupted at is  reported as stopped instead. A form whose filling was never started answers with an empty list. The file has  to be a PDF form, or the completed copy of one, and anything else is refused. Read access to the form is  enough, so every member of the room sees the roles, while a caller without access to the room and a guest  outside it are refused with 403 and an unknown file is answered with 404. The operation is read-only. The  assignment itself is written by `POST api/2.0/files/file/{fileId}/formrolemapping`.

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
file_id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

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
| **file_id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**FormRoleArrayWrapper**](FormRoleArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_form_roles_third_party

> <FormRoleArrayWrapper> get_all_form_roles_third_party(file_id)

Get form roles (third-party storage)

Returns the roles of a PDF form together with the state each of them is in, which is how a client shows who is  expected to fill the form next. Every entry carries the name of the role, the account holding it, the sequence  number that decides the turn and a status: the roles of earlier turns are reported as complete, those of later  turns as waiting, and the role whose turn it is as either yours to fill or already in progress, depending on  whether that person has opened the form; when the filling has been stopped, the role it was interrupted at is  reported as stopped instead. A form whose filling was never started answers with an empty list. The file has  to be a PDF form, or the completed copy of one, and anything else is refused. Read access to the form is  enough, so every member of the room sees the roles, while a caller without access to the room and a guest  outside it are refused with 403 and an unknown file is answered with 404. The operation is read-only. The  assignment itself is written by `POST api/2.0/files/file/{fileId}/formrolemapping`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-form-roles-third-party/).

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
file_id = '10' # String | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Get form roles (third-party storage)
  result = api_instance.get_all_form_roles_third_party(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_all_form_roles_third_party: #{e}"
end
```

#### Using the get_all_form_roles_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FormRoleArrayWrapper>, Integer, Hash)> get_all_form_roles_third_party_with_http_info(file_id)

```ruby
begin
  # Get form roles (third-party storage)
  data, status_code, headers = api_instance.get_all_form_roles_third_party_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FormRoleArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_all_form_roles_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

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

Answers with everything an editor needs in order to show what changed in one version of a file: the address of  the version itself, its document key and format, the address of the recorded changes, the same trio for the  version it is compared against, and a token that signs the whole answer for the document service. `version`  picks the version, and 0, the default, means the current one. `changesUrl` and `previous` are filled in only  when the portal has stored the changes of that version, which is the case for versions written by an editing  session; for a version uploaded as a whole they stay empty and only the file itself can be shown. The  addresses are meant for the document service and carry their own time-limited keys. The caller needs the right  to read the history of the file, which editing access and above grant: read-only access, commenting access, a  guest and an anonymous caller are all refused, as is a file kept in a connected third-party storage. The  operation is read-only. For the list of versions themselves use  `GET api/2.0/files/file/{fileId}/edit/history`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-diff-url/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file whose changes are read.
opts = {
  version: 1 # Integer | The version to show the changes of, as reported by `GET api/2.0/files/file/{fileId}/edit/history`; 0 means the  current version.
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
| **file_id** | **Integer** | The file whose changes are read. |  |
| **version** | **Integer** | The version to show the changes of, as reported by `GET api/2.0/files/file/{fileId}/edit/history`; 0 means the  current version. | [optional] |

### Return type

[**EditHistoryDataWrapper**](EditHistoryDataWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_edit_diff_url_third_party

> <EditHistoryDataWrapper> get_edit_diff_url_third_party(file_id, opts)

Get changes URL (third-party storage)

Answers with everything an editor needs in order to show what changed in one version of a file: the address of  the version itself, its document key and format, the address of the recorded changes, the same trio for the  version it is compared against, and a token that signs the whole answer for the document service. `version`  picks the version, and 0, the default, means the current one. `changesUrl` and `previous` are filled in only  when the portal has stored the changes of that version, which is the case for versions written by an editing  session; for a version uploaded as a whole they stay empty and only the file itself can be shown. The  addresses are meant for the document service and carry their own time-limited keys. The caller needs the right  to read the history of the file, which editing access and above grant: read-only access, commenting access, a  guest and an anonymous caller are all refused, as is a file kept in a connected third-party storage. The  operation is read-only. For the list of versions themselves use  `GET api/2.0/files/file/{fileId}/edit/history`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-diff-url-third-party/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = '1' # String | The file whose changes are read.
opts = {
  version: 1 # Integer | The version to show the changes of, as reported by `GET api/2.0/files/file/{fileId}/edit/history`; 0 means the  current version.
}

begin
  # Get changes URL (third-party storage)
  result = api_instance.get_edit_diff_url_third_party(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_edit_diff_url_third_party: #{e}"
end
```

#### Using the get_edit_diff_url_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EditHistoryDataWrapper>, Integer, Hash)> get_edit_diff_url_third_party_with_http_info(file_id, opts)

```ruby
begin
  # Get changes URL (third-party storage)
  data, status_code, headers = api_instance.get_edit_diff_url_third_party_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EditHistoryDataWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_edit_diff_url_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file whose changes are read. |  |
| **version** | **Integer** | The version to show the changes of, as reported by `GET api/2.0/files/file/{fileId}/edit/history`; 0 means the  current version. | [optional] |

### Return type

[**EditHistoryDataWrapper**](EditHistoryDataWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_edit_history

> <EditHistoryArrayWrapper> get_edit_history(file_id)

Get version history

Returns the editing revisions of a file, oldest first, as the document service understands them: each entry  carries the version and the revision group it belongs to, the account that saved it, when it was saved, the  comment left on it, the document key of that revision and, where the portal stored them, the changes it  introduced. Only the revisions a person saved are listed - the autosaves an editing session writes in between  are left out, which is what separates this list from the plain version list of  `GET api/2.0/files/file/{fileId}/history`. The caller needs the right to read the history of the file, which  editing access and above grant: commenting access, read-only access, a guest, a member without access to the  room and an anonymous caller are all refused, and so is a file kept in a connected third-party storage, which  keeps no history in the portal. The operation is read-only. Take one entry to  `GET api/2.0/files/file/{fileId}/edit/diff` to show its changes, or to  `POST api/2.0/files/file/{fileId}/restoreversion` to bring it back.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-history/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

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
| **file_id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**EditHistoryArrayWrapper**](EditHistoryArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_edit_history_third_party

> <EditHistoryArrayWrapper> get_edit_history_third_party(file_id)

Get version history (third-party storage)

Returns the editing revisions of a file, oldest first, as the document service understands them: each entry  carries the version and the revision group it belongs to, the account that saved it, when it was saved, the  comment left on it, the document key of that revision and, where the portal stored them, the changes it  introduced. Only the revisions a person saved are listed - the autosaves an editing session writes in between  are left out, which is what separates this list from the plain version list of  `GET api/2.0/files/file/{fileId}/history`. The caller needs the right to read the history of the file, which  editing access and above grant: commenting access, read-only access, a guest, a member without access to the  room and an anonymous caller are all refused, and so is a file kept in a connected third-party storage, which  keeps no history in the portal. The operation is read-only. Take one entry to  `GET api/2.0/files/file/{fileId}/edit/diff` to show its changes, or to  `POST api/2.0/files/file/{fileId}/restoreversion` to bring it back.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-edit-history-third-party/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = '10' # String | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Get version history (third-party storage)
  result = api_instance.get_edit_history_third_party(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_edit_history_third_party: #{e}"
end
```

#### Using the get_edit_history_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EditHistoryArrayWrapper>, Integer, Hash)> get_edit_history_third_party_with_http_info(file_id)

```ruby
begin
  # Get version history (third-party storage)
  data, status_code, headers = api_instance.get_edit_history_third_party_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EditHistoryArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_edit_history_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**EditHistoryArrayWrapper**](EditHistoryArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_encryption_info

> <FileEncryptionInfoWrapper> get_encryption_info(file_id)

Get file encryption information

Returns what the caller needs in order to decrypt one file of an end-to-end encrypted private room: `userKeys`  holds the key pairs of the calling account, the private half of each of them encrypted with that person's own  password, and `fileKeys` holds the file keys that were issued to this account for this file, each naming the  public key it was encrypted for. Only the keys of the calling account are ever returned, never those of the  other people in the room. An account that holds no key pair yet, and a file no key was issued for, answer with  empty lists rather than with an error, so an empty `fileKeys` means the caller cannot open that file rather  than that the file is unencrypted. The caller needs read access to the file; a caller without it, and a file  that does not exist, are both refused with 403. The operation is read-only. Keys are issued by  `PUT api/2.0/files/{fileId}/access`, and the personal key pairs are managed under `api/2.0/privacyroom/keys`.

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
file_id = 56 # Integer | The file whose encryption keys are read. Only a file in an end-to-end encrypted              private room has any.

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
| **file_id** | **Integer** | The file whose encryption keys are read. Only a file in an end-to-end encrypted              private room has any. |  |

### Return type

[**FileEncryptionInfoWrapper**](FileEncryptionInfoWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_encryption_info_third_party

> <FileEncryptionInfoWrapper> get_encryption_info_third_party(file_id)

Get file encryption information (third-party storage)

Returns what the caller needs in order to decrypt one file of an end-to-end encrypted private room: `userKeys`  holds the key pairs of the calling account, the private half of each of them encrypted with that person's own  password, and `fileKeys` holds the file keys that were issued to this account for this file, each naming the  public key it was encrypted for. Only the keys of the calling account are ever returned, never those of the  other people in the room. An account that holds no key pair yet, and a file no key was issued for, answer with  empty lists rather than with an error, so an empty `fileKeys` means the caller cannot open that file rather  than that the file is unencrypted. The caller needs read access to the file; a caller without it, and a file  that does not exist, are both refused with 403. The operation is read-only. Keys are issued by  `PUT api/2.0/files/{fileId}/access`, and the personal key pairs are managed under `api/2.0/privacyroom/keys`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-encryption-info-third-party/).

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
file_id = 'file_id_example' # String | The file whose encryption keys are read. Only a file in an end-to-end encrypted              private room has any.

begin
  # Get file encryption information (third-party storage)
  result = api_instance.get_encryption_info_third_party(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_encryption_info_third_party: #{e}"
end
```

#### Using the get_encryption_info_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileEncryptionInfoWrapper>, Integer, Hash)> get_encryption_info_third_party_with_http_info(file_id)

```ruby
begin
  # Get file encryption information (third-party storage)
  data, status_code, headers = api_instance.get_encryption_info_third_party_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileEncryptionInfoWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_encryption_info_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file whose encryption keys are read. Only a file in an end-to-end encrypted              private room has any. |  |

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

Returns the activity log of a single file - who renamed, moved, shared, converted, locked or edited it, and  when - as the portal recorded it in its audit trail. Entries arrive newest first, and the events that belong  to one action are folded into a single entry whose `related` list carries the rest of them. `fromDate` and  `toDate` are read in the portal's time zone and narrow the range; `startIndex` and `count` page through the  result, and the number of matching entries is reported in the response headers rather than in the body. The  caller needs read access to the file, so a member of the room it lies in, the admin of that room and a  DocSpace admin all see the same log, while a caller without access to the room is refused with 403 and an  unknown id is answered with 404. The operation is read-only. Only files stored in the portal itself have a log  here - a file kept in a connected third-party storage has none. For the log of a folder or a room use  `GET api/2.0/files/folder/{folderId}/log`.

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
file_id = 1 # Integer | The file whose activity log is read; only files stored in the portal itself have one.
opts = {
  from_date: Time.parse('2025-01-01T00:00:00.0000000Z'), # Time | The earliest moment an entry may have, read in the time zone of the portal; left out, the log starts at the  oldest entry the portal still keeps.
  to_date: Time.parse('2025-12-31T23:59:59.0000000Z'), # Time | The latest moment an entry may have, read in the time zone of the portal; left out, the log ends at the newest  entry.
  count: 25, # Integer | How many entries one page holds. The number of entries that match the query is reported in the response  headers, not in the body.
  start_index: 0 # Integer | How many entries to skip before the page begins, counted from the newest one, so pages are taken by adding the  page size to it.
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
| **file_id** | **Integer** | The file whose activity log is read; only files stored in the portal itself have one. |  |
| **from_date** | **Time** | The earliest moment an entry may have, read in the time zone of the portal; left out, the log starts at the  oldest entry the portal still keeps. | [optional] |
| **to_date** | **Time** | The latest moment an entry may have, read in the time zone of the portal; left out, the log ends at the newest  entry. | [optional] |
| **count** | **Integer** | How many entries one page holds. The number of entries that match the query is reported in the response  headers, not in the body. | [optional] |
| **start_index** | **Integer** | How many entries to skip before the page begins, counted from the newest one, so pages are taken by adding the  page size to it. | [optional] |

### Return type

[**HistoryArrayWrapper**](HistoryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_info

> <FileWrapper> get_file_info(file_id, opts)

Get file information

Returns one file as the portal stores it, together with the state it has for the caller: the title, the folder  it lies in, the size, the current version and revision group, the addresses for viewing and editing it, the  actions the caller is allowed to perform on it, the sharing rights it was reached through, and the thumbnail  state. `version` picks an older version instead of the current one; the default of -1 means the current  version. When the file belongs to another person's own section and the caller cannot read the folder holding  it, the answer reports the Shared with me section as its folder, so that a client can show it in a place the  caller can actually open. The caller needs read access to the file, which any member of the room it lies in  has; a caller without access to the room is refused and an anonymous caller without an external share link is  rejected. The operation is read-only. For every version at once use `GET api/2.0/files/file/{fileId}/history`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-info/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file to read.
opts = {
  version: 1 # Integer | The version to read, as reported by `GET api/2.0/files/file/{fileId}/history`; -1, the default, reads the  current version.
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

> <Array(<FileWrapper>, Integer, Hash)> get_file_info_with_http_info(file_id, opts)

```ruby
begin
  # Get file information
  data, status_code, headers = api_instance.get_file_info_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file to read. |  |
| **version** | **Integer** | The version to read, as reported by `GET api/2.0/files/file/{fileId}/history`; -1, the default, reads the  current version. | [optional] |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_info_third_party

> <ThirdPartyFileWrapper> get_file_info_third_party(file_id, opts)

Get file information (third-party storage)

Returns one file as the portal stores it, together with the state it has for the caller: the title, the folder  it lies in, the size, the current version and revision group, the addresses for viewing and editing it, the  actions the caller is allowed to perform on it, the sharing rights it was reached through, and the thumbnail  state. `version` picks an older version instead of the current one; the default of -1 means the current  version. When the file belongs to another person's own section and the caller cannot read the folder holding  it, the answer reports the Shared with me section as its folder, so that a client can show it in a place the  caller can actually open. The caller needs read access to the file, which any member of the room it lies in  has; a caller without access to the room is refused and an anonymous caller without an external share link is  rejected. The operation is read-only. For every version at once use `GET api/2.0/files/file/{fileId}/history`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-info-third-party/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = '1' # String | The file to read.
opts = {
  version: 1 # Integer | The version to read, as reported by `GET api/2.0/files/file/{fileId}/history`; -1, the default, reads the  current version.
}

begin
  # Get file information (third-party storage)
  result = api_instance.get_file_info_third_party(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_info_third_party: #{e}"
end
```

#### Using the get_file_info_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyFileWrapper>, Integer, Hash)> get_file_info_third_party_with_http_info(file_id, opts)

```ruby
begin
  # Get file information (third-party storage)
  data, status_code, headers = api_instance.get_file_info_third_party_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyFileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_info_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file to read. |  |
| **version** | **Integer** | The version to read, as reported by `GET api/2.0/files/file/{fileId}/history`; -1, the default, reads the  current version. | [optional] |

### Return type

[**ThirdPartyFileWrapper**](ThirdPartyFileWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_links

> <FileShareArrayWrapper> get_file_links(id, opts)

Get file external links

Lists the external links of a file, each with its identifier, title, address, rights, expiration date and  download restriction. `startIndex` and `count` page through the list, and the total number of links is  reported in the response headers rather than in the body. A file that has never been shared by link answers  with an empty list; the primary link is part of this list once it exists, and it is the only one that is  created on demand, by `GET api/2.0/files/file/{id}/link`. For a PDF form kept in a form-filling room the link  of the room is appended to the answer, because that is the address through which the form is filled out. The  caller needs the right to share the file, which its creator, the room admin and a DocSpace admin acting as  room manager have; a caller without access to the file is refused and an anonymous caller is rejected. The  operation is read-only. Take an identifier from here to `PUT api/2.0/files/file/{id}/links` to change or  remove that link.

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
id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.
opts = {
  count: 25, # Integer | How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it.
  start_index: 0 # Integer | How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page.
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
| **id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |
| **count** | **Integer** | How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it. | [optional] |
| **start_index** | **Integer** | How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. | [optional] |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_links_third_party

> <FileShareArrayWrapper> get_file_links_third_party(id, opts)

Get file external links (third-party storage)

Lists the external links of a file, each with its identifier, title, address, rights, expiration date and  download restriction. `startIndex` and `count` page through the list, and the total number of links is  reported in the response headers rather than in the body. A file that has never been shared by link answers  with an empty list; the primary link is part of this list once it exists, and it is the only one that is  created on demand, by `GET api/2.0/files/file/{id}/link`. For a PDF form kept in a form-filling room the link  of the room is appended to the answer, because that is the address through which the form is filled out. The  caller needs the right to share the file, which its creator, the room admin and a DocSpace admin acting as  room manager have; a caller without access to the file is refused and an anonymous caller is rejected. The  operation is read-only. Take an identifier from here to `PUT api/2.0/files/file/{id}/links` to change or  remove that link.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-links-third-party/).

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
id = '10' # String | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.
opts = {
  count: 25, # Integer | How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it.
  start_index: 0 # Integer | How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page.
}

begin
  # Get file external links (third-party storage)
  result = api_instance.get_file_links_third_party(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_links_third_party: #{e}"
end
```

#### Using the get_file_links_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> get_file_links_third_party_with_http_info(id, opts)

```ruby
begin
  # Get file external links (third-party storage)
  data, status_code, headers = api_instance.get_file_links_third_party_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_links_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |
| **count** | **Integer** | How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it. | [optional] |
| **start_index** | **Integer** | How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. | [optional] |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_primary_external_link

> <FileShareWrapper> get_file_primary_external_link(id, opts)

Get the file primary external link

Answers with the primary external link of a file - the one the Copy link action of a client hands out - with  its address in `sharedTo.shareLink`, its rights in `access`, and its expiration date, password flag and  download restriction beside them. The link is created on the first read if the file has none, with read  rights, no password and no expiry, so this operation mutates on that first call and is a plain read  afterwards; repeated calls answer with the same link identifier. A PDF form in a form-filling room is answered  with the link of that room, carried over to the form. The caller needs the right to share the file, which its  creator, the room admin and a DocSpace admin acting as room manager have; a caller without access to the file  is refused with 403 and an anonymous caller is rejected, while a link that was deliberately revoked is  answered with 404 rather than being recreated. The custom links of the same file, the primary one excepted,  are listed by `GET api/2.0/files/file/{id}/links`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-primary-external-link/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.
opts = {
  count: 25, # Integer | How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it.
  start_index: 0 # Integer | How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page.
}

begin
  # Get the file primary external link
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
  # Get the file primary external link
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
| **id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |
| **count** | **Integer** | How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it. | [optional] |
| **start_index** | **Integer** | How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. | [optional] |

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_primary_external_link_third_party

> <FileShareWrapper> get_file_primary_external_link_third_party(id, opts)

Get the file primary external link (third-party storage)

Answers with the primary external link of a file - the one the Copy link action of a client hands out - with  its address in `sharedTo.shareLink`, its rights in `access`, and its expiration date, password flag and  download restriction beside them. The link is created on the first read if the file has none, with read  rights, no password and no expiry, so this operation mutates on that first call and is a plain read  afterwards; repeated calls answer with the same link identifier. A PDF form in a form-filling room is answered  with the link of that room, carried over to the form. The caller needs the right to share the file, which its  creator, the room admin and a DocSpace admin acting as room manager have; a caller without access to the file  is refused with 403 and an anonymous caller is rejected, while a link that was deliberately revoked is  answered with 404 rather than being recreated. The custom links of the same file, the primary one excepted,  are listed by `GET api/2.0/files/file/{id}/links`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-primary-external-link-third-party/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
id = '10' # String | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.
opts = {
  count: 25, # Integer | How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it.
  start_index: 0 # Integer | How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page.
}

begin
  # Get the file primary external link (third-party storage)
  result = api_instance.get_file_primary_external_link_third_party(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_primary_external_link_third_party: #{e}"
end
```

#### Using the get_file_primary_external_link_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareWrapper>, Integer, Hash)> get_file_primary_external_link_third_party_with_http_info(id, opts)

```ruby
begin
  # Get the file primary external link (third-party storage)
  data, status_code, headers = api_instance.get_file_primary_external_link_third_party_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_primary_external_link_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |
| **count** | **Integer** | How many entries at most to answer with, in the operations of this file that return a list; an operation that  answers with a single object is not affected by it. | [optional] |
| **start_index** | **Integer** | How many entries of such a list to skip before answering, used together with `count` to walk through it page  by page. | [optional] |

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_version_info

> <FileArrayWrapper> get_file_version_info(file_id)

Get file versions

Returns every stored version of a file, newest first, each of them shaped like the file itself - the version  and the revision group it belongs to, the size, the comment saved with it, the addresses for viewing it, and  the thumbnail and lock state. Unlike the editing revisions of `GET api/2.0/files/file/{fileId}/edit/history`,  this list also holds the autosave revisions an editing session writes, so it is the fuller of the two, and it  is the shape a client already knows how to render. The caller needs the right to read the history of the file,  which is a stricter rule than reading the file: in a room only its managers and content creators may read the  history, and in a personal section editing access is enough, so a member with read access to somebody else's  file, and even a DocSpace admin in that position, are refused, as is an anonymous caller. The operation is  read-only. To restore one of the versions use `POST api/2.0/files/file/{fileId}/restoreversion`, and to close  or reopen a revision group `PUT api/2.0/files/file/{fileId}/history`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-version-info/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

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

> <Array(<FileArrayWrapper>, Integer, Hash)> get_file_version_info_with_http_info(file_id)

```ruby
begin
  # Get file versions
  data, status_code, headers = api_instance.get_file_version_info_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_version_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**FileArrayWrapper**](FileArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_version_info_third_party

> <ThirdPartyFileArrayWrapper> get_file_version_info_third_party(file_id)

Get file versions (third-party storage)

Returns every stored version of a file, newest first, each of them shaped like the file itself - the version  and the revision group it belongs to, the size, the comment saved with it, the addresses for viewing it, and  the thumbnail and lock state. Unlike the editing revisions of `GET api/2.0/files/file/{fileId}/edit/history`,  this list also holds the autosave revisions an editing session writes, so it is the fuller of the two, and it  is the shape a client already knows how to render. The caller needs the right to read the history of the file,  which is a stricter rule than reading the file: in a room only its managers and content creators may read the  history, and in a personal section editing access is enough, so a member with read access to somebody else's  file, and even a DocSpace admin in that position, are refused, as is an anonymous caller. The operation is  read-only. To restore one of the versions use `POST api/2.0/files/file/{fileId}/restoreversion`, and to close  or reopen a revision group `PUT api/2.0/files/file/{fileId}/history`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-version-info-third-party/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = '10' # String | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Get file versions (third-party storage)
  result = api_instance.get_file_version_info_third_party(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_version_info_third_party: #{e}"
end
```

#### Using the get_file_version_info_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyFileArrayWrapper>, Integer, Hash)> get_file_version_info_third_party_with_http_info(file_id)

```ruby
begin
  # Get file versions (third-party storage)
  data, status_code, headers = api_instance.get_file_version_info_third_party_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyFileArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_file_version_info_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**ThirdPartyFileArrayWrapper**](ThirdPartyFileArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fill_result

> <FillingFormResultWrapper> get_fill_result(opts)

Get form-filling result

Answers with the outcome of one completed form-filling session: the filled copy of the form, the original form  it was made from, the number this submission was given inside the room, the identifier of the room and the  account that started the filling. `isRoomMember` says whether the caller is a member of that room, which a  client uses to decide whether the room can be offered for opening. The session is named by `fillingSessionId`,  the value the document service reports when the filling ends; the portal remembers it only for a while after  that, so a session that was never completed, one already forgotten and a value of the wrong shape are all  answered as not found, while omitting the parameter is rejected as an invalid request. The operation is  read-only and needs no sign-in: it is meant for the caller that has just finished filling the form through an  external link, and the session identifier is the only secret involved. The filled copy itself is an ordinary  file - read it with `GET api/2.0/files/file/{fileId}`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-fill-result/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
opts = {
  filling_session_id: '11111111-2222-3333-4444-555555555555' # String | The identifier of the finished filling session, the value the document service reports when the filling ends.  The portal remembers it only for a while afterwards, so an older session is answered as not found.
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

> <Array(<FillingFormResultWrapper>, Integer, Hash)> get_fill_result_with_http_info(opts)

```ruby
begin
  # Get form-filling result
  data, status_code, headers = api_instance.get_fill_result_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FillingFormResultWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_fill_result_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filling_session_id** | **String** | The identifier of the finished filling session, the value the document service reports when the filling ends.  The portal remembers it only for a while afterwards, so an older session is answered as not found. | [optional] |

### Return type

[**FillingFormResultWrapper**](FillingFormResultWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_form_submissions

> <FormSubmissionsWrapper> get_form_submissions(file_id)

Get form submission results

Returns everything that has been submitted against one PDF form: `metadata` describes the fields of the form,  in the order they are laid out, and `submissions` carries one record per completed copy, each of them holding  the values that were entered. It is the data behind the results table a client shows for a form, and the same  data the spreadsheet report of `POST api/2.0/files/file/{fileId}/xlsx` is built from. Only the submissions of  the version that is currently being filled are reported. The form has to be a PDF form whose filling has been  started and which is still the original form of its room; a form that was never started, a copy of a form and  a form whose room has been moved away are all refused. Read access to the form is enough, so every member of  the room can read the results, while a caller without access to it is refused with 403. The operation is  read-only. The list of roles and whose turn it is comes from `GET api/2.0/files/file/{fileId}/formroles`  instead.

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
file_id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

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
| **file_id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**FormSubmissionsWrapper**](FormSubmissionsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_presigned_file_uri

> <FileLinkWrapper> get_presigned_file_uri(file_id)

Get a signed download address

Returns a direct download address for the current content of the file together with the signature token that  the document service validates, which is what the portal hands over when the editors have to fetch the  document themselves. The address points at the portal's file stream endpoint and is rewritten to the host the  document service can reach, so on a deployment where the editors sit behind a private address it is not the  address a browser should follow. The answer also carries the extension of the stored document, leading dot  included. The caller needs read access to the file, and an unknown file id is reported as missing. The call  only reads, and each call mints a fresh address and token rather than reusing the previous one, so the value  is worth requesting again once a token has expired. For a link meant for a person, a plain address with no  token to put behind a download button, use `GET api/2.0/files/file/{fileId}/presigneduri` instead.

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
file_id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Get a signed download address
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
  # Get a signed download address
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
| **file_id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**FileLinkWrapper**](FileLinkWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_presigned_file_uri_third_party

> <FileLinkWrapper> get_presigned_file_uri_third_party(file_id)

Get a signed download address (third-party storage)

Returns a direct download address for the current content of the file together with the signature token that  the document service validates, which is what the portal hands over when the editors have to fetch the  document themselves. The address points at the portal's file stream endpoint and is rewritten to the host the  document service can reach, so on a deployment where the editors sit behind a private address it is not the  address a browser should follow. The answer also carries the extension of the stored document, leading dot  included. The caller needs read access to the file, and an unknown file id is reported as missing. The call  only reads, and each call mints a fresh address and token rather than reusing the previous one, so the value  is worth requesting again once a token has expired. For a link meant for a person, a plain address with no  token to put behind a download button, use `GET api/2.0/files/file/{fileId}/presigneduri` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-file-uri-third-party/).

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
file_id = '10' # String | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Get a signed download address (third-party storage)
  result = api_instance.get_presigned_file_uri_third_party(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_presigned_file_uri_third_party: #{e}"
end
```

#### Using the get_presigned_file_uri_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileLinkWrapper>, Integer, Hash)> get_presigned_file_uri_third_party_with_http_info(file_id)

```ruby
begin
  # Get a signed download address (third-party storage)
  data, status_code, headers = api_instance.get_presigned_file_uri_third_party_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileLinkWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_presigned_file_uri_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

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

Builds a download address for the current version of a file and answers with it as a plain string. The address  points at the portal's own file handler and carries the file identifier, the version it was built for and a  time-limited authentication key, so it can be handed to a downloader that cannot sign in to the portal itself;  it stops working once that key has expired, and it keeps naming the version that was current when it was built  rather than following later edits. The caller needs read access to the file: a member of the room it lies in  gets an address, a caller without access to the room is refused, an unknown identifier is answered as not  found and an anonymous caller is rejected. The operation is read-only and safe to repeat, though every call  mints a new key. Nothing is downloaded here - follow the address to fetch the bytes. For the variant the  document service signs, which comes back as an object with the file type and a token, use  `GET api/2.0/files/file/{fileId}/presigned`.

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
file_id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

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
| **file_id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_presigned_uri_third_party

> <StringWrapper> get_presigned_uri_third_party(file_id)

Get file download link (third-party storage)

Builds a download address for the current version of a file and answers with it as a plain string. The address  points at the portal's own file handler and carries the file identifier, the version it was built for and a  time-limited authentication key, so it can be handed to a downloader that cannot sign in to the portal itself;  it stops working once that key has expired, and it keeps naming the version that was current when it was built  rather than following later edits. The caller needs read access to the file: a member of the room it lies in  gets an address, a caller without access to the room is refused, an unknown identifier is answered as not  found and an anonymous caller is rejected. The operation is read-only and safe to repeat, though every call  mints a new key. Nothing is downloaded here - follow the address to fetch the bytes. For the variant the  document service signs, which comes back as an object with the file type and a token, use  `GET api/2.0/files/file/{fileId}/presigned`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-presigned-uri-third-party/).

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
file_id = '10' # String | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Get file download link (third-party storage)
  result = api_instance.get_presigned_uri_third_party(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_presigned_uri_third_party: #{e}"
end
```

#### Using the get_presigned_uri_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> get_presigned_uri_third_party_with_http_info(file_id)

```ruby
begin
  # Get file download link (third-party storage)
  data, status_code, headers = api_instance.get_presigned_uri_third_party_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_presigned_uri_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_protected_file_users

> <MentionWrapperArrayWrapper> get_protected_file_users(file_id)

Get users for document protection

Lists the users the file is shared with, which is what a client offers when the author protects a document and  picks who may still edit it. The list is built from the whole access list of the file: every entry that is not  an explicit denial, with groups expanded into their members, the caller themselves and deleted accounts left  out, ordered by display name. Access inherited from the room counts, so a member who never received a share on  the file itself is listed too. A file kept in the legacy project storage always answers with an empty list  rather than with its team. The call only reads. A guest is refused, an anonymous caller is answered with  nothing, and a file id that resolves to nothing is refused as well instead of being reported as missing. For  the readers to offer as mentions inside the editor use `GET api/2.0/files/file/{fileId}/sharedusers`.

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
file_id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Get users for document protection
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
  # Get users for document protection
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
| **file_id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**MentionWrapperArrayWrapper**](MentionWrapperArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_protected_file_users_third_party

> <MentionWrapperArrayWrapper> get_protected_file_users_third_party(file_id)

Get users for document protection (third-party storage)

Lists the users the file is shared with, which is what a client offers when the author protects a document and  picks who may still edit it. The list is built from the whole access list of the file: every entry that is not  an explicit denial, with groups expanded into their members, the caller themselves and deleted accounts left  out, ordered by display name. Access inherited from the room counts, so a member who never received a share on  the file itself is listed too. A file kept in the legacy project storage always answers with an empty list  rather than with its team. The call only reads. A guest is refused, an anonymous caller is answered with  nothing, and a file id that resolves to nothing is refused as well instead of being reported as missing. For  the readers to offer as mentions inside the editor use `GET api/2.0/files/file/{fileId}/sharedusers`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-protected-file-users-third-party/).

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
file_id = '10' # String | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Get users for document protection (third-party storage)
  result = api_instance.get_protected_file_users_third_party(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_protected_file_users_third_party: #{e}"
end
```

#### Using the get_protected_file_users_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MentionWrapperArrayWrapper>, Integer, Hash)> get_protected_file_users_third_party_with_http_info(file_id)

```ruby
begin
  # Get users for document protection (third-party storage)
  data, status_code, headers = api_instance.get_protected_file_users_third_party_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MentionWrapperArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->get_protected_file_users_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**MentionWrapperArrayWrapper**](MentionWrapperArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reference_data

> <FileReferenceWrapper> get_reference_data(opts)

Resolve a spreadsheet reference

Resolves a reference that a formula in one spreadsheet makes to another document, and answers with the  descriptor the document service needs in order to read it: the title, the download address, the file type, the  document key of the co-editing session, the web editor link and the signature token. Three ways of naming the  target are tried in order, and the first that resolves wins: `fileKey` as a file id inside the portal named by  `instanceId`, then `path` looked up among the files sitting next to `sourceFileId`, then `link`, short links  included, from which the file id is read out. A link that points outside this portal is not resolved at all  and comes back unchanged as the address to follow. The caller needs read access to the source file and to its  folder, otherwise the call is refused. The call only reads. A reference that resolves to nothing is still  answered with 200, with the error text filled in and the rest of the descriptor empty, so read the error  before using any other field.

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
  get_reference_data_dto: DocspaceApiSdk::GetReferenceDataDto.new({file_key: '512', instance_id: '1'}) # GetReferenceDataDto | 
}

begin
  # Resolve a spreadsheet reference
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
  # Resolve a spreadsheet reference
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
| **get_reference_data_dto** | [**GetReferenceDataDto**](GetReferenceDataDto.md) |  | [optional] |

### Return type

[**FileReferenceWrapper**](FileReferenceWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_xlsx

> <DocumentBuilderTaskWrapper> get_xlsx(file_id)

Get form report generation status

Reports how far the spreadsheet of submitted form answers has got, the one queued by  `POST api/2.0/files/file/{fileId}/xlsx`. A run is kept per portal, per caller and per form, so this reports  the caller's own run and not one started by another member of the room; address it with the id of the original  form rather than with the id of the produced spreadsheet. The answer carries the completion flag, the progress  percentage, the error text when the run failed, and the id, name and address of the produced file once it is  there. Nothing at all comes back when no run is on record for this caller and form, which is the normal answer  before the first run and not an error. The call only reads and is meant to be polled until completion is  reported. Any authenticated caller may ask; whether the report may be built is decided when the run is queued,  not here.

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
file_id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Get form report generation status
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
  # Get form report generation status
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
| **file_id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

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

Tells whether a file is a PDF form that can be filled out in the portal, and answers with a single boolean.  The check is by content, not by extension: the beginning of the file is read and the answer is `true` only  when it carries the marker the editors write into the forms they produce, so an ordinary PDF, and a PDF form  made in other software, both answer `false`. A file whose name is not a PDF at all answers `false` without  being read. Use it before offering the form-filling operations on a file, because a document that answers  `false` cannot be started for filling. The caller needs read access to the file, and read access is enough - a  member of the room with read-only rights gets the answer; a caller without access to the room is refused and  an anonymous caller is rejected. The operation is read-only and idempotent. It says nothing about the state of  the filling - for that read `GET api/2.0/files/file/{fileId}/formroles`.

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
file_id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

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
| **file_id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## is_form_pdf_third_party

> <BooleanWrapper> is_form_pdf_third_party(file_id)

Check the PDF file (third-party storage)

Tells whether a file is a PDF form that can be filled out in the portal, and answers with a single boolean.  The check is by content, not by extension: the beginning of the file is read and the answer is `true` only  when it carries the marker the editors write into the forms they produce, so an ordinary PDF, and a PDF form  made in other software, both answer `false`. A file whose name is not a PDF at all answers `false` without  being read. Use it before offering the form-filling operations on a file, because a document that answers  `false` cannot be started for filling. The caller needs read access to the file, and read access is enough - a  member of the room with read-only rights gets the answer; a caller without access to the room is refused and  an anonymous caller is rejected. The operation is read-only and idempotent. It says nothing about the state of  the filling - for that read `GET api/2.0/files/file/{fileId}/formroles`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/is-form-pdf-third-party/).

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
file_id = '10' # String | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Check the PDF file (third-party storage)
  result = api_instance.is_form_pdf_third_party(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->is_form_pdf_third_party: #{e}"
end
```

#### Using the is_form_pdf_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> is_form_pdf_third_party_with_http_info(file_id)

```ruby
begin
  # Check the PDF file (third-party storage)
  data, status_code, headers = api_instance.is_form_pdf_third_party_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->is_form_pdf_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## lock_file

> <FileWrapper> lock_file(file_id, lock_file_parameters)

Lock a file

Locks a file so that nobody else can change it, or releases that lock, and answers with the file as it now  stands. With `lockFile=true` the lock is put on the file and everybody else who is editing it at that moment  is dropped out of the session, the caller excepted; the lock then blocks editing, renaming and deleting for  everybody but the account that set it and the room admins. With `lockFile=false` the lock is removed and a  note about the unlocking is appended to the current version comment, unless the file lives in a connected  third-party storage. Locking a file that is already locked, or unlocking one that is not, changes nothing and  still answers with the file, so the call is idempotent in effect while remaining a mutating one. The caller  needs the right to lock the file, which the room admin, a DocSpace admin acting as room manager and a member  with content-creator rights have; a member without access to the room and a guest are refused, and so is a  file in Trash. A lock set by somebody else can only be released by a room manager.

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
file_id = 1 # Integer | The file to lock or unlock.
lock_file_parameters = DocspaceApiSdk::LockFileParameters.new # LockFileParameters | The lock state to reach.

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

> <Array(<FileWrapper>, Integer, Hash)> lock_file_with_http_info(file_id, lock_file_parameters)

```ruby
begin
  # Lock a file
  data, status_code, headers = api_instance.lock_file_with_http_info(file_id, lock_file_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->lock_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file to lock or unlock. |  |
| **lock_file_parameters** | [**LockFileParameters**](LockFileParameters.md) | The lock state to reach. |  |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## lock_file_third_party

> <ThirdPartyFileWrapper> lock_file_third_party(file_id, lock_file_parameters)

Lock a file (third-party storage)

Locks a file so that nobody else can change it, or releases that lock, and answers with the file as it now  stands. With `lockFile=true` the lock is put on the file and everybody else who is editing it at that moment  is dropped out of the session, the caller excepted; the lock then blocks editing, renaming and deleting for  everybody but the account that set it and the room admins. With `lockFile=false` the lock is removed and a  note about the unlocking is appended to the current version comment, unless the file lives in a connected  third-party storage. Locking a file that is already locked, or unlocking one that is not, changes nothing and  still answers with the file, so the call is idempotent in effect while remaining a mutating one. The caller  needs the right to lock the file, which the room admin, a DocSpace admin acting as room manager and a member  with content-creator rights have; a member without access to the room and a guest are refused, and so is a  file in Trash. A lock set by somebody else can only be released by a room manager.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/lock-file-third-party/).

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
file_id = '1' # String | The file to lock or unlock.
lock_file_parameters = DocspaceApiSdk::LockFileParameters.new # LockFileParameters | The lock state to reach.

begin
  # Lock a file (third-party storage)
  result = api_instance.lock_file_third_party(file_id, lock_file_parameters)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->lock_file_third_party: #{e}"
end
```

#### Using the lock_file_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyFileWrapper>, Integer, Hash)> lock_file_third_party_with_http_info(file_id, lock_file_parameters)

```ruby
begin
  # Lock a file (third-party storage)
  data, status_code, headers = api_instance.lock_file_third_party_with_http_info(file_id, lock_file_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyFileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->lock_file_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file to lock or unlock. |  |
| **lock_file_parameters** | [**LockFileParameters**](LockFileParameters.md) | The lock state to reach. |  |

### Return type

[**ThirdPartyFileWrapper**](ThirdPartyFileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## manage_form_filling

> manage_form_filling(file_id, opts)

Perform form filling action

Drives the filling of a PDF form through its states, the action deciding which way. Action 2 starts the  filling: in a form-filling room the form is opened for filling, the members whose rights are limited to  filling forms are let in, and a form that has been changed since it was last started has the drafts of its  previous round dropped. Action 0 stops it, which in a virtual data room records who interrupted it and at  which role and notifies the people who held the other roles, and in a form-filling room closes the form for  filling. Action 1 resumes a filling that was stopped, clearing that record. Action 3 puts the form back into  editing, closing it for filling and remembering the version it was edited from. The file has to be a PDF form  lying in a room. Starting needs the right to start the filling, which the room admin and a member with  content-creator rights have, while stopping a filling that somebody else started belongs to room managers  alone, so a content creator is refused with 403 there. The call is mutating; the state that resulted is read  with `GET api/2.0/files/file/{fileId}/formroles`.

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
  manage_form_filling_dto: DocspaceApiSdk::ManageFormFillingDto.new({form_id: 1}) # ManageFormFillingDto | 
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
| **manage_form_filling_dto** | [**ManageFormFillingDto**](ManageFormFillingDto.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## open_edit_file

> <ConfigurationWrapper> open_edit_file(file_id, opts)

Get the editor configuration

Builds everything an editor client needs to open the file: the document descriptor with its download address,  title, type and document key, the editor configuration with the mode, the caller's permissions, the user and  the customization, the callback the editors report back to, and the signature token the document service  validates. `version` opens one entry of the file history and requires access to that history; left out, the  current revision is opened. `view`, `edit` and `fill` say what the client intends to do, and `editorType`  picks the desktop, mobile or embedded layout. For a PDF form the room decides the outcome and may overrule the  request: a form-filling room, a virtual data room, a public room and a user folder each produce their own  mode, and a form opened from the templates folder is read-only and, outside the mobile layout, framed as  embedded. When the portal is over its storage quota the configuration comes back read-only with the exceeded  scope named. In a private room the caller's encryption keys are added to the editor configuration. Payment is  not required and an anonymous caller opens through an external link.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/open-edit-file/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file the editor configuration is built for. Take the id from a folder listing such as  `GET api/2.0/files/{folderId}`.
opts = {
  version: 1, # Integer | Which entry of the file history to open, numbered the way the file versions are. Left out, the current  revision is opened; naming a version requires access to the history of the file.
  view: false, # Boolean | Asks for a read-only configuration. Left off, the configuration is built for editing as far as the caller's  rights and the room the file lies in allow.
  editor_type: DocspaceApiSdk::EditorType::Desktop, # EditorType | Which editor layout the configuration is built for: the full desktop interface, the reduced mobile one, or the  embedded viewer meant to be framed inside another page.
  edit: false, # Boolean | Asks for editing rather than viewing. On a form in a form-filling room this also records that the form is  being edited; the room may still turn the request into viewing or into filling.
  fill: false # Boolean | Asks for a PDF form to open for filling out rather than for editing. It has no effect on a file that is not a  form.
}

begin
  # Get the editor configuration
  result = api_instance.open_edit_file(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->open_edit_file: #{e}"
end
```

#### Using the open_edit_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConfigurationWrapper>, Integer, Hash)> open_edit_file_with_http_info(file_id, opts)

```ruby
begin
  # Get the editor configuration
  data, status_code, headers = api_instance.open_edit_file_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConfigurationWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->open_edit_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file the editor configuration is built for. Take the id from a folder listing such as  `GET api/2.0/files/{folderId}`. |  |
| **version** | **Integer** | Which entry of the file history to open, numbered the way the file versions are. Left out, the current  revision is opened; naming a version requires access to the history of the file. | [optional] |
| **view** | **Boolean** | Asks for a read-only configuration. Left off, the configuration is built for editing as far as the caller's  rights and the room the file lies in allow. | [optional] |
| **editor_type** | **EditorType** | Which editor layout the configuration is built for: the full desktop interface, the reduced mobile one, or the  embedded viewer meant to be framed inside another page. | [optional] |
| **edit** | **Boolean** | Asks for editing rather than viewing. On a form in a form-filling room this also records that the form is  being edited; the room may still turn the request into viewing or into filling. | [optional] |
| **fill** | **Boolean** | Asks for a PDF form to open for filling out rather than for editing. It has no effect on a file that is not a  form. | [optional] |

### Return type

[**ConfigurationWrapper**](ConfigurationWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## open_edit_file_third_party

> <ThirdPartyConfigurationWrapper> open_edit_file_third_party(file_id, opts)

Get the editor configuration (third-party storage)

Builds everything an editor client needs to open the file: the document descriptor with its download address,  title, type and document key, the editor configuration with the mode, the caller's permissions, the user and  the customization, the callback the editors report back to, and the signature token the document service  validates. `version` opens one entry of the file history and requires access to that history; left out, the  current revision is opened. `view`, `edit` and `fill` say what the client intends to do, and `editorType`  picks the desktop, mobile or embedded layout. For a PDF form the room decides the outcome and may overrule the  request: a form-filling room, a virtual data room, a public room and a user folder each produce their own  mode, and a form opened from the templates folder is read-only and, outside the mobile layout, framed as  embedded. When the portal is over its storage quota the configuration comes back read-only with the exceeded  scope named. In a private room the caller's encryption keys are added to the editor configuration. Payment is  not required and an anonymous caller opens through an external link.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/open-edit-file-third-party/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = '1' # String | The file the editor configuration is built for. Take the id from a folder listing such as  `GET api/2.0/files/{folderId}`.
opts = {
  version: 1, # Integer | Which entry of the file history to open, numbered the way the file versions are. Left out, the current  revision is opened; naming a version requires access to the history of the file.
  view: false, # Boolean | Asks for a read-only configuration. Left off, the configuration is built for editing as far as the caller's  rights and the room the file lies in allow.
  editor_type: DocspaceApiSdk::EditorType::Desktop, # EditorType | Which editor layout the configuration is built for: the full desktop interface, the reduced mobile one, or the  embedded viewer meant to be framed inside another page.
  edit: false, # Boolean | Asks for editing rather than viewing. On a form in a form-filling room this also records that the form is  being edited; the room may still turn the request into viewing or into filling.
  fill: false # Boolean | Asks for a PDF form to open for filling out rather than for editing. It has no effect on a file that is not a  form.
}

begin
  # Get the editor configuration (third-party storage)
  result = api_instance.open_edit_file_third_party(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->open_edit_file_third_party: #{e}"
end
```

#### Using the open_edit_file_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyConfigurationWrapper>, Integer, Hash)> open_edit_file_third_party_with_http_info(file_id, opts)

```ruby
begin
  # Get the editor configuration (third-party storage)
  data, status_code, headers = api_instance.open_edit_file_third_party_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyConfigurationWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->open_edit_file_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file the editor configuration is built for. Take the id from a folder listing such as  `GET api/2.0/files/{folderId}`. |  |
| **version** | **Integer** | Which entry of the file history to open, numbered the way the file versions are. Left out, the current  revision is opened; naming a version requires access to the history of the file. | [optional] |
| **view** | **Boolean** | Asks for a read-only configuration. Left off, the configuration is built for editing as far as the caller's  rights and the room the file lies in allow. | [optional] |
| **editor_type** | **EditorType** | Which editor layout the configuration is built for: the full desktop interface, the reduced mobile one, or the  embedded viewer meant to be framed inside another page. | [optional] |
| **edit** | **Boolean** | Asks for editing rather than viewing. On a form in a form-filling room this also records that the form is  being edited; the room may still turn the request into viewing or into filling. | [optional] |
| **fill** | **Boolean** | Asks for a PDF form to open for filling out rather than for editing. It has no effect on a file that is not a  form. | [optional] |

### Return type

[**ThirdPartyConfigurationWrapper**](ThirdPartyConfigurationWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restore_file_version

> <EditHistoryArrayWrapper> restore_file_version(file_id, opts)

Restore a file version

Brings an earlier version of a file back and answers with the editing revisions of the file after the restore.  Nothing is overwritten: the content of the chosen version is stored again as a new version on top of the  history, carrying a comment that says which version it was reverted to, so the intervening versions stay  readable. `url` changes the source - with it the content is fetched from that address, which is how the  document service returns a document with a set of changes rolled back, and the new version records that  instead. Any links that pointed at drafts of the file are dropped, and the file is marked as new for the other  people who can read it. `version` has to name an existing version and is refused with 400 when it is missing  or already the current one. The caller needs the right to edit the history of the file and is otherwise  refused with 403, an anonymous caller included. The call is mutating and not idempotent. A locked file, one in  Trash, one being edited, an encrypted one and one kept in a connected third-party storage are all refused.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-file-version/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file whose version is restored.
opts = {
  version: 1, # Integer | The version to restore, as reported by `GET api/2.0/files/file/{fileId}/edit/history`. It has to name an  existing version that is not the current one.
  url: 'https://document-server.example.com/cache/files/conv_1_docx/output.docx' # String | The address the content of the new version is fetched from instead of the stored version, which is how the  document service hands back a document with a set of changes rolled back; left out, the stored version is  used.
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
| **file_id** | **Integer** | The file whose version is restored. |  |
| **version** | **Integer** | The version to restore, as reported by `GET api/2.0/files/file/{fileId}/edit/history`. It has to name an  existing version that is not the current one. | [optional] |
| **url** | **String** | The address the content of the new version is fetched from instead of the stored version, which is how the  document service hands back a document with a set of changes rolled back; left out, the stored version is  used. | [optional] |

### Return type

[**EditHistoryArrayWrapper**](EditHistoryArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restore_file_version_third_party

> <EditHistoryArrayWrapper> restore_file_version_third_party(file_id, opts)

Restore a file version (third-party storage)

Brings an earlier version of a file back and answers with the editing revisions of the file after the restore.  Nothing is overwritten: the content of the chosen version is stored again as a new version on top of the  history, carrying a comment that says which version it was reverted to, so the intervening versions stay  readable. `url` changes the source - with it the content is fetched from that address, which is how the  document service returns a document with a set of changes rolled back, and the new version records that  instead. Any links that pointed at drafts of the file are dropped, and the file is marked as new for the other  people who can read it. `version` has to name an existing version and is refused with 400 when it is missing  or already the current one. The caller needs the right to edit the history of the file and is otherwise  refused with 403, an anonymous caller included. The call is mutating and not idempotent. A locked file, one in  Trash, one being edited, an encrypted one and one kept in a connected third-party storage are all refused.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/restore-file-version-third-party/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = '1' # String | The file whose version is restored.
opts = {
  version: 1, # Integer | The version to restore, as reported by `GET api/2.0/files/file/{fileId}/edit/history`. It has to name an  existing version that is not the current one.
  url: 'https://document-server.example.com/cache/files/conv_1_docx/output.docx' # String | The address the content of the new version is fetched from instead of the stored version, which is how the  document service hands back a document with a set of changes rolled back; left out, the stored version is  used.
}

begin
  # Restore a file version (third-party storage)
  result = api_instance.restore_file_version_third_party(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->restore_file_version_third_party: #{e}"
end
```

#### Using the restore_file_version_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EditHistoryArrayWrapper>, Integer, Hash)> restore_file_version_third_party_with_http_info(file_id, opts)

```ruby
begin
  # Restore a file version (third-party storage)
  data, status_code, headers = api_instance.restore_file_version_third_party_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EditHistoryArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->restore_file_version_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file whose version is restored. |  |
| **version** | **Integer** | The version to restore, as reported by `GET api/2.0/files/file/{fileId}/edit/history`. It has to name an  existing version that is not the current one. | [optional] |
| **url** | **String** | The address the content of the new version is fetched from instead of the stored version, which is how the  document service hands back a document with a set of changes rolled back; left out, the stored version is  used. | [optional] |

### Return type

[**EditHistoryArrayWrapper**](EditHistoryArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## save_editing_file_from_form

> <FileWrapper> save_editing_file_from_form(file_id, opts)

Save edited file content

Replaces the content of an existing file with an edited copy and answers with the file as it now stands. The  content is the `File` part of a `multipart/form-data` body, and when no such part is sent the raw request body  is saved instead, so an empty body empties the file. The `DownloadUri` query parameter does not supply content  here; it is only read for the extension when `FileExtension` is empty. `fileExtension` names the format of the  content being sent, and when it differs from the stored format the portal converts the content, or keeps it  under a renamed copy when a third-party storage cannot convert it. The caller needs edit access to the file.  The call is mutating and not idempotent: an ordinary call adds a version to the file history, while  `forcesave=true` records an editor autosave, which overwrites the previous autosave revision instead of adding  another version and leaves a running editing session in place. It is refused with 403 when the file is locked,  lies in Trash, or is open in an editing session started by somebody else, and an unknown file id is reported  as missing. For content too large to post in one request use `POST api/2.0/files/file/{fileId}/edit_session`.

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
file_id = 1 # Integer | The file whose content is replaced. The submitted content is written onto this file, so it has to be the file  the editing session was opened on rather than a copy of it.
opts = {
  download_uri: 'https://example.com/file.txt', # String | An address the document service saved the document at. This operation does not fetch the content from it - the  content always comes from the request body - and reads it only for the extension, when no file extension is  given.
  file_extension: 'file_extension_example', # String | The format the submitted content is in, with the leading dot, as in `.docx`. When it differs from the format  the file is stored in, the portal converts the content before saving it. Left empty, the extension is read off  the download address, and failing that the stored format is assumed.
  file: File.new('/path/to/some/file'), # File | The edited content, sent as the `File` part of a `multipart/form-data` body. When the part is missing the raw  request body is saved as the content instead, so an empty body empties the file.
  forcesave: true # Boolean | Records the write as an editor autosave: the file keeps its running editing session and the previous autosave  revision is overwritten. Left off, the write closes the solo editing session, is refused while somebody else  has the file open, and adds a version to the history.
}

begin
  # Save edited file content
  result = api_instance.save_editing_file_from_form(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->save_editing_file_from_form: #{e}"
end
```

#### Using the save_editing_file_from_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileWrapper>, Integer, Hash)> save_editing_file_from_form_with_http_info(file_id, opts)

```ruby
begin
  # Save edited file content
  data, status_code, headers = api_instance.save_editing_file_from_form_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->save_editing_file_from_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file whose content is replaced. The submitted content is written onto this file, so it has to be the file  the editing session was opened on rather than a copy of it. |  |
| **download_uri** | **String** | An address the document service saved the document at. This operation does not fetch the content from it - the  content always comes from the request body - and reads it only for the extension, when no file extension is  given. | [optional] |
| **file_extension** | **String** | The format the submitted content is in, with the leading dot, as in `.docx`. When it differs from the format  the file is stored in, the portal converts the content before saving it. Left empty, the extension is read off  the download address, and failing that the stored format is assumed. | [optional] |
| **file** | **File** | The edited content, sent as the `File` part of a `multipart/form-data` body. When the part is missing the raw  request body is saved as the content instead, so an empty body empties the file. | [optional] |
| **forcesave** | **Boolean** | Records the write as an editor autosave: the file keeps its running editing session and the previous autosave  revision is overwritten. Left off, the write closes the solo editing session, is refused while somebody else  has the file open, and adds a version to the history. | [optional] |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## save_editing_file_from_form_third_party

> <ThirdPartyFileWrapper> save_editing_file_from_form_third_party(file_id, opts)

Save edited file content (third-party storage)

Replaces the content of an existing file with an edited copy and answers with the file as it now stands. The  content is the `File` part of a `multipart/form-data` body, and when no such part is sent the raw request body  is saved instead, so an empty body empties the file. The `DownloadUri` query parameter does not supply content  here; it is only read for the extension when `FileExtension` is empty. `fileExtension` names the format of the  content being sent, and when it differs from the stored format the portal converts the content, or keeps it  under a renamed copy when a third-party storage cannot convert it. The caller needs edit access to the file.  The call is mutating and not idempotent: an ordinary call adds a version to the file history, while  `forcesave=true` records an editor autosave, which overwrites the previous autosave revision instead of adding  another version and leaves a running editing session in place. It is refused with 403 when the file is locked,  lies in Trash, or is open in an editing session started by somebody else, and an unknown file id is reported  as missing. For content too large to post in one request use `POST api/2.0/files/file/{fileId}/edit_session`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-editing-file-from-form-third-party/).

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
file_id = '1' # String | The file whose content is replaced. The submitted content is written onto this file, so it has to be the file  the editing session was opened on rather than a copy of it.
opts = {
  download_uri: 'https://example.com/file.txt', # String | An address the document service saved the document at. This operation does not fetch the content from it - the  content always comes from the request body - and reads it only for the extension, when no file extension is  given.
  file_extension: 'file_extension_example', # String | The format the submitted content is in, with the leading dot, as in `.docx`. When it differs from the format  the file is stored in, the portal converts the content before saving it. Left empty, the extension is read off  the download address, and failing that the stored format is assumed.
  file: File.new('/path/to/some/file'), # File | The edited content, sent as the `File` part of a `multipart/form-data` body. When the part is missing the raw  request body is saved as the content instead, so an empty body empties the file.
  forcesave: true # Boolean | Records the write as an editor autosave: the file keeps its running editing session and the previous autosave  revision is overwritten. Left off, the write closes the solo editing session, is refused while somebody else  has the file open, and adds a version to the history.
}

begin
  # Save edited file content (third-party storage)
  result = api_instance.save_editing_file_from_form_third_party(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->save_editing_file_from_form_third_party: #{e}"
end
```

#### Using the save_editing_file_from_form_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyFileWrapper>, Integer, Hash)> save_editing_file_from_form_third_party_with_http_info(file_id, opts)

```ruby
begin
  # Save edited file content (third-party storage)
  data, status_code, headers = api_instance.save_editing_file_from_form_third_party_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyFileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->save_editing_file_from_form_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file whose content is replaced. The submitted content is written onto this file, so it has to be the file  the editing session was opened on rather than a copy of it. |  |
| **download_uri** | **String** | An address the document service saved the document at. This operation does not fetch the content from it - the  content always comes from the request body - and reads it only for the extension, when no file extension is  given. | [optional] |
| **file_extension** | **String** | The format the submitted content is in, with the leading dot, as in `.docx`. When it differs from the format  the file is stored in, the portal converts the content before saving it. Left empty, the extension is read off  the download address, and failing that the stored format is assumed. | [optional] |
| **file** | **File** | The edited content, sent as the `File` part of a `multipart/form-data` body. When the part is missing the raw  request body is saved as the content instead, so an empty body empties the file. | [optional] |
| **forcesave** | **Boolean** | Records the write as an editor autosave: the file keeps its running editing session and the previous autosave  revision is overwritten. Left off, the write closes the solo editing session, is refused while somebody else  has the file open, and adds a version to the history. | [optional] |

### Return type

[**ThirdPartyFileWrapper**](ThirdPartyFileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## save_file_as_pdf

> <FileWrapper> save_file_as_pdf(id, save_as_pdf)

Save a file as PDF

Converts a file into a PDF, stores that PDF as a new file in the folder named in the body, and answers with  the file that was created. The source is left untouched, so the two files then live side by side. `title`  names the result without an extension - the `.pdf` extension is added to it - and an empty title reuses the  name of the source with its extension replaced. The conversion is done by the document service while the  request waits, so the call takes as long as the document needs and answers with the finished file rather than  with a queue entry. The caller needs read access to the source file and the right to create files in the  destination folder, and is otherwise refused; a source file or a destination folder that does not exist is  answered with 404. The call is mutating and not idempotent: each call adds another PDF, its title made unique  when one of that name is already there. The result is marked as new for the room, and for a form the portal  recognises it is stored as a PDF form. To convert in place instead use  `PUT api/2.0/files/file/{fileId}/checkconversion`.

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
id = 1 # Integer | The file to convert; it is left untouched.
save_as_pdf = DocspaceApiSdk::SaveAsPdf.new({folder_id: 1, title: 'My Document'}) # SaveAsPdf | The destination folder and the name of the PDF.

begin
  # Save a file as PDF
  result = api_instance.save_file_as_pdf(id, save_as_pdf)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->save_file_as_pdf: #{e}"
end
```

#### Using the save_file_as_pdf_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileWrapper>, Integer, Hash)> save_file_as_pdf_with_http_info(id, save_as_pdf)

```ruby
begin
  # Save a file as PDF
  data, status_code, headers = api_instance.save_file_as_pdf_with_http_info(id, save_as_pdf)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->save_file_as_pdf_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The file to convert; it is left untouched. |  |
| **save_as_pdf** | [**SaveAsPdf**](SaveAsPdf.md) | The destination folder and the name of the PDF. |  |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## save_file_as_pdf_third_party

> <ThirdPartyFileWrapper> save_file_as_pdf_third_party(id, third_party_save_as_pdf)

Save a file as PDF (third-party storage)

Converts a file into a PDF, stores that PDF as a new file in the folder named in the body, and answers with  the file that was created. The source is left untouched, so the two files then live side by side. `title`  names the result without an extension - the `.pdf` extension is added to it - and an empty title reuses the  name of the source with its extension replaced. The conversion is done by the document service while the  request waits, so the call takes as long as the document needs and answers with the finished file rather than  with a queue entry. The caller needs read access to the source file and the right to create files in the  destination folder, and is otherwise refused; a source file or a destination folder that does not exist is  answered with 404. The call is mutating and not idempotent: each call adds another PDF, its title made unique  when one of that name is already there. The result is marked as new for the room, and for a form the portal  recognises it is stored as a PDF form. To convert in place instead use  `PUT api/2.0/files/file/{fileId}/checkconversion`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-file-as-pdf-third-party/).

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
id = '1' # String | The file to convert; it is left untouched.
third_party_save_as_pdf = DocspaceApiSdk::ThirdPartySaveAsPdf.new({folder_id: '1', title: 'My Document'}) # ThirdPartySaveAsPdf | The destination folder and the name of the PDF.

begin
  # Save a file as PDF (third-party storage)
  result = api_instance.save_file_as_pdf_third_party(id, third_party_save_as_pdf)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->save_file_as_pdf_third_party: #{e}"
end
```

#### Using the save_file_as_pdf_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyFileWrapper>, Integer, Hash)> save_file_as_pdf_third_party_with_http_info(id, third_party_save_as_pdf)

```ruby
begin
  # Save a file as PDF (third-party storage)
  data, status_code, headers = api_instance.save_file_as_pdf_third_party_with_http_info(id, third_party_save_as_pdf)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyFileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->save_file_as_pdf_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The file to convert; it is left untouched. |  |
| **third_party_save_as_pdf** | [**ThirdPartySaveAsPdf**](ThirdPartySaveAsPdf.md) | The destination folder and the name of the PDF. |  |

### Return type

[**ThirdPartyFileWrapper**](ThirdPartyFileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## save_form_role_mapping

> save_form_role_mapping(file_id, opts)

Save form role mapping

Assigns the roles of a PDF form to the people who are to fill them in, and starts the filling: the form is  marked as being filled out, the account that called is recorded as the one who started it, everybody named in  a role is notified, and the form becomes visible to the members whose room rights are limited to filling  forms. Each role carries its name, the account that takes it and the sequence number that decides the turn, so  the same sequence means the roles may be filled in parallel and different ones make a queue. Sending an empty  role list resets the filling instead, dropping the assignment altogether. The whole set is replaced on every  call, so the call is idempotent for a given set of roles but not additive. The file has to be a PDF form lying  in a room; the caller needs the right to start the filling of that form, which the room admin and a member  with content-creator rights have, and is otherwise refused with 403. Read back what was stored with  `GET api/2.0/files/file/{fileId}/formroles`.

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
  save_form_role_mapping_dto: DocspaceApiSdk::SaveFormRoleMappingDto.new({form_id: 1, roles: [{roleName=Approver,  userId=00000000-0000-0000-0000-000000000000}]}) # SaveFormRoleMappingDto | 
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
| **save_form_role_mapping_dto** | [**SaveFormRoleMappingDto**](SaveFormRoleMappingDto.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_custom_filter_tag

> <FileWrapper> set_custom_filter_tag(file_id, custom_filter_parameters)

Set the Custom Filter editing mode

Turns the Custom Filter editing mode of a spreadsheet on or off and answers with the file as it now stands. In  that mode the sorting and filtering one person applies to the sheet is visible to that person alone, so that  several people can work on the same data without moving the rows under each other; with the mode off,  filtering is shared again, as everywhere else. Turning it on also drops everybody else out of the running  editing session, the caller excepted, because the mode has to be established before the sheet is opened. Only  formats that support the mode are accepted; anything else is rejected as an invalid request. The caller needs  the right to use the mode in the room, which the room admin and a DocSpace admin acting as room manager have;  read-only access, a member without access to the room and an anonymous caller are refused. Once the mode has  been switched on by one person, only that person, a room manager or a DocSpace admin can switch it off again.  The call is mutating and, called twice with the same value, changes nothing the second time.

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
file_id = 1 # Integer | The spreadsheet whose Custom Filter mode is switched.
custom_filter_parameters = DocspaceApiSdk::CustomFilterParameters.new # CustomFilterParameters | The Custom Filter state to reach.

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

> <Array(<FileWrapper>, Integer, Hash)> set_custom_filter_tag_with_http_info(file_id, custom_filter_parameters)

```ruby
begin
  # Set the Custom Filter editing mode
  data, status_code, headers = api_instance.set_custom_filter_tag_with_http_info(file_id, custom_filter_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_custom_filter_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The spreadsheet whose Custom Filter mode is switched. |  |
| **custom_filter_parameters** | [**CustomFilterParameters**](CustomFilterParameters.md) | The Custom Filter state to reach. |  |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_custom_filter_tag_third_party

> <ThirdPartyFileWrapper> set_custom_filter_tag_third_party(file_id, custom_filter_parameters)

Set the Custom Filter editing mode (third-party storage)

Turns the Custom Filter editing mode of a spreadsheet on or off and answers with the file as it now stands. In  that mode the sorting and filtering one person applies to the sheet is visible to that person alone, so that  several people can work on the same data without moving the rows under each other; with the mode off,  filtering is shared again, as everywhere else. Turning it on also drops everybody else out of the running  editing session, the caller excepted, because the mode has to be established before the sheet is opened. Only  formats that support the mode are accepted; anything else is rejected as an invalid request. The caller needs  the right to use the mode in the room, which the room admin and a DocSpace admin acting as room manager have;  read-only access, a member without access to the room and an anonymous caller are refused. Once the mode has  been switched on by one person, only that person, a room manager or a DocSpace admin can switch it off again.  The call is mutating and, called twice with the same value, changes nothing the second time.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-custom-filter-tag-third-party/).

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
file_id = '1' # String | The spreadsheet whose Custom Filter mode is switched.
custom_filter_parameters = DocspaceApiSdk::CustomFilterParameters.new # CustomFilterParameters | The Custom Filter state to reach.

begin
  # Set the Custom Filter editing mode (third-party storage)
  result = api_instance.set_custom_filter_tag_third_party(file_id, custom_filter_parameters)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_custom_filter_tag_third_party: #{e}"
end
```

#### Using the set_custom_filter_tag_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyFileWrapper>, Integer, Hash)> set_custom_filter_tag_third_party_with_http_info(file_id, custom_filter_parameters)

```ruby
begin
  # Set the Custom Filter editing mode (third-party storage)
  data, status_code, headers = api_instance.set_custom_filter_tag_third_party_with_http_info(file_id, custom_filter_parameters)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyFileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_custom_filter_tag_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The spreadsheet whose Custom Filter mode is switched. |  |
| **custom_filter_parameters** | [**CustomFilterParameters**](CustomFilterParameters.md) | The Custom Filter state to reach. |  |

### Return type

[**ThirdPartyFileWrapper**](ThirdPartyFileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_encryption_info

> set_encryption_info(file_id, opts)

Set file encryption information

Issues the file keys that let the named people open one file of an end-to-end encrypted private room. Each  entry of the body names the account the key is for, the public key it was encrypted with and the encrypted key  itself, so the plain key never reaches the portal: the client encrypts it once per recipient with the public  key that `GET api/2.0/files/file/{fileId}/publickeys` reports for them. The keys of the accounts named in the  request are replaced, and the keys of everybody else are left as they are, which makes the call idempotent for  a given set of recipients while remaining a mutating one; sending no entry for a person does not revoke that  person's key. The file has to lie in a private room, and every account named in the request has to have read  access to it. The caller needs read access to the file and the right to create content in that room, which its  members with editing rights and its admins have; a caller without those rights, a file outside a private room  and a file that does not exist are all refused with 403. Read the result back with  `GET api/2.0/files/{fileId}/access`.

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
file_id = 12345 # Integer | The file the keys are issued for; it has to lie in a private room.
opts = {
  access_request_key_dto: [DocspaceApiSdk::AccessRequestKeyDto.new] # Array<AccessRequestKeyDto> | One key per account that is to open the file. The keys of the accounts named here are replaced and the keys of  everybody else are left as they are, so sending no entry for a person does not revoke that person's key.
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
| **file_id** | **Integer** | The file the keys are issued for; it has to lie in a private room. |  |
| **access_request_key_dto** | [**Array&lt;AccessRequestKeyDto&gt;**](AccessRequestKeyDto.md) | One key per account that is to open the file. The keys of the accounts named here are replaced and the keys of  everybody else are left as they are, so sending no entry for a person does not revoke that person's key. | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_encryption_info_third_party

> set_encryption_info_third_party(file_id, opts)

Set file encryption information (third-party storage)

Issues the file keys that let the named people open one file of an end-to-end encrypted private room. Each  entry of the body names the account the key is for, the public key it was encrypted with and the encrypted key  itself, so the plain key never reaches the portal: the client encrypts it once per recipient with the public  key that `GET api/2.0/files/file/{fileId}/publickeys` reports for them. The keys of the accounts named in the  request are replaced, and the keys of everybody else are left as they are, which makes the call idempotent for  a given set of recipients while remaining a mutating one; sending no entry for a person does not revoke that  person's key. The file has to lie in a private room, and every account named in the request has to have read  access to it. The caller needs read access to the file and the right to create content in that room, which its  members with editing rights and its admins have; a caller without those rights, a file outside a private room  and a file that does not exist are all refused with 403. Read the result back with  `GET api/2.0/files/{fileId}/access`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-encryption-info-third-party/).

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
file_id = '12345' # String | The file the keys are issued for; it has to lie in a private room.
opts = {
  access_request_key_dto: [DocspaceApiSdk::AccessRequestKeyDto.new] # Array<AccessRequestKeyDto> | One key per account that is to open the file. The keys of the accounts named here are replaced and the keys of  everybody else are left as they are, so sending no entry for a person does not revoke that person's key.
}

begin
  # Set file encryption information (third-party storage)
  api_instance.set_encryption_info_third_party(file_id, opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_encryption_info_third_party: #{e}"
end
```

#### Using the set_encryption_info_third_party_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_encryption_info_third_party_with_http_info(file_id, opts)

```ruby
begin
  # Set file encryption information (third-party storage)
  data, status_code, headers = api_instance.set_encryption_info_third_party_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_encryption_info_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file the keys are issued for; it has to lie in a private room. |  |
| **access_request_key_dto** | [**Array&lt;AccessRequestKeyDto&gt;**](AccessRequestKeyDto.md) | One key per account that is to open the file. The keys of the accounts named here are replaced and the keys of  everybody else are left as they are, so sending no entry for a person does not revoke that person's key. | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_file_external_link

> <FileShareWrapper> set_file_external_link(id, file_link_request)

Set a file external link

Creates an external link to a file, or changes or revokes an existing one, and answers with the link as it now  stands. `linkId` decides which: an identifier that is not yet in use, the empty one included, creates a link,  while the identifier of an existing link rewrites it, so the whole set of parameters is applied every time and  a field left out is reset rather than kept. `access` carries the rights the link grants, and `access` set to  the value that denies everything revokes the link instead - the answer is then empty, and a revoked primary  link is not recreated by a later read. `title` names the link for the people who manage it, `expirationDate`  limits its lifetime and is refused when it lies more than a few years ahead, `password` asks visitors for a  secret, `denyDownload` leaves them with viewing only, `internal` admits signed-in members alone, and  `primary=true` makes it the primary link of the file. The caller needs the right to share the file and is  otherwise refused, an unknown file being answered as not found. The call is mutating.

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
id = 1 # Integer | The file the link points at.
file_link_request = DocspaceApiSdk::FileLinkRequest.new # FileLinkRequest | The settings of the link. They are applied in full, so a field left out is reset rather than kept.

begin
  # Set a file external link
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
  # Set a file external link
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
| **id** | **Integer** | The file the link points at. |  |
| **file_link_request** | [**FileLinkRequest**](FileLinkRequest.md) | The settings of the link. They are applied in full, so a field left out is reset rather than kept. |  |

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_file_external_link_third_party

> <FileShareWrapper> set_file_external_link_third_party(id, file_link_request)

Set a file external link (third-party storage)

Creates an external link to a file, or changes or revokes an existing one, and answers with the link as it now  stands. `linkId` decides which: an identifier that is not yet in use, the empty one included, creates a link,  while the identifier of an existing link rewrites it, so the whole set of parameters is applied every time and  a field left out is reset rather than kept. `access` carries the rights the link grants, and `access` set to  the value that denies everything revokes the link instead - the answer is then empty, and a revoked primary  link is not recreated by a later read. `title` names the link for the people who manage it, `expirationDate`  limits its lifetime and is refused when it lies more than a few years ahead, `password` asks visitors for a  secret, `denyDownload` leaves them with viewing only, `internal` admits signed-in members alone, and  `primary=true` makes it the primary link of the file. The caller needs the right to share the file and is  otherwise refused, an unknown file being answered as not found. The call is mutating.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-external-link-third-party/).

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
id = '1' # String | The file the link points at.
file_link_request = DocspaceApiSdk::FileLinkRequest.new # FileLinkRequest | The settings of the link. They are applied in full, so a field left out is reset rather than kept.

begin
  # Set a file external link (third-party storage)
  result = api_instance.set_file_external_link_third_party(id, file_link_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_file_external_link_third_party: #{e}"
end
```

#### Using the set_file_external_link_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareWrapper>, Integer, Hash)> set_file_external_link_third_party_with_http_info(id, file_link_request)

```ruby
begin
  # Set a file external link (third-party storage)
  data, status_code, headers = api_instance.set_file_external_link_third_party_with_http_info(id, file_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_file_external_link_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The file the link points at. |  |
| **file_link_request** | [**FileLinkRequest**](FileLinkRequest.md) | The settings of the link. They are applied in full, so a field left out is reset rather than kept. |  |

### Return type

[**FileShareWrapper**](FileShareWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_file_order

> <FileWrapper> set_file_order(file_id, opts)

Set file order

Puts a file at a given position inside its folder and answers with the file, its `order` reporting where it  now stands. Positions count from 1, and the file that held the wanted position, together with everything after  it, is shifted to make room, so the numbering of a folder stays without gaps; a position beyond the end of the  folder places the file last. The value may also be sent as a dotted path, as in 1.2.3, in which case only  its last segment is read. Ordering is what the manual sorting of a room is built on, and it only means  something in rooms whose contents are indexed - elsewhere the value is stored and ignored. The caller needs  edit access to the file, which room managers, content creators and members with editing rights have; a member  acting on somebody else's file, a guest and an anonymous caller are refused with 403, and an unknown file is  answered with 404. The call is mutating and idempotent. To move several items in one go use  `PUT api/2.0/files/order`.

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
file_id = 1 # Integer | The file to move.
opts = {
  order_request_dto: DocspaceApiSdk::OrderRequestDto.new # OrderRequestDto | The position the file is to take.
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

> <Array(<FileWrapper>, Integer, Hash)> set_file_order_with_http_info(file_id, opts)

```ruby
begin
  # Set file order
  data, status_code, headers = api_instance.set_file_order_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_file_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file to move. |  |
| **order_request_dto** | [**OrderRequestDto**](OrderRequestDto.md) | The position the file is to take. | [optional] |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_file_order_third_party

> <ThirdPartyFileWrapper> set_file_order_third_party(file_id, opts)

Set file order (third-party storage)

Puts a file at a given position inside its folder and answers with the file, its `order` reporting where it  now stands. Positions count from 1, and the file that held the wanted position, together with everything after  it, is shifted to make room, so the numbering of a folder stays without gaps; a position beyond the end of the  folder places the file last. The value may also be sent as a dotted path, as in 1.2.3, in which case only  its last segment is read. Ordering is what the manual sorting of a room is built on, and it only means  something in rooms whose contents are indexed - elsewhere the value is stored and ignored. The caller needs  edit access to the file, which room managers, content creators and members with editing rights have; a member  acting on somebody else's file, a guest and an anonymous caller are refused with 403, and an unknown file is  answered with 404. The call is mutating and idempotent. To move several items in one go use  `PUT api/2.0/files/order`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-order-third-party/).

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
file_id = '1' # String | The file to move.
opts = {
  order_request_dto: DocspaceApiSdk::OrderRequestDto.new # OrderRequestDto | The position the file is to take.
}

begin
  # Set file order (third-party storage)
  result = api_instance.set_file_order_third_party(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_file_order_third_party: #{e}"
end
```

#### Using the set_file_order_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyFileWrapper>, Integer, Hash)> set_file_order_third_party_with_http_info(file_id, opts)

```ruby
begin
  # Set file order (third-party storage)
  data, status_code, headers = api_instance.set_file_order_third_party_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyFileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_file_order_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file to move. |  |
| **order_request_dto** | [**OrderRequestDto**](OrderRequestDto.md) | The position the file is to take. | [optional] |

### Return type

[**ThirdPartyFileWrapper**](ThirdPartyFileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_files_order

> <FileEntryArrayWrapper> set_files_order(opts)

Set order of files

Puts several files and folders at given positions in one go and answers with the entries that were moved, each  with the position it now holds. Every item of `items` names an entry by its identifier and its kind - a file  or a folder - and the position it is to take, counting from 1; a position may also be sent as a dotted path,  as in 1.2.3, of which only the last segment is read. The items are applied one after another in the order  they are sent, and each of them shifts its neighbours, so the result depends on that order; the whole request  is not one transaction, and a failure in the middle leaves the items before it moved. Every item has to lie in  a room the caller may administer, which the room admin and a DocSpace admin acting as room manager do:  read-only access, a guest and an anonymous caller are refused, and an identifier that matches nothing is  answered as not found. Ordering only means something in rooms whose contents are indexed. The call is  mutating. For a single file use `PUT api/2.0/files/{fileId}/order`.

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
  orders_request_dto: DocspaceApiSdk::OrdersRequestDto.new({items: [{entryId=1,  entryType=2,  order=1},  {entryId=4,  entryType=1,  order=2}]}) # OrdersRequestDto | 
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

> <Array(<FileEntryArrayWrapper>, Integer, Hash)> set_files_order_with_http_info(opts)

```ruby
begin
  # Set order of files
  data, status_code, headers = api_instance.set_files_order_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileEntryArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->set_files_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orders_request_dto** | [**OrdersRequestDto**](OrdersRequestDto.md) |  | [optional] |

### Return type

[**FileEntryArrayWrapper**](FileEntryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_edit_file

> <StringWrapper> start_edit_file(file_id, start_edit)

Open an editing session

Opens an editing session on the file and answers with the document key that identifies it, the value an editor  client passes to the document service in order to join the co-editing session for that exact revision. The  file is marked as being edited for as long as the session lasts, which keeps it from being deleted or moved.  With `editingAlone=false` the portal builds the editor configuration, requires write mode plus at least one of  the edit, review, comment, form-filling or filter permissions, and asks the document service to start tracking  the document. With `editingAlone=true` the caller claims the file for itself, and the call is refused with 403  when anybody is already editing it. The caller needs edit access: a member with read access, a guest and an  anonymous caller whose external link does not grant editing are all refused. The call is mutating and not  idempotent. Keep the session alive with `GET api/2.0/files/file/{fileId}/trackeditfile`, and end it by calling  that operation with `isFinish=true`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-edit-file/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file to open the editing session on. The caller needs edit access to it.
start_edit = DocspaceApiSdk::StartEdit.new # StartEdit | The session options. The body is required even when it only carries the default, so send an empty object to  open an ordinary co-editing session.

begin
  # Open an editing session
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
  # Open an editing session
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
| **file_id** | **Integer** | The file to open the editing session on. The caller needs edit access to it. |  |
| **start_edit** | [**StartEdit**](StartEdit.md) | The session options. The body is required even when it only carries the default, so send an empty object to  open an ordinary co-editing session. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_edit_file_third_party

> <StringWrapper> start_edit_file_third_party(file_id, start_edit)

Open an editing session (third-party storage)

Opens an editing session on the file and answers with the document key that identifies it, the value an editor  client passes to the document service in order to join the co-editing session for that exact revision. The  file is marked as being edited for as long as the session lasts, which keeps it from being deleted or moved.  With `editingAlone=false` the portal builds the editor configuration, requires write mode plus at least one of  the edit, review, comment, form-filling or filter permissions, and asks the document service to start tracking  the document. With `editingAlone=true` the caller claims the file for itself, and the call is refused with 403  when anybody is already editing it. The caller needs edit access: a member with read access, a guest and an  anonymous caller whose external link does not grant editing are all refused. The call is mutating and not  idempotent. Keep the session alive with `GET api/2.0/files/file/{fileId}/trackeditfile`, and end it by calling  that operation with `isFinish=true`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-edit-file-third-party/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = '1' # String | The file to open the editing session on. The caller needs edit access to it.
start_edit = DocspaceApiSdk::StartEdit.new # StartEdit | The session options. The body is required even when it only carries the default, so send an empty object to  open an ordinary co-editing session.

begin
  # Open an editing session (third-party storage)
  result = api_instance.start_edit_file_third_party(file_id, start_edit)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->start_edit_file_third_party: #{e}"
end
```

#### Using the start_edit_file_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> start_edit_file_third_party_with_http_info(file_id, start_edit)

```ruby
begin
  # Open an editing session (third-party storage)
  data, status_code, headers = api_instance.start_edit_file_third_party_with_http_info(file_id, start_edit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->start_edit_file_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file to open the editing session on. The caller needs edit access to it. |  |
| **start_edit** | [**StartEdit**](StartEdit.md) | The session options. The body is required even when it only carries the default, so send an empty object to  open an ordinary co-editing session. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_filling_file

> <FileWrapper> start_filling_file(file_id)

Start filling a form

Marks a PDF form in a form-filling room as open for filling out and answers with the form file. The portal  stores the filling properties on it - the room it belongs to, its title, the account that started it and the  id it keeps as the original form - so that later submissions are collected against this form. The file has to  be a PDF whose parent folder is a form-filling room; anything else is answered unchanged and nothing is  stored. Access follows room membership rather than portal role: a member holding only form-filling access on  the room may not start filling, and a caller with no access to the room at all is refused with 403 unless they  can manage it, which the room owner, a room administrator and a DocSpace administrator can. The call is  mutating and safe to repeat, since a repeat rewrites the same properties. Once a form is started, the answers  submitted for it can be collected into a spreadsheet with `POST api/2.0/files/file/{fileId}/xlsx`.

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
file_id = 1 # Integer | The PDF form to open for filling. It has to be the form as it lies in the form-filling room itself, not a copy  kept elsewhere and not a submitted result.

begin
  # Start filling a form
  result = api_instance.start_filling_file(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->start_filling_file: #{e}"
end
```

#### Using the start_filling_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileWrapper>, Integer, Hash)> start_filling_file_with_http_info(file_id)

```ruby
begin
  # Start filling a form
  data, status_code, headers = api_instance.start_filling_file_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->start_filling_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The PDF form to open for filling. It has to be the form as it lies in the form-filling room itself, not a copy  kept elsewhere and not a submitted result. |  |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_filling_file_third_party

> <ThirdPartyFileWrapper> start_filling_file_third_party(file_id)

Start filling a form (third-party storage)

Marks a PDF form in a form-filling room as open for filling out and answers with the form file. The portal  stores the filling properties on it - the room it belongs to, its title, the account that started it and the  id it keeps as the original form - so that later submissions are collected against this form. The file has to  be a PDF whose parent folder is a form-filling room; anything else is answered unchanged and nothing is  stored. Access follows room membership rather than portal role: a member holding only form-filling access on  the room may not start filling, and a caller with no access to the room at all is refused with 403 unless they  can manage it, which the room owner, a room administrator and a DocSpace administrator can. The call is  mutating and safe to repeat, since a repeat rewrites the same properties. Once a form is started, the answers  submitted for it can be collected into a spreadsheet with `POST api/2.0/files/file/{fileId}/xlsx`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-filling-file-third-party/).

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
file_id = '1' # String | The PDF form to open for filling. It has to be the form as it lies in the form-filling room itself, not a copy  kept elsewhere and not a submitted result.

begin
  # Start filling a form (third-party storage)
  result = api_instance.start_filling_file_third_party(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->start_filling_file_third_party: #{e}"
end
```

#### Using the start_filling_file_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyFileWrapper>, Integer, Hash)> start_filling_file_third_party_with_http_info(file_id)

```ruby
begin
  # Start filling a form (third-party storage)
  data, status_code, headers = api_instance.start_filling_file_third_party_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyFileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->start_filling_file_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The PDF form to open for filling. It has to be the form as it lies in the form-filling room itself, not a copy  kept elsewhere and not a submitted result. |  |

### Return type

[**ThirdPartyFileWrapper**](ThirdPartyFileWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## toggle_file_favorite

> <BooleanWrapper> toggle_file_favorite(file_id, opts)

Set the file favorite status

Sets or clears the favorite mark of one file for the calling account: `true` adds the file to the favorites,  `false` takes it out again. The call changes stored state even though it is a GET, so it is not one to issue  speculatively; repeating it with the same value changes nothing further. The mark is personal, no other member  sees it, and the file stays where it is stored. Read access is enough, so a room member with view-only rights  and a guest may call it. The answer only echoes the value that was asked for: an identifier that resolves to  nothing and a file the caller cannot read are skipped without a word, an encrypted file of a private room is  never marked, and the requested value still comes back, so read the outcome from  `GET api/2.0/files/@favorites` instead. A file moved to the Trash keeps its mark and is left out of that  listing until it is restored. To mark several entries at once, or to mark folders, use  `POST api/2.0/files/favorites` and `DELETE api/2.0/files/favorites`.

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
file_id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.
opts = {
  favorite: true # Boolean | Which state to put the mark in: `true` adds the file to the favorites of the calling account, `false` removes  it from them. Leaving the field out of the request removes the mark rather than setting it.
}

begin
  # Set the file favorite status
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
  # Set the file favorite status
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
| **file_id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |
| **favorite** | **Boolean** | Which state to put the mark in: `true` adds the file to the favorites of the calling account, `false` removes  it from them. Leaving the field out of the request removes the mark rather than setting it. | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## toggle_file_favorite_third_party

> <BooleanWrapper> toggle_file_favorite_third_party(file_id, opts)

Set the file favorite status (third-party storage)

Sets or clears the favorite mark of one file for the calling account: `true` adds the file to the favorites,  `false` takes it out again. The call changes stored state even though it is a GET, so it is not one to issue  speculatively; repeating it with the same value changes nothing further. The mark is personal, no other member  sees it, and the file stays where it is stored. Read access is enough, so a room member with view-only rights  and a guest may call it. The answer only echoes the value that was asked for: an identifier that resolves to  nothing and a file the caller cannot read are skipped without a word, an encrypted file of a private room is  never marked, and the requested value still comes back, so read the outcome from  `GET api/2.0/files/@favorites` instead. A file moved to the Trash keeps its mark and is left out of that  listing until it is restored. To mark several entries at once, or to mark folders, use  `POST api/2.0/files/favorites` and `DELETE api/2.0/files/favorites`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/toggle-file-favorite-third-party/).

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
file_id = '10' # String | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.
opts = {
  favorite: true # Boolean | Which state to put the mark in: `true` adds the file to the favorites of the calling account, `false` removes  it from them. Leaving the field out of the request removes the mark rather than setting it.
}

begin
  # Set the file favorite status (third-party storage)
  result = api_instance.toggle_file_favorite_third_party(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->toggle_file_favorite_third_party: #{e}"
end
```

#### Using the toggle_file_favorite_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> toggle_file_favorite_third_party_with_http_info(file_id, opts)

```ruby
begin
  # Set the file favorite status (third-party storage)
  data, status_code, headers = api_instance.toggle_file_favorite_third_party_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->toggle_file_favorite_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |
| **favorite** | **Boolean** | Which state to put the mark in: `true` adds the file to the favorites of the calling account, `false` removes  it from them. Leaving the field out of the request removes the mark rather than setting it. | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## track_edit_file

> <ItemKeyValuePairBooleanStringWrapper> track_edit_file(file_id, opts)

Track an editing session

Keeps an editing session on the file alive, or ends it; an editor client calls it repeatedly while a document  is open. `docKeyForTrack` has to be the document key of the file as it currently stands, the value  `POST api/2.0/files/file/{fileId}/startedit` returned, and a key matching neither the current revision nor the  one being edited is refused with 403. `tabId` names the client tab that holds the session, so several tabs and  several users are tracked on one file independently. Refreshing an entry requires one of the editing rights on  the file - editing, reviewing, commenting, filling or filter editing - so a reader is refused. With  `isFinish=false` the entry is refreshed and the file stays marked as being edited; with `isFinish=true` the  entry for that tab is dropped and the other clients are told that editing has stopped. The call changes the  tracking state and never the document, and repeating it is safe. It answers `key` true with an empty `value`  whenever it succeeds, so a failure arrives as an error rather than as a false key. An anonymous caller is  accepted only through an external share link.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/track-edit-file/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file whose editing session is being tracked.
opts = {
  tab_id: '00000000-0000-0000-0000-000000000000', # String | The client tab that holds the session, a value the client makes up once and repeats on every call about that  tab. Two tabs sending different values are tracked as two sessions on the same file, while the all-zero value  belongs to a session claimed for a single editor.
  doc_key_for_track: 'abc123', # String | The document key of the revision being edited, as `POST api/2.0/files/file/{fileId}/startedit` returned it. It  is checked against the file's current key on every call, so a key left over from an older revision is refused.
  is_finish: true # Boolean | Ends the session for this tab and tells the other clients that editing has stopped. Left off, the session is  refreshed and the file stays marked as being edited.
}

begin
  # Track an editing session
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
  # Track an editing session
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
| **file_id** | **Integer** | The file whose editing session is being tracked. |  |
| **tab_id** | **String** | The client tab that holds the session, a value the client makes up once and repeats on every call about that  tab. Two tabs sending different values are tracked as two sessions on the same file, while the all-zero value  belongs to a session claimed for a single editor. | [optional] |
| **doc_key_for_track** | **String** | The document key of the revision being edited, as `POST api/2.0/files/file/{fileId}/startedit` returned it. It  is checked against the file's current key on every call, so a key left over from an older revision is refused. | [optional] |
| **is_finish** | **Boolean** | Ends the session for this tab and tells the other clients that editing has stopped. Left off, the session is  refreshed and the file stays marked as being edited. | [optional] |

### Return type

[**ItemKeyValuePairBooleanStringWrapper**](ItemKeyValuePairBooleanStringWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## track_edit_file_third_party

> <ItemKeyValuePairBooleanStringWrapper> track_edit_file_third_party(file_id, opts)

Track an editing session (third-party storage)

Keeps an editing session on the file alive, or ends it; an editor client calls it repeatedly while a document  is open. `docKeyForTrack` has to be the document key of the file as it currently stands, the value  `POST api/2.0/files/file/{fileId}/startedit` returned, and a key matching neither the current revision nor the  one being edited is refused with 403. `tabId` names the client tab that holds the session, so several tabs and  several users are tracked on one file independently. Refreshing an entry requires one of the editing rights on  the file - editing, reviewing, commenting, filling or filter editing - so a reader is refused. With  `isFinish=false` the entry is refreshed and the file stays marked as being edited; with `isFinish=true` the  entry for that tab is dropped and the other clients are told that editing has stopped. The call changes the  tracking state and never the document, and repeating it is safe. It answers `key` true with an empty `value`  whenever it succeeds, so a failure arrives as an error rather than as a false key. An anonymous caller is  accepted only through an external share link.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/track-edit-file-third-party/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = '1' # String | The file whose editing session is being tracked.
opts = {
  tab_id: '00000000-0000-0000-0000-000000000000', # String | The client tab that holds the session, a value the client makes up once and repeats on every call about that  tab. Two tabs sending different values are tracked as two sessions on the same file, while the all-zero value  belongs to a session claimed for a single editor.
  doc_key_for_track: 'abc123', # String | The document key of the revision being edited, as `POST api/2.0/files/file/{fileId}/startedit` returned it. It  is checked against the file's current key on every call, so a key left over from an older revision is refused.
  is_finish: true # Boolean | Ends the session for this tab and tells the other clients that editing has stopped. Left off, the session is  refreshed and the file stays marked as being edited.
}

begin
  # Track an editing session (third-party storage)
  result = api_instance.track_edit_file_third_party(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->track_edit_file_third_party: #{e}"
end
```

#### Using the track_edit_file_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ItemKeyValuePairBooleanStringWrapper>, Integer, Hash)> track_edit_file_third_party_with_http_info(file_id, opts)

```ruby
begin
  # Track an editing session (third-party storage)
  data, status_code, headers = api_instance.track_edit_file_third_party_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ItemKeyValuePairBooleanStringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->track_edit_file_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file whose editing session is being tracked. |  |
| **tab_id** | **String** | The client tab that holds the session, a value the client makes up once and repeats on every call about that  tab. Two tabs sending different values are tracked as two sessions on the same file, while the all-zero value  belongs to a session claimed for a single editor. | [optional] |
| **doc_key_for_track** | **String** | The document key of the revision being edited, as `POST api/2.0/files/file/{fileId}/startedit` returned it. It  is checked against the file's current key on every call, so a key left over from an older revision is refused. | [optional] |
| **is_finish** | **Boolean** | Ends the session for this tab and tells the other clients that editing has stopped. Left off, the session is  refreshed and the file stays marked as being edited. | [optional] |

### Return type

[**ItemKeyValuePairBooleanStringWrapper**](ItemKeyValuePairBooleanStringWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_file

> <FileWrapper> update_file(file_id, update_file)

Update a file

Renames a file, restores one of its versions, or both at once, and answers with the file as it now stands. A  non-empty `title` renames the file, keeping the stored extension whatever the new title says, so a rename  cannot change the format; an empty or missing title leaves the name alone. A `lastVersion` above 0 restores  that version the way `POST api/2.0/files/file/{fileId}/restoreversion` does, storing its content again on top  of the history, while 0 or less leaves the versions untouched and answers with the file as it is - which makes  this operation a read of the file when both fields are left out. The caller needs edit access, and renaming  somebody else's file additionally needs room-manager rights: a member or room admin with plain editing access,  read-only access, a guest and a DocSpace admin who is not a member of the room are all refused with 403, while  a content creator may rename a file of their own. The call is mutating. Renaming marks the file as new for  everybody else who can read it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = 1 # Integer | The file to update.
update_file = DocspaceApiSdk::UpdateFile.new # UpdateFile | The new title and the version to restore.

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

> <Array(<FileWrapper>, Integer, Hash)> update_file_with_http_info(file_id, update_file)

```ruby
begin
  # Update a file
  data, status_code, headers = api_instance.update_file_with_http_info(file_id, update_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->update_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file to update. |  |
| **update_file** | [**UpdateFile**](UpdateFile.md) | The new title and the version to restore. |  |

### Return type

[**FileWrapper**](FileWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_file_third_party

> <ThirdPartyFileWrapper> update_file_third_party(file_id, update_file)

Update a file (third-party storage)

Renames a file, restores one of its versions, or both at once, and answers with the file as it now stands. A  non-empty `title` renames the file, keeping the stored extension whatever the new title says, so a rename  cannot change the format; an empty or missing title leaves the name alone. A `lastVersion` above 0 restores  that version the way `POST api/2.0/files/file/{fileId}/restoreversion` does, storing its content again on top  of the history, while 0 or less leaves the versions untouched and answers with the file as it is - which makes  this operation a read of the file when both fields are left out. The caller needs edit access, and renaming  somebody else's file additionally needs room-manager rights: a member or room admin with plain editing access,  read-only access, a guest and a DocSpace admin who is not a member of the room are all refused with 403, while  a content creator may rename a file of their own. The call is mutating. Renaming marks the file as new for  everybody else who can read it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-third-party/).

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

api_instance = DocspaceApiSdk::Files::FilesApi.new
file_id = '1' # String | The file to update.
update_file = DocspaceApiSdk::UpdateFile.new # UpdateFile | The new title and the version to restore.

begin
  # Update a file (third-party storage)
  result = api_instance.update_file_third_party(file_id, update_file)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->update_file_third_party: #{e}"
end
```

#### Using the update_file_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyFileWrapper>, Integer, Hash)> update_file_third_party_with_http_info(file_id, update_file)

```ruby
begin
  # Update a file (third-party storage)
  data, status_code, headers = api_instance.update_file_third_party_with_http_info(file_id, update_file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyFileWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::FilesApi->update_file_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** | The file to update. |  |
| **update_file** | [**UpdateFile**](UpdateFile.md) | The new title and the version to restore. |  |

### Return type

[**ThirdPartyFileWrapper**](ThirdPartyFileWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

