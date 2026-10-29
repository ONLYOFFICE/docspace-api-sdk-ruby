# DocspaceApiSdk::FilesMetadataApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**assign_file_templates**](FilesMetadataApi.md#assign_file_templates) | **PUT** /api/2.0/files/metadata/file/{fileId}/templates | Assign templates to a file |
| [**assign_folder_templates**](FilesMetadataApi.md#assign_folder_templates) | **PUT** /api/2.0/files/metadata/folder/{folderId}/templates | Assign templates to a folder |
| [**create_field**](FilesMetadataApi.md#create_field) | **POST** /api/2.0/files/metadata/templates/{templateId}/fields | Add a metadata field |
| [**create_template**](FilesMetadataApi.md#create_template) | **POST** /api/2.0/files/metadata/templates | Create a metadata template |
| [**delete_field**](FilesMetadataApi.md#delete_field) | **DELETE** /api/2.0/files/metadata/templates/{templateId}/fields/{fieldId} | Delete a metadata field |
| [**delete_template**](FilesMetadataApi.md#delete_template) | **DELETE** /api/2.0/files/metadata/templates/{templateId} | Delete a metadata template |
| [**get_cascade_progress**](FilesMetadataApi.md#get_cascade_progress) | **GET** /api/2.0/files/metadata/folder/{folderId}/templates/progress | Get cascade progress |
| [**get_file_metadata**](FilesMetadataApi.md#get_file_metadata) | **GET** /api/2.0/files/metadata/file/{fileId} | Get file metadata |
| [**get_folder_metadata**](FilesMetadataApi.md#get_folder_metadata) | **GET** /api/2.0/files/metadata/folder/{folderId} | Get folder metadata |
| [**get_template**](FilesMetadataApi.md#get_template) | **GET** /api/2.0/files/metadata/templates/{templateId} | Get a metadata template |
| [**get_templates**](FilesMetadataApi.md#get_templates) | **GET** /api/2.0/files/metadata/templates | Get metadata templates |
| [**set_file_custom_fields**](FilesMetadataApi.md#set_file_custom_fields) | **PUT** /api/2.0/files/metadata/file/{fileId}/customfields | Set file custom fields |
| [**set_file_values**](FilesMetadataApi.md#set_file_values) | **PUT** /api/2.0/files/metadata/file/{fileId}/values | Set file metadata values |
| [**set_folder_custom_fields**](FilesMetadataApi.md#set_folder_custom_fields) | **PUT** /api/2.0/files/metadata/folder/{folderId}/customfields | Set folder custom fields |
| [**set_folder_values**](FilesMetadataApi.md#set_folder_values) | **PUT** /api/2.0/files/metadata/folder/{folderId}/values | Set folder metadata values |
| [**unassign_file_template**](FilesMetadataApi.md#unassign_file_template) | **DELETE** /api/2.0/files/metadata/file/{fileId}/templates/{templateId} | Unassign a template from a file |
| [**unassign_folder_template**](FilesMetadataApi.md#unassign_folder_template) | **DELETE** /api/2.0/files/metadata/folder/{folderId}/templates/{templateId} | Unassign a template from a folder |
| [**update_field**](FilesMetadataApi.md#update_field) | **PUT** /api/2.0/files/metadata/templates/{templateId}/fields/{fieldId} | Update a metadata field |
| [**update_folder_template**](FilesMetadataApi.md#update_folder_template) | **PUT** /api/2.0/files/metadata/folder/{folderId}/templates/{templateId} | Update a template assignment on a folder |
| [**update_template**](FilesMetadataApi.md#update_template) | **PUT** /api/2.0/files/metadata/templates/{templateId} | Update a metadata template |


## assign_file_templates

> assign_file_templates(file_id, assign_metadata_templates)

Assign templates to a file

Assigns one or more metadata templates to a file, so its fields can be filled with  `PUT api/2.0/files/metadata/file/{fileId}/values`. The caller needs the right to edit the file. The assignment writes  no values and is idempotent: a template the file already carries is skipped, the others are added, an empty list  changes nothing. The call finishes in the request, nothing runs in the background. A template a cascading folder above  the file already provides stays inherited. A file the caller cannot edit is answered with 403; a file, or a template,  that does not exist with 404. To take a template off the file use  `DELETE api/2.0/files/metadata/file/{fileId}/templates/{templateId}`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/assign-file-templates/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
file_id = 1 # Integer | The file ID.
assign_metadata_templates = DocspaceApiSdk::AssignMetadataTemplates.new({template_ids: [1,  2]}) # AssignMetadataTemplates | The parameters for assigning templates.

begin
  # Assign templates to a file
  api_instance.assign_file_templates(file_id, assign_metadata_templates)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->assign_file_templates: #{e}"
end
```

#### Using the assign_file_templates_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> assign_file_templates_with_http_info(file_id, assign_metadata_templates)

```ruby
begin
  # Assign templates to a file
  data, status_code, headers = api_instance.assign_file_templates_with_http_info(file_id, assign_metadata_templates)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->assign_file_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID. |  |
| **assign_metadata_templates** | [**AssignMetadataTemplates**](AssignMetadataTemplates.md) | The parameters for assigning templates. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## assign_folder_templates

> <MetadataOperationWrapper> assign_folder_templates(folder_id, assign_metadata_templates)

Assign templates to a folder

Assigns one or more metadata templates to a folder or a room and, with `cascade` set, propagates them to every  folder and file below it. The caller needs the right to create in the folder (a room manager or a content  creator); for a room that is its manager. The assignment itself finishes in the request and writes no values. The  cascade is asynchronous: a pass is queued that assigns the templates to the whole subtree and copies the values the  folder holds, and the answer is that pass with the `templateIds` it propagates. Poll  `GET api/2.0/files/metadata/folder/{folderId}/templates/progress` until `isCompleted` is true; a failed pass  reports its `error` there. The `conflictResolveType` decides what happens to a value an entry already holds: `Skip`  keeps it, `Overwrite` replaces it with the folder's value. A folder inside the subtree that cascades the same  template keeps its own values for its content. Without a cascade the answer is a completed operation without an identifier;  a template that already cascades keeps cascading, it is turned off with  `PUT api/2.0/files/metadata/folder/{folderId}/templates/{templateId}`. A caller without the right to create in the  folder is answered with 403; a folder, or a template, that does not exist with 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/assign-folder-templates/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
folder_id = 1 # Integer | The folder ID.
assign_metadata_templates = DocspaceApiSdk::AssignMetadataTemplates.new({template_ids: [1,  2]}) # AssignMetadataTemplates | The parameters for assigning templates.

begin
  # Assign templates to a folder
  result = api_instance.assign_folder_templates(folder_id, assign_metadata_templates)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->assign_folder_templates: #{e}"
end
```

#### Using the assign_folder_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetadataOperationWrapper>, Integer, Hash)> assign_folder_templates_with_http_info(folder_id, assign_metadata_templates)

```ruby
begin
  # Assign templates to a folder
  data, status_code, headers = api_instance.assign_folder_templates_with_http_info(folder_id, assign_metadata_templates)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetadataOperationWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->assign_folder_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID. |  |
| **assign_metadata_templates** | [**AssignMetadataTemplates**](AssignMetadataTemplates.md) | The parameters for assigning templates. |  |

### Return type

[**MetadataOperationWrapper**](MetadataOperationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_field

> <MetadataFieldWrapper> create_field(template_id, metadata_field_request)

Add a metadata field

Adds a field to an existing metadata template. Only a DocSpace admin can change templates. The field name must be  unique within the template regardless of case and at most 255 characters, the type must be one of the published ones,  a choice field needs at least one option and unique option values, a field of another type takes no options. A  field without `order` is placed after the last field of the template. The entries the template is already  assigned to get the field without a value: nothing is written on them and no cascade runs. The answer is the  created field with its generated option identifiers. A template that does not exist is answered with 404, an  invalid field with 400.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-field/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
template_id = 1 # Integer | The template ID.
metadata_field_request = DocspaceApiSdk::MetadataFieldRequest.new # MetadataFieldRequest | The parameters of the field.

begin
  # Add a metadata field
  result = api_instance.create_field(template_id, metadata_field_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->create_field: #{e}"
end
```

#### Using the create_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetadataFieldWrapper>, Integer, Hash)> create_field_with_http_info(template_id, metadata_field_request)

```ruby
begin
  # Add a metadata field
  data, status_code, headers = api_instance.create_field_with_http_info(template_id, metadata_field_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetadataFieldWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->create_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | The template ID. |  |
| **metadata_field_request** | [**MetadataFieldRequest**](MetadataFieldRequest.md) | The parameters of the field. |  |

### Return type

[**MetadataFieldWrapper**](MetadataFieldWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_template

> <MetadataTemplateWrapper> create_template(opts)

Create a metadata template

Creates a metadata template for the whole portal, optionally with its fields in one call. Only a DocSpace admin can  create templates. The template name must be unique on the portal regardless of case, at most 255 characters, and the  name `System` is reserved. Every field needs a name unique within the template and a type from the published set; a  choice field requires at least one option and the options must be unique, a field of another type takes no options.  A field without `order` is placed after the fields that have one, in the order of the request. The template and  its fields are stored together: an invalid field rejects the whole request and nothing is created.  The answer is the created template with its fields and the generated option identifiers, which the values written  with `PUT api/2.0/files/metadata/file/{fileId}/values` refer to. A name already in use or an invalid field is  answered with 400; the request of a member who is not a DocSpace admin with 403.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-template/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
opts = {
  create_metadata_template_request_dto: DocspaceApiSdk::CreateMetadataTemplateRequestDto.new({name: 'Contracts'}) # CreateMetadataTemplateRequestDto | 
}

begin
  # Create a metadata template
  result = api_instance.create_template(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->create_template: #{e}"
end
```

#### Using the create_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetadataTemplateWrapper>, Integer, Hash)> create_template_with_http_info(opts)

```ruby
begin
  # Create a metadata template
  data, status_code, headers = api_instance.create_template_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetadataTemplateWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->create_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_metadata_template_request_dto** | [**CreateMetadataTemplateRequestDto**](CreateMetadataTemplateRequestDto.md) |  | [optional] |

### Return type

[**MetadataTemplateWrapper**](MetadataTemplateWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_field

> delete_field(template_id, field_id)

Delete a metadata field

Deletes a metadata field from its template together with every value written for it on any file, folder or room of  the portal. Only a DocSpace admin can change templates. The deletion is irreversible: the affected entries lose the  value at once, their search documents are rebuilt and the clients viewing them are told to refresh. The template and  its other fields stay as they are. A field that does not exist, or that belongs to another template than the one in  the route, is answered with 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-field/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
template_id = 1 # Integer | The template ID.
field_id = 1 # Integer | The field ID.

begin
  # Delete a metadata field
  api_instance.delete_field(template_id, field_id)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->delete_field: #{e}"
end
```

#### Using the delete_field_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_field_with_http_info(template_id, field_id)

```ruby
begin
  # Delete a metadata field
  data, status_code, headers = api_instance.delete_field_with_http_info(template_id, field_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->delete_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | The template ID. |  |
| **field_id** | **Integer** | The field ID. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_template

> delete_template(template_id)

Delete a metadata template

Deletes a metadata template together with its fields, its assignments and every value written for its fields on any  file, folder or room of the portal. Only a DocSpace admin can delete templates. The deletion is irreversible and there  is no confirmation: the affected entries lose the template at once, their search documents are rebuilt and the clients  viewing them are told to refresh. A template that does not exist, or was already deleted, is answered with 404.  To take the template off a single entry and keep it for the others use  `DELETE api/2.0/files/metadata/file/{fileId}/templates/{templateId}` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-template/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
template_id = 1 # Integer | The template ID.

begin
  # Delete a metadata template
  api_instance.delete_template(template_id)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->delete_template: #{e}"
end
```

#### Using the delete_template_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_template_with_http_info(template_id)

```ruby
begin
  # Delete a metadata template
  data, status_code, headers = api_instance.delete_template_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->delete_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | The template ID. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cascade_progress

> <MetadataOperationWrapper> get_cascade_progress(folder_id)

Get cascade progress

Reports the cascade pass of a folder started by `PUT api/2.0/files/metadata/folder/{folderId}/templates` or by  `PUT api/2.0/files/metadata/folder/{folderId}/templates/{templateId}`: the running one, otherwise the most recent  one. The caller needs read access to the folder, the call is read-only. `templateIds` names the templates the pass  propagates, so a client can show the progress next to the right template; `progress` is the share of the subtree  processed, `isCompleted` tells the pass is over and `error` carries the reason of a failed one; a completed pass  without an error has written every template and value it was asked for. A folder that never cascaded, or whose  passes were already dropped, is answered with a completed operation without an identifier and with empty  `templateIds` rather than with an error. A folder that does not exist is answered with 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-cascade-progress/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
folder_id = 1 # Integer | The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.

begin
  # Get cascade progress
  result = api_instance.get_cascade_progress(folder_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->get_cascade_progress: #{e}"
end
```

#### Using the get_cascade_progress_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetadataOperationWrapper>, Integer, Hash)> get_cascade_progress_with_http_info(folder_id)

```ruby
begin
  # Get cascade progress
  data, status_code, headers = api_instance.get_cascade_progress_with_http_info(folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetadataOperationWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->get_cascade_progress_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. |  |

### Return type

[**MetadataOperationWrapper**](MetadataOperationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_metadata

> <EntryMetadataWrapper> get_file_metadata(file_id)

Get file metadata

Returns the metadata of a file: the templates assigned to it, directly or inherited from a cascading folder above  it, each with its fields, and the custom text fields set on the file. The caller needs read access to the file: a  member of the portal, or an anonymous caller through an external link that grants access to the file or to a  folder above it, with the link key in the `Request-Token` header or in the `share` query parameter. The call is  read-only. A field carries its value inside it; a field the file holds no value for comes without a `value`.  A file never cascades, so every template reports `cascade` false and no `conflictResolveType`; whether it was  inherited from a folder above is not told apart from a direct assignment. The custom fields are name and value  pairs and are not part of any template. A file without metadata is answered with empty lists, not with an error.  The same shape is returned by `PUT api/2.0/files/metadata/file/{fileId}/values` after a write. A request with  neither a session nor a link key is answered with 401; a file the caller cannot read with 403, a file that does  not exist with 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-metadata/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
file_id = 10 # Integer | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string.

begin
  # Get file metadata
  result = api_instance.get_file_metadata(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->get_file_metadata: #{e}"
end
```

#### Using the get_file_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntryMetadataWrapper>, Integer, Hash)> get_file_metadata_with_http_info(file_id)

```ruby
begin
  # Get file metadata
  data, status_code, headers = api_instance.get_file_metadata_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntryMetadataWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->get_file_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file the operation addresses. Take the identifier from a listing such as `GET api/2.0/files/{folderId}`: a  file stored on the portal is numbered, while a file in a connected third-party account is named by an opaque  string. |  |

### Return type

[**EntryMetadataWrapper**](EntryMetadataWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_folder_metadata

> <EntryMetadataWrapper> get_folder_metadata(folder_id)

Get folder metadata

Returns the metadata of a folder or a room: the templates assigned to it, directly or inherited from a cascading  folder above it, each with its fields, and the custom text fields set on it. The caller needs read access to the  folder: a member of the portal, or an anonymous caller through an external link to the folder or to a folder  above it, with the link key in the `Request-Token` header or in the `share` query parameter. The call is  read-only. A field carries its value inside it; a field without a value on the folder comes without `value`. Each  template reports whether this folder cascades it to its content in `cascade`, with the rule of that cascade in  `conflictResolveType`, absent while it does not; an inherited template reports false unless this folder cascades it  on its own. The custom fields are name and value pairs outside any template. A folder without metadata is answered  with empty lists. The cascade is changed with `PUT api/2.0/files/metadata/folder/{folderId}/templates/{templateId}`.  A request with neither a session nor a link key is answered with 401; a folder the caller cannot read with 403, a  folder that does not exist with 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-metadata/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
folder_id = 1 # Integer | The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string.

begin
  # Get folder metadata
  result = api_instance.get_folder_metadata(folder_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->get_folder_metadata: #{e}"
end
```

#### Using the get_folder_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntryMetadataWrapper>, Integer, Hash)> get_folder_metadata_with_http_info(folder_id)

```ruby
begin
  # Get folder metadata
  data, status_code, headers = api_instance.get_folder_metadata_with_http_info(folder_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntryMetadataWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->get_folder_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder the operation acts on. Take the identifier from a listing such as `GET api/2.0/files/@root` or  `GET api/2.0/files/{folderId}`: a folder stored in the portal is numbered, while a folder in a connected  third-party account is named by an opaque string. |  |

### Return type

[**EntryMetadataWrapper**](EntryMetadataWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_template

> <MetadataTemplateWrapper> get_template(template_id)

Get a metadata template

Returns one metadata template with its fields, in their display order, and the options of its choice fields. Any  member of the portal can read a template, the call is read-only. Use it to resolve the template identifiers a file or  a folder reports in `assignedMetadataTemplates` into names and fields. A template that does not exist is answered  with 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-template/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
template_id = 1 # Integer | The template ID.

begin
  # Get a metadata template
  result = api_instance.get_template(template_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->get_template: #{e}"
end
```

#### Using the get_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetadataTemplateWrapper>, Integer, Hash)> get_template_with_http_info(template_id)

```ruby
begin
  # Get a metadata template
  data, status_code, headers = api_instance.get_template_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetadataTemplateWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->get_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | The template ID. |  |

### Return type

[**MetadataTemplateWrapper**](MetadataTemplateWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_templates

> <MetadataTemplateArrayWrapper> get_templates(opts)

Get metadata templates

Lists the metadata templates of the portal with their fields, the dictionary a file, a folder or a room is described  with. Any member of the portal can read it, the list is the same for everyone. The call is read-only. The templates  come back ordered by their creation, each with its fields in their display order and the choice options of the choice  fields; the `visible` parameter narrows the list to the templates shown in the pickers or to the hidden ones, without  it both are returned. The author and the last editor of a template come as user objects with the display name and  the avatar, so a list needs no lookup of its own per author. An empty list means the portal has no templates yet.  The custom text fields set on the entries are not templates and are not listed here: read them on the entry with  `GET api/2.0/files/metadata/file/{fileId}`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-templates/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
opts = {
  visible: true # Boolean | Filters the templates by their visibility.
}

begin
  # Get metadata templates
  result = api_instance.get_templates(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->get_templates: #{e}"
end
```

#### Using the get_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetadataTemplateArrayWrapper>, Integer, Hash)> get_templates_with_http_info(opts)

```ruby
begin
  # Get metadata templates
  data, status_code, headers = api_instance.get_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetadataTemplateArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->get_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **visible** | **Boolean** | Filters the templates by their visibility. | [optional] |

### Return type

[**MetadataTemplateArrayWrapper**](MetadataTemplateArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_file_custom_fields

> <CustomFieldValueArrayWrapper> set_file_custom_fields(file_id, set_custom_fields)

Set file custom fields

Sets the custom text fields of a file: free-form name and value pairs that need no template. The caller needs the  right to edit the file. A field is addressed by its name regardless of case: a listed name gets the value, a null or  empty value removes the field from the file, the names not listed are left alone, so a partial request is safe. A name  the portal has not seen yet creates the field for the whole portal, and a name no entry holds a value for any more is  dropped, so the set of names follows the values. A name is at most 255 characters, a value at most 8000, a name may  be listed once and a file holds at most 50 custom fields. The write finishes in the request; the values take part in  the free text search and in the `metadataFilters` of the listings. The answer is the custom fields of the file  after the write. An empty list, a blank, repeated or over-long name, an over-long value or more than 50 fields is  answered with 400; a file the caller cannot edit with 403; a file that does not exist with 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-custom-fields/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
file_id = 1 # Integer | The file ID.
set_custom_fields = DocspaceApiSdk::SetCustomFields.new({fields: [{name=Project code,  value=A-42},  {name=Client,  value=null}]}) # SetCustomFields | The custom fields to set.

begin
  # Set file custom fields
  result = api_instance.set_file_custom_fields(file_id, set_custom_fields)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->set_file_custom_fields: #{e}"
end
```

#### Using the set_file_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldValueArrayWrapper>, Integer, Hash)> set_file_custom_fields_with_http_info(file_id, set_custom_fields)

```ruby
begin
  # Set file custom fields
  data, status_code, headers = api_instance.set_file_custom_fields_with_http_info(file_id, set_custom_fields)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldValueArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->set_file_custom_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID. |  |
| **set_custom_fields** | [**SetCustomFields**](SetCustomFields.md) | The custom fields to set. |  |

### Return type

[**CustomFieldValueArrayWrapper**](CustomFieldValueArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_file_values

> <EntryMetadataWrapper> set_file_values(file_id, set_metadata_values)

Set file metadata values

Writes the values of metadata fields on a file. The caller needs the right to edit the file: a member with editing  access, or an anonymous caller through an external link that grants editing, with the link key in the  `Request-Token` header or in the `share` query parameter; a link that grants viewing, commenting, reviewing or  form filling only is refused. Every field must belong to a template the file carries, assigned with  `PUT api/2.0/files/metadata/file/{fileId}/templates` or inherited from a cascading folder, and a field may be  listed once. A value carries exactly the member of its type: `stringValue` for a text field of at most 8000  characters, `numberValue` for a whole number of at most 2^53-1 in magnitude (the largest integer a JSON client  reads exactly), `dateValue` for a date, `optionIds` for a choice field, a single option for a single choice; an  empty value clears the field. A date without a time zone offset is read as UTC. The write  finishes in the request, the file is re-indexed for the metadata filters at once. The custom text fields are not  written here: use `PUT api/2.0/files/metadata/file/{fileId}/customFields`. The answer is the whole metadata of the  file after the write, the same shape `GET api/2.0/files/metadata/file/{fileId}` returns. A value of the wrong type or beyond the number limit,  a field of a template the file does not carry, a field listed twice or a custom field is answered with 400; a  request with neither a session nor a link key with 401; a file the caller cannot edit with 403; a file or a field  that does not exist with 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-values/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
file_id = 1 # Integer | The file ID.
set_metadata_values = DocspaceApiSdk::SetMetadataValues.new({values: [{fieldId=1,  stringValue=ACME Corp},  {fieldId=2,  numberValue=150000}]}) # SetMetadataValues | The parameters for setting values.

begin
  # Set file metadata values
  result = api_instance.set_file_values(file_id, set_metadata_values)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->set_file_values: #{e}"
end
```

#### Using the set_file_values_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntryMetadataWrapper>, Integer, Hash)> set_file_values_with_http_info(file_id, set_metadata_values)

```ruby
begin
  # Set file metadata values
  data, status_code, headers = api_instance.set_file_values_with_http_info(file_id, set_metadata_values)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntryMetadataWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->set_file_values_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID. |  |
| **set_metadata_values** | [**SetMetadataValues**](SetMetadataValues.md) | The parameters for setting values. |  |

### Return type

[**EntryMetadataWrapper**](EntryMetadataWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_folder_custom_fields

> <CustomFieldValueArrayWrapper> set_folder_custom_fields(folder_id, set_custom_fields)

Set folder custom fields

Sets the custom text fields of a folder or a room: free-form name and value pairs that need no template. The  caller needs the right to create in the folder (a room manager or a content creator); for a room that is its  manager. A field is addressed by its name regardless of case: a listed name gets the value, a null or empty value  removes the field, the names not listed are left alone. A new name creates the field for the whole portal, and a  name no entry holds a value for any more is dropped. A name is at most 255 characters, a value at most 8000, a name  may be listed once and a folder holds at most 50 custom fields. The custom fields never cascade to the content of  the folder. The write finishes in the request. The answer is the custom fields of the folder after the write. An empty list, a  blank, repeated or over-long name, an over-long value or more than 50 fields is answered with 400; a caller  without the right to create in the folder with 403; a folder that does not exist with 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-custom-fields/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
folder_id = 1 # Integer | The folder ID.
set_custom_fields = DocspaceApiSdk::SetCustomFields.new({fields: [{name=Project code,  value=A-42},  {name=Client,  value=null}]}) # SetCustomFields | The custom fields to set.

begin
  # Set folder custom fields
  result = api_instance.set_folder_custom_fields(folder_id, set_custom_fields)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->set_folder_custom_fields: #{e}"
end
```

#### Using the set_folder_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomFieldValueArrayWrapper>, Integer, Hash)> set_folder_custom_fields_with_http_info(folder_id, set_custom_fields)

```ruby
begin
  # Set folder custom fields
  data, status_code, headers = api_instance.set_folder_custom_fields_with_http_info(folder_id, set_custom_fields)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomFieldValueArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->set_folder_custom_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID. |  |
| **set_custom_fields** | [**SetCustomFields**](SetCustomFields.md) | The custom fields to set. |  |

### Return type

[**CustomFieldValueArrayWrapper**](CustomFieldValueArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_folder_values

> <EntryMetadataWrapper> set_folder_values(folder_id, set_metadata_values)

Set folder metadata values

Writes the values of metadata fields on a folder or a room. The caller needs the right to create in the folder (a  room manager or a content creator); for a room that is its manager. Every field must belong to a template the  folder carries, assigned with `PUT api/2.0/files/metadata/folder/{folderId}/templates` or inherited from a  cascading folder, and a field may be listed once. A value carries exactly the member of its type: `stringValue` for  a text field of at most 8000 characters, `numberValue` for a whole number of at most 2^53-1 in magnitude (the  largest integer a JSON client reads exactly), `dateValue` for a date, `optionIds` for a choice field; an empty  value clears the field. The write finishes in the request and touches the folder only: to  push the new values down a cascading folder run the cascade again with `Overwrite`. The custom text fields are written with  `PUT api/2.0/files/metadata/folder/{folderId}/customFields`. The answer is the whole metadata of the folder after  the write. A value of the wrong type or beyond the number limit, a field listed twice, a custom field or a field of a template the folder  does not carry is answered with 400; a caller without the right to create in the folder with 403; a folder or a  field that does not exist with 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-values/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
folder_id = 1 # Integer | The folder ID.
set_metadata_values = DocspaceApiSdk::SetMetadataValues.new({values: [{fieldId=1,  stringValue=ACME Corp},  {fieldId=2,  numberValue=150000}]}) # SetMetadataValues | The parameters for setting values.

begin
  # Set folder metadata values
  result = api_instance.set_folder_values(folder_id, set_metadata_values)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->set_folder_values: #{e}"
end
```

#### Using the set_folder_values_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EntryMetadataWrapper>, Integer, Hash)> set_folder_values_with_http_info(folder_id, set_metadata_values)

```ruby
begin
  # Set folder metadata values
  data, status_code, headers = api_instance.set_folder_values_with_http_info(folder_id, set_metadata_values)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EntryMetadataWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->set_folder_values_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID. |  |
| **set_metadata_values** | [**SetMetadataValues**](SetMetadataValues.md) | The parameters for setting values. |  |

### Return type

[**EntryMetadataWrapper**](EntryMetadataWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unassign_file_template

> unassign_file_template(file_id, template_id)

Unassign a template from a file

Removes a metadata template from a file together with the values of its fields. The caller needs the right to edit  the file. The removal is irreversible for the values, the template itself stays on the portal and on the other  entries. It applies to a directly assigned template and to one inherited from a cascading folder alike; a later  cascade from that folder assigns it again. A file the caller cannot edit is answered with 403; a file, or a template,  that does not exist with 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/unassign-file-template/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
file_id = 1 # Integer | The file ID.
template_id = 1 # Integer | The template ID.

begin
  # Unassign a template from a file
  api_instance.unassign_file_template(file_id, template_id)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->unassign_file_template: #{e}"
end
```

#### Using the unassign_file_template_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unassign_file_template_with_http_info(file_id, template_id)

```ruby
begin
  # Unassign a template from a file
  data, status_code, headers = api_instance.unassign_file_template_with_http_info(file_id, template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->unassign_file_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID. |  |
| **template_id** | **Integer** | The template ID. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## unassign_folder_template

> unassign_folder_template(folder_id, template_id)

Unassign a template from a folder

Removes a metadata template from a folder or a room together with the values of its fields. The caller needs the  right to create content in the folder, that is a room manager or a content creator; for a room that is its  manager. When the template was cascaded from this folder, the  cascade stops here: the folders and files below keep the template and their values as a direct assignment of their  own, and there is no bulk rollback. To take the template off them as well, remove it entry by entry with  `DELETE api/2.0/files/metadata/file/{fileId}/templates/{templateId}`. A pass of the cascade still running is stopped  for this template. To stop the cascade and keep the template and its values on the folder use  `PUT api/2.0/files/metadata/folder/{folderId}/templates/{templateId}` with `cascade` false instead. A caller  without the right to create in the folder is answered with 403; a folder, or a template, that does not exist with 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/unassign-folder-template/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
folder_id = 1 # Integer | The folder ID.
template_id = 1 # Integer | The template ID.

begin
  # Unassign a template from a folder
  api_instance.unassign_folder_template(folder_id, template_id)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->unassign_folder_template: #{e}"
end
```

#### Using the unassign_folder_template_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unassign_folder_template_with_http_info(folder_id, template_id)

```ruby
begin
  # Unassign a template from a folder
  data, status_code, headers = api_instance.unassign_folder_template_with_http_info(folder_id, template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->unassign_folder_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID. |  |
| **template_id** | **Integer** | The template ID. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_field

> <MetadataFieldWrapper> update_field(template_id, field_id, update_metadata_field_request)

Update a metadata field

Changes the name, the type, the options or the display order of a metadata field. Only a DocSpace admin can change  templates. The request is partial: a property left out keeps its value. The type can be changed only while no entry  holds a value for the field, and an option can be removed only while no entry has selected it; a new option is sent  without an identifier and gets one in the answer. A new name must be unique within the template regardless of case.  The values already written are left as they are. The field is addressed through its own template: a field reached  through another template's route is answered with 404, the same as a field that does not exist. A conflicting name,  a type change on a field with values or the removal of an option in use is answered with 400.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-field/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
template_id = 1 # Integer | The template ID.
field_id = 1 # Integer | The field ID.
update_metadata_field_request = DocspaceApiSdk::UpdateMetadataFieldRequest.new # UpdateMetadataFieldRequest | The parameters of the field update.

begin
  # Update a metadata field
  result = api_instance.update_field(template_id, field_id, update_metadata_field_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->update_field: #{e}"
end
```

#### Using the update_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetadataFieldWrapper>, Integer, Hash)> update_field_with_http_info(template_id, field_id, update_metadata_field_request)

```ruby
begin
  # Update a metadata field
  data, status_code, headers = api_instance.update_field_with_http_info(template_id, field_id, update_metadata_field_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetadataFieldWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->update_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | The template ID. |  |
| **field_id** | **Integer** | The field ID. |  |
| **update_metadata_field_request** | [**UpdateMetadataFieldRequest**](UpdateMetadataFieldRequest.md) | The parameters of the field update. |  |

### Return type

[**MetadataFieldWrapper**](MetadataFieldWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_folder_template

> <MetadataOperationWrapper> update_folder_template(folder_id, template_id, update_folder_metadata_template_request)

Update a template assignment on a folder

Turns the cascade of a metadata template the folder or the room already carries on or off, without taking the  template off the folder. The template must be assigned first, with `PUT api/2.0/files/metadata/folder/{folderId}/templates`  or inherited from a folder above. The caller needs the right to create in the folder (a room manager  or a content creator); for a room that is its manager. With `cascade` true the template is marked as cascading with  the given `conflictResolveType`, an inherited assignment becomes the folder's own, and the pass the assignment runs  is queued, also when the cascade was already on: the answer is that pass, poll  `GET api/2.0/files/metadata/folder/{folderId}/templates/progress` until `isCompleted` is true. With `cascade` false  the folder keeps the template and its values, the entries below keep them as their own, entries created later no  longer inherit the template from this folder, a running pass stops at its next batch, and the answer is a completed  operation without an identifier; `conflictResolveType` is ignored and a cascade already off stays so. A caller  without the right to create in the folder is answered with 403; a folder or a template that does not exist, or a  template the folder does not carry, with 404.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-folder-template/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
folder_id = 1 # Integer | The folder ID.
template_id = 1 # Integer | The ID of a template the folder already carries.
update_folder_metadata_template_request = DocspaceApiSdk::UpdateFolderMetadataTemplateRequest.new # UpdateFolderMetadataTemplateRequest | The new state of the assignment.

begin
  # Update a template assignment on a folder
  result = api_instance.update_folder_template(folder_id, template_id, update_folder_metadata_template_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->update_folder_template: #{e}"
end
```

#### Using the update_folder_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetadataOperationWrapper>, Integer, Hash)> update_folder_template_with_http_info(folder_id, template_id, update_folder_metadata_template_request)

```ruby
begin
  # Update a template assignment on a folder
  data, status_code, headers = api_instance.update_folder_template_with_http_info(folder_id, template_id, update_folder_metadata_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetadataOperationWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->update_folder_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID. |  |
| **template_id** | **Integer** | The ID of a template the folder already carries. |  |
| **update_folder_metadata_template_request** | [**UpdateFolderMetadataTemplateRequest**](UpdateFolderMetadataTemplateRequest.md) | The new state of the assignment. |  |

### Return type

[**MetadataOperationWrapper**](MetadataOperationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_template

> <MetadataTemplateWrapper> update_template(template_id, update_metadata_template)

Update a metadata template

Renames a metadata template or changes whether it is shown in the pickers. Only a DocSpace admin can change  templates. The request is partial: a property left out keeps its value, the fields are not touched here and are  changed with `PUT api/2.0/files/metadata/templates/{templateId}/fields/{fieldId}`. The new name follows the rules  of the creation: unique on the portal regardless of case and at most 255 characters. The answer is the whole template  with its fields. A template that does not exist is answered with 404, a name already in use or too long with 400.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-template/).

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

api_instance = DocspaceApiSdk::Files::MetadataApi.new
template_id = 1 # Integer | The template ID.
update_metadata_template = DocspaceApiSdk::UpdateMetadataTemplate.new # UpdateMetadataTemplate | The parameters for updating the template.

begin
  # Update a metadata template
  result = api_instance.update_template(template_id, update_metadata_template)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->update_template: #{e}"
end
```

#### Using the update_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetadataTemplateWrapper>, Integer, Hash)> update_template_with_http_info(template_id, update_metadata_template)

```ruby
begin
  # Update a metadata template
  data, status_code, headers = api_instance.update_template_with_http_info(template_id, update_metadata_template)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetadataTemplateWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::MetadataApi->update_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | The template ID. |  |
| **update_metadata_template** | [**UpdateMetadataTemplate**](UpdateMetadataTemplate.md) | The parameters for updating the template. |  |

### Return type

[**MetadataTemplateWrapper**](MetadataTemplateWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

