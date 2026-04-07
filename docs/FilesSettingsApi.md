# DocspaceApiSdk::FilesSettingsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**change_access_to_thirdparty**](FilesSettingsApi.md#change_access_to_thirdparty) | **PUT** /api/2.0/files/thirdparty | Change the third-party settings access |
| [**change_automatically_clean_up**](FilesSettingsApi.md#change_automatically_clean_up) | **PUT** /api/2.0/files/settings/autocleanup | Update the trash bin auto-clearing setting |
| [**change_default_access_rights**](FilesSettingsApi.md#change_default_access_rights) | **PUT** /api/2.0/files/settings/dafaultaccessrights | Change the default access rights |
| [**change_delete_confirm**](FilesSettingsApi.md#change_delete_confirm) | **PUT** /api/2.0/files/changedeleteconfrim | Confirm the file deletion |
| [**change_download_zip_from_body**](FilesSettingsApi.md#change_download_zip_from_body) | **PUT** /api/2.0/files/settings/downloadtargz | Change the archive format (using body parameters) |
| [**check_doc_service_url**](FilesSettingsApi.md#check_doc_service_url) | **PUT** /api/2.0/files/docservice | Check the document service URL |
| [**display_file_extension**](FilesSettingsApi.md#display_file_extension) | **PUT** /api/2.0/files/displayfileextension | Display a file extension |
| [**display_recent**](FilesSettingsApi.md#display_recent) | **PUT** /api/2.0/files/displayrecent | Display the Recent folder |
| [**external_share**](FilesSettingsApi.md#external_share) | **PUT** /api/2.0/files/settings/external | Change the external sharing ability |
| [**external_share_social_media**](FilesSettingsApi.md#external_share_social_media) | **PUT** /api/2.0/files/settings/externalsocialmedia | Change the external sharing ability on social networks |
| [**forcesave**](FilesSettingsApi.md#forcesave) | **PUT** /api/2.0/files/forcesave | Change the forcesaving ability |
| [**get_automatically_clean_up**](FilesSettingsApi.md#get_automatically_clean_up) | **GET** /api/2.0/files/settings/autocleanup | Get the trash bin auto-clearing setting |
| [**get_default_templates**](FilesSettingsApi.md#get_default_templates) | **GET** /api/2.0/files/settings/defaulttemplate | Get the default template setting |
| [**get_doc_service_url**](FilesSettingsApi.md#get_doc_service_url) | **GET** /api/2.0/files/docservice | Get the document service URL |
| [**get_files_module**](FilesSettingsApi.md#get_files_module) | **GET** /api/2.0/files/info | Get the Documents information |
| [**get_files_settings**](FilesSettingsApi.md#get_files_settings) | **GET** /api/2.0/files/settings | Get file settings |
| [**hide_confirm_cancel_operation**](FilesSettingsApi.md#hide_confirm_cancel_operation) | **PUT** /api/2.0/files/hideconfirmcanceloperation | Hide confirmation dialog when canceling operations |
| [**hide_confirm_convert**](FilesSettingsApi.md#hide_confirm_convert) | **PUT** /api/2.0/files/hideconfirmconvert | Hide the confirmation dialog when converting |
| [**hide_confirm_room_lifetime**](FilesSettingsApi.md#hide_confirm_room_lifetime) | **PUT** /api/2.0/files/hideconfirmroomlifetime | Hide confirmation dialog when changing room lifetime settings |
| [**is_available_privacy_room_settings**](FilesSettingsApi.md#is_available_privacy_room_settings) | **GET** /api/2.0/files/@privacy/available | Check the Private Room availability |
| [**keep_new_file_name**](FilesSettingsApi.md#keep_new_file_name) | **PUT** /api/2.0/files/keepnewfilename | Ask a new file name |
| [**reset_default_template**](FilesSettingsApi.md#reset_default_template) | **DELETE** /api/2.0/files/settings/defaulttemplate | Reset the default template setting |
| [**set_default_template**](FilesSettingsApi.md#set_default_template) | **PUT** /api/2.0/files/settings/defaulttemplate | Change the default template setting |
| [**set_open_editor_in_same_tab**](FilesSettingsApi.md#set_open_editor_in_same_tab) | **PUT** /api/2.0/files/settings/openeditorinsametab | Open document in the same browser tab |
| [**set_organize_rooms_grouping**](FilesSettingsApi.md#set_organize_rooms_grouping) | **PUT** /api/2.0/files/settings/organizegrouping | Organize rooms grouping |
| [**store_forcesave**](FilesSettingsApi.md#store_forcesave) | **PUT** /api/2.0/files/storeforcesave | Change the ability to store the forcesaved files |
| [**store_original**](FilesSettingsApi.md#store_original) | **PUT** /api/2.0/files/storeoriginal | Change the ability to upload original formats |
| [**update_file_if_exist**](FilesSettingsApi.md#update_file_if_exist) | **PUT** /api/2.0/files/updateifexist | Update a file version if it exists |
| [**upload_default_template**](FilesSettingsApi.md#upload_default_template) | **POST** /api/2.0/files/settings/defaulttemplate | Upload a file as the default template setting |


## change_access_to_thirdparty

> <BooleanWrapper> change_access_to_thirdparty(opts)

Change the third-party settings access

Changes the access to the third-party settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-access-to-thirdparty/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  settings_request_dto: DocspaceApiSdk::SettingsRequestDto.new # SettingsRequestDto | 
}

begin
  # Change the third-party settings access
  result = api_instance.change_access_to_thirdparty(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->change_access_to_thirdparty: #{e}"
end
```

#### Using the change_access_to_thirdparty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> change_access_to_thirdparty_with_http_info(opts)

```ruby
begin
  # Change the third-party settings access
  data, status_code, headers = api_instance.change_access_to_thirdparty_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->change_access_to_thirdparty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings_request_dto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_automatically_clean_up

> <AutoCleanUpDataWrapper> change_automatically_clean_up(opts)

Update the trash bin auto-clearing setting

Updates the trash bin auto-clearing setting.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-automatically-clean-up/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  auto_cleanup_request_dto: DocspaceApiSdk::AutoCleanupRequestDto.new # AutoCleanupRequestDto | 
}

begin
  # Update the trash bin auto-clearing setting
  result = api_instance.change_automatically_clean_up(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->change_automatically_clean_up: #{e}"
end
```

#### Using the change_automatically_clean_up_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutoCleanUpDataWrapper>, Integer, Hash)> change_automatically_clean_up_with_http_info(opts)

```ruby
begin
  # Update the trash bin auto-clearing setting
  data, status_code, headers = api_instance.change_automatically_clean_up_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutoCleanUpDataWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->change_automatically_clean_up_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auto_cleanup_request_dto** | [**AutoCleanupRequestDto**](AutoCleanupRequestDto.md) |  | [optional] |

### Return type

[**AutoCleanUpDataWrapper**](AutoCleanUpDataWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_default_access_rights

> <FileShareArrayWrapper> change_default_access_rights(opts)

Change the default access rights

Changes the default access rights in the sharing settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-default-access-rights/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  request_body: [0] # Array<Integer> | Sharing rights (None, ReadWrite, Read, Restrict, Varies, Review, Comment, FillForms, CustomFilter, RoomAdmin, Editing, Collaborator).
}

begin
  # Change the default access rights
  result = api_instance.change_default_access_rights(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->change_default_access_rights: #{e}"
end
```

#### Using the change_default_access_rights_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> change_default_access_rights_with_http_info(opts)

```ruby
begin
  # Change the default access rights
  data, status_code, headers = api_instance.change_default_access_rights_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->change_default_access_rights_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Array&lt;Integer&gt;**](Integer.md) | Sharing rights (None, ReadWrite, Read, Restrict, Varies, Review, Comment, FillForms, CustomFilter, RoomAdmin, Editing, Collaborator). | [optional] |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_delete_confirm

> <BooleanWrapper> change_delete_confirm(opts)

Confirm the file deletion

Specifies whether to confirm the file deletion or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-delete-confirm/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  settings_request_dto: DocspaceApiSdk::SettingsRequestDto.new # SettingsRequestDto | 
}

begin
  # Confirm the file deletion
  result = api_instance.change_delete_confirm(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->change_delete_confirm: #{e}"
end
```

#### Using the change_delete_confirm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> change_delete_confirm_with_http_info(opts)

```ruby
begin
  # Confirm the file deletion
  data, status_code, headers = api_instance.change_delete_confirm_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->change_delete_confirm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings_request_dto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_download_zip_from_body

> <ICompressWrapper> change_download_zip_from_body(opts)

Change the archive format (using body parameters)

Changes the format of the downloaded archive from .zip to .tar.gz. This method uses the body parameters.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-download-zip-from-body/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  display_request_dto: DocspaceApiSdk::DisplayRequestDto.new # DisplayRequestDto | 
}

begin
  # Change the archive format (using body parameters)
  result = api_instance.change_download_zip_from_body(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->change_download_zip_from_body: #{e}"
end
```

#### Using the change_download_zip_from_body_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ICompressWrapper>, Integer, Hash)> change_download_zip_from_body_with_http_info(opts)

```ruby
begin
  # Change the archive format (using body parameters)
  data, status_code, headers = api_instance.change_download_zip_from_body_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ICompressWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->change_download_zip_from_body_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_request_dto** | [**DisplayRequestDto**](DisplayRequestDto.md) |  | [optional] |

### Return type

[**ICompressWrapper**](ICompressWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## check_doc_service_url

> <DocServiceUrlWrapper> check_doc_service_url(opts)

Check the document service URL

Checks the document service location URL.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-doc-service-url/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  check_doc_service_url_request_dto: DocspaceApiSdk::CheckDocServiceUrlRequestDto.new({doc_service_url: 'https://documentserver.example.com'}) # CheckDocServiceUrlRequestDto | 
}

begin
  # Check the document service URL
  result = api_instance.check_doc_service_url(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->check_doc_service_url: #{e}"
end
```

#### Using the check_doc_service_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocServiceUrlWrapper>, Integer, Hash)> check_doc_service_url_with_http_info(opts)

```ruby
begin
  # Check the document service URL
  data, status_code, headers = api_instance.check_doc_service_url_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocServiceUrlWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->check_doc_service_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_doc_service_url_request_dto** | [**CheckDocServiceUrlRequestDto**](CheckDocServiceUrlRequestDto.md) |  | [optional] |

### Return type

[**DocServiceUrlWrapper**](DocServiceUrlWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## display_file_extension

> <BooleanWrapper> display_file_extension(opts)

Display a file extension

Specifies whether to display a file extension or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/display-file-extension/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  settings_request_dto: DocspaceApiSdk::SettingsRequestDto.new # SettingsRequestDto | 
}

begin
  # Display a file extension
  result = api_instance.display_file_extension(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->display_file_extension: #{e}"
end
```

#### Using the display_file_extension_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> display_file_extension_with_http_info(opts)

```ruby
begin
  # Display a file extension
  data, status_code, headers = api_instance.display_file_extension_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->display_file_extension_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings_request_dto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## display_recent

> <BooleanWrapper> display_recent(opts)

Display the Recent folder

Displays the Recent folder.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/display-recent/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  display_request_dto: DocspaceApiSdk::DisplayRequestDto.new # DisplayRequestDto | 
}

begin
  # Display the Recent folder
  result = api_instance.display_recent(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->display_recent: #{e}"
end
```

#### Using the display_recent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> display_recent_with_http_info(opts)

```ruby
begin
  # Display the Recent folder
  data, status_code, headers = api_instance.display_recent_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->display_recent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_request_dto** | [**DisplayRequestDto**](DisplayRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## external_share

> <BooleanWrapper> external_share(opts)

Change the external sharing ability

Changes the ability to share a file externally.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/external-share/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  display_request_dto: DocspaceApiSdk::DisplayRequestDto.new # DisplayRequestDto | 
}

begin
  # Change the external sharing ability
  result = api_instance.external_share(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->external_share: #{e}"
end
```

#### Using the external_share_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> external_share_with_http_info(opts)

```ruby
begin
  # Change the external sharing ability
  data, status_code, headers = api_instance.external_share_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->external_share_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_request_dto** | [**DisplayRequestDto**](DisplayRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## external_share_social_media

> <BooleanWrapper> external_share_social_media(opts)

Change the external sharing ability on social networks

Changes the ability to share a file externally on social networks.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/external-share-social-media/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  display_request_dto: DocspaceApiSdk::DisplayRequestDto.new # DisplayRequestDto | 
}

begin
  # Change the external sharing ability on social networks
  result = api_instance.external_share_social_media(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->external_share_social_media: #{e}"
end
```

#### Using the external_share_social_media_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> external_share_social_media_with_http_info(opts)

```ruby
begin
  # Change the external sharing ability on social networks
  data, status_code, headers = api_instance.external_share_social_media_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->external_share_social_media_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_request_dto** | [**DisplayRequestDto**](DisplayRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## forcesave

> <BooleanWrapper> forcesave

Change the forcesaving ability

Specifies if the file forcesaving is enabled or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/forcesave/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new

begin
  # Change the forcesaving ability
  result = api_instance.forcesave
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->forcesave: #{e}"
end
```

#### Using the forcesave_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> forcesave_with_http_info

```ruby
begin
  # Change the forcesaving ability
  data, status_code, headers = api_instance.forcesave_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->forcesave_with_http_info: #{e}"
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


## get_automatically_clean_up

> <AutoCleanUpDataWrapper> get_automatically_clean_up

Get the trash bin auto-clearing setting

Returns the trash bin auto-clearing setting.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-automatically-clean-up/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new

begin
  # Get the trash bin auto-clearing setting
  result = api_instance.get_automatically_clean_up
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->get_automatically_clean_up: #{e}"
end
```

#### Using the get_automatically_clean_up_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AutoCleanUpDataWrapper>, Integer, Hash)> get_automatically_clean_up_with_http_info

```ruby
begin
  # Get the trash bin auto-clearing setting
  data, status_code, headers = api_instance.get_automatically_clean_up_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AutoCleanUpDataWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->get_automatically_clean_up_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AutoCleanUpDataWrapper**](AutoCleanUpDataWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_default_templates

> <DefaultTemplateSettingsWrapper> get_default_templates

Get the default template setting

Returns the default template setting.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-default-templates/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new

begin
  # Get the default template setting
  result = api_instance.get_default_templates
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->get_default_templates: #{e}"
end
```

#### Using the get_default_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DefaultTemplateSettingsWrapper>, Integer, Hash)> get_default_templates_with_http_info

```ruby
begin
  # Get the default template setting
  data, status_code, headers = api_instance.get_default_templates_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DefaultTemplateSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->get_default_templates_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DefaultTemplateSettingsWrapper**](DefaultTemplateSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_doc_service_url

> <DocServiceUrlWrapper> get_doc_service_url(opts)

Get the document service URL

Returns the URL address of the connected editors.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-doc-service-url/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  version: true # Boolean | Specifies whether to return the editor version or not.
}

begin
  # Get the document service URL
  result = api_instance.get_doc_service_url(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->get_doc_service_url: #{e}"
end
```

#### Using the get_doc_service_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocServiceUrlWrapper>, Integer, Hash)> get_doc_service_url_with_http_info(opts)

```ruby
begin
  # Get the document service URL
  data, status_code, headers = api_instance.get_doc_service_url_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocServiceUrlWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->get_doc_service_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Boolean** | Specifies whether to return the editor version or not. | [optional] |

### Return type

[**DocServiceUrlWrapper**](DocServiceUrlWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_files_module

> <ModuleWrapper> get_files_module

Get the Documents information

Returns the information about the Documents module.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-module/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new

begin
  # Get the Documents information
  result = api_instance.get_files_module
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->get_files_module: #{e}"
end
```

#### Using the get_files_module_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModuleWrapper>, Integer, Hash)> get_files_module_with_http_info

```ruby
begin
  # Get the Documents information
  data, status_code, headers = api_instance.get_files_module_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModuleWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->get_files_module_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ModuleWrapper**](ModuleWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_files_settings

> <FilesSettingsWrapper> get_files_settings

Get file settings

Returns all the file settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-files-settings/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::SettingsApi.new

begin
  # Get file settings
  result = api_instance.get_files_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->get_files_settings: #{e}"
end
```

#### Using the get_files_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilesSettingsWrapper>, Integer, Hash)> get_files_settings_with_http_info

```ruby
begin
  # Get file settings
  data, status_code, headers = api_instance.get_files_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilesSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->get_files_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**FilesSettingsWrapper**](FilesSettingsWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## hide_confirm_cancel_operation

> <BooleanWrapper> hide_confirm_cancel_operation(opts)

Hide confirmation dialog when canceling operations

Hides the confirmation dialog when canceling operations.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/hide-confirm-cancel-operation/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  settings_request_dto: DocspaceApiSdk::SettingsRequestDto.new # SettingsRequestDto | 
}

begin
  # Hide confirmation dialog when canceling operations
  result = api_instance.hide_confirm_cancel_operation(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->hide_confirm_cancel_operation: #{e}"
end
```

#### Using the hide_confirm_cancel_operation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> hide_confirm_cancel_operation_with_http_info(opts)

```ruby
begin
  # Hide confirmation dialog when canceling operations
  data, status_code, headers = api_instance.hide_confirm_cancel_operation_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->hide_confirm_cancel_operation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings_request_dto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## hide_confirm_convert

> <BooleanWrapper> hide_confirm_convert(opts)

Hide the confirmation dialog when converting

Hides the confirmation dialog for saving the file copy in the original format when converting a file.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/hide-confirm-convert/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  hide_confirm_convert_request_dto: DocspaceApiSdk::HideConfirmConvertRequestDto.new # HideConfirmConvertRequestDto | 
}

begin
  # Hide the confirmation dialog when converting
  result = api_instance.hide_confirm_convert(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->hide_confirm_convert: #{e}"
end
```

#### Using the hide_confirm_convert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> hide_confirm_convert_with_http_info(opts)

```ruby
begin
  # Hide the confirmation dialog when converting
  data, status_code, headers = api_instance.hide_confirm_convert_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->hide_confirm_convert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hide_confirm_convert_request_dto** | [**HideConfirmConvertRequestDto**](HideConfirmConvertRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## hide_confirm_room_lifetime

> <BooleanWrapper> hide_confirm_room_lifetime(opts)

Hide confirmation dialog when changing room lifetime settings

Hides the confirmation dialog when changing the room lifetime settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/hide-confirm-room-lifetime/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  settings_request_dto: DocspaceApiSdk::SettingsRequestDto.new # SettingsRequestDto | 
}

begin
  # Hide confirmation dialog when changing room lifetime settings
  result = api_instance.hide_confirm_room_lifetime(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->hide_confirm_room_lifetime: #{e}"
end
```

#### Using the hide_confirm_room_lifetime_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> hide_confirm_room_lifetime_with_http_info(opts)

```ruby
begin
  # Hide confirmation dialog when changing room lifetime settings
  data, status_code, headers = api_instance.hide_confirm_room_lifetime_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->hide_confirm_room_lifetime_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings_request_dto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## is_available_privacy_room_settings

> <BooleanWrapper> is_available_privacy_room_settings

Check the Private Room availability

Checks if the Private Room settings are available or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/is-available-privacy-room-settings/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new

begin
  # Check the Private Room availability
  result = api_instance.is_available_privacy_room_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->is_available_privacy_room_settings: #{e}"
end
```

#### Using the is_available_privacy_room_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> is_available_privacy_room_settings_with_http_info

```ruby
begin
  # Check the Private Room availability
  data, status_code, headers = api_instance.is_available_privacy_room_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->is_available_privacy_room_settings_with_http_info: #{e}"
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


## keep_new_file_name

> <BooleanWrapper> keep_new_file_name(opts)

Ask a new file name

Specifies whether to ask a user for a file name on creation or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/keep-new-file-name/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  settings_request_dto: DocspaceApiSdk::SettingsRequestDto.new # SettingsRequestDto | 
}

begin
  # Ask a new file name
  result = api_instance.keep_new_file_name(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->keep_new_file_name: #{e}"
end
```

#### Using the keep_new_file_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> keep_new_file_name_with_http_info(opts)

```ruby
begin
  # Ask a new file name
  data, status_code, headers = api_instance.keep_new_file_name_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->keep_new_file_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings_request_dto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reset_default_template

> <DefaultTemplateSettingsWrapper> reset_default_template(opts)

Reset the default template setting

Resets the default template setting.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-default-template/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  default_template_settings_reset_request_dto: DocspaceApiSdk::DefaultTemplateSettingsResetRequestDto.new({file_extension: '.docx'}) # DefaultTemplateSettingsResetRequestDto | 
}

begin
  # Reset the default template setting
  result = api_instance.reset_default_template(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->reset_default_template: #{e}"
end
```

#### Using the reset_default_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DefaultTemplateSettingsWrapper>, Integer, Hash)> reset_default_template_with_http_info(opts)

```ruby
begin
  # Reset the default template setting
  data, status_code, headers = api_instance.reset_default_template_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DefaultTemplateSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->reset_default_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_template_settings_reset_request_dto** | [**DefaultTemplateSettingsResetRequestDto**](DefaultTemplateSettingsResetRequestDto.md) |  | [optional] |

### Return type

[**DefaultTemplateSettingsWrapper**](DefaultTemplateSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_default_template

> <DefaultTemplateSettingsWrapper> set_default_template(opts)

Change the default template setting

Changes the default template setting.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-template/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  default_template_settings_request_dto: DocspaceApiSdk::DefaultTemplateSettingsRequestDto.new({selected_file: nil, file_extension: '.docx'}) # DefaultTemplateSettingsRequestDto | 
}

begin
  # Change the default template setting
  result = api_instance.set_default_template(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->set_default_template: #{e}"
end
```

#### Using the set_default_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DefaultTemplateSettingsWrapper>, Integer, Hash)> set_default_template_with_http_info(opts)

```ruby
begin
  # Change the default template setting
  data, status_code, headers = api_instance.set_default_template_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DefaultTemplateSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->set_default_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_template_settings_request_dto** | [**DefaultTemplateSettingsRequestDto**](DefaultTemplateSettingsRequestDto.md) |  | [optional] |

### Return type

[**DefaultTemplateSettingsWrapper**](DefaultTemplateSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_open_editor_in_same_tab

> <BooleanWrapper> set_open_editor_in_same_tab(opts)

Open document in the same browser tab

Changes the ability to open the document in the same browser tab.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-open-editor-in-same-tab/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  settings_request_dto: DocspaceApiSdk::SettingsRequestDto.new # SettingsRequestDto | 
}

begin
  # Open document in the same browser tab
  result = api_instance.set_open_editor_in_same_tab(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->set_open_editor_in_same_tab: #{e}"
end
```

#### Using the set_open_editor_in_same_tab_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> set_open_editor_in_same_tab_with_http_info(opts)

```ruby
begin
  # Open document in the same browser tab
  data, status_code, headers = api_instance.set_open_editor_in_same_tab_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->set_open_editor_in_same_tab_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings_request_dto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_organize_rooms_grouping

> <BooleanWrapper> set_organize_rooms_grouping(opts)

Organize rooms grouping

Changes the setting that allows the user to organize the grouping of rooms.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-organize-rooms-grouping/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  settings_request_dto: DocspaceApiSdk::SettingsRequestDto.new # SettingsRequestDto | 
}

begin
  # Organize rooms grouping
  result = api_instance.set_organize_rooms_grouping(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->set_organize_rooms_grouping: #{e}"
end
```

#### Using the set_organize_rooms_grouping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> set_organize_rooms_grouping_with_http_info(opts)

```ruby
begin
  # Organize rooms grouping
  data, status_code, headers = api_instance.set_organize_rooms_grouping_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->set_organize_rooms_grouping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings_request_dto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## store_forcesave

> <BooleanWrapper> store_forcesave

Change the ability to store the forcesaved files

Changes the ability to store the forcesaved file versions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/store-forcesave/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new

begin
  # Change the ability to store the forcesaved files
  result = api_instance.store_forcesave
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->store_forcesave: #{e}"
end
```

#### Using the store_forcesave_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> store_forcesave_with_http_info

```ruby
begin
  # Change the ability to store the forcesaved files
  data, status_code, headers = api_instance.store_forcesave_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->store_forcesave_with_http_info: #{e}"
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


## store_original

> <BooleanWrapper> store_original(opts)

Change the ability to upload original formats

Changes the ability to upload documents in the original formats as well.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/store-original/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  settings_request_dto: DocspaceApiSdk::SettingsRequestDto.new # SettingsRequestDto | 
}

begin
  # Change the ability to upload original formats
  result = api_instance.store_original(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->store_original: #{e}"
end
```

#### Using the store_original_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> store_original_with_http_info(opts)

```ruby
begin
  # Change the ability to upload original formats
  data, status_code, headers = api_instance.store_original_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->store_original_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings_request_dto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_file_if_exist

> <BooleanWrapper> update_file_if_exist(opts)

Update a file version if it exists

Updates a file version if a file with such a name already exists.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-file-if-exist/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
opts = {
  settings_request_dto: DocspaceApiSdk::SettingsRequestDto.new # SettingsRequestDto | 
}

begin
  # Update a file version if it exists
  result = api_instance.update_file_if_exist(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->update_file_if_exist: #{e}"
end
```

#### Using the update_file_if_exist_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> update_file_if_exist_with_http_info(opts)

```ruby
begin
  # Update a file version if it exists
  data, status_code, headers = api_instance.update_file_if_exist_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->update_file_if_exist_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings_request_dto** | [**SettingsRequestDto**](SettingsRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_default_template

> <DefaultTemplateSettingsWrapper> upload_default_template(file_extension, file)

Upload a file as the default template setting

Uploads a file to use as the default template setting.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/upload-default-template/).

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

api_instance = DocspaceApiSdk::Files::SettingsApi.new
file_extension = '.docx' # String | File extension of a template to replace
file = File.new('/path/to/some/file') # File | File to replace template with

begin
  # Upload a file as the default template setting
  result = api_instance.upload_default_template(file_extension, file)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->upload_default_template: #{e}"
end
```

#### Using the upload_default_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DefaultTemplateSettingsWrapper>, Integer, Hash)> upload_default_template_with_http_info(file_extension, file)

```ruby
begin
  # Upload a file as the default template setting
  data, status_code, headers = api_instance.upload_default_template_with_http_info(file_extension, file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DefaultTemplateSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SettingsApi->upload_default_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_extension** | **String** | File extension of a template to replace |  |
| **file** | **File** | File to replace template with |  |

### Return type

[**DefaultTemplateSettingsWrapper**](DefaultTemplateSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

