# DocspaceApiSdk::FilesSharingApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**apply_external_share_password**](FilesSharingApi.md#apply_external_share_password) | **POST** /api/2.0/files/share/{key}/password | Apply external data password |
| [**change_file_owner**](FilesSharingApi.md#change_file_owner) | **POST** /api/2.0/files/owner | Change the file owner |
| [**get_external_share_data**](FilesSharingApi.md#get_external_share_data) | **GET** /api/2.0/files/share/{key} | Get the external data |
| [**get_file_security_info**](FilesSharingApi.md#get_file_security_info) | **GET** /api/2.0/files/file/{id}/share | Get the shared file information |
| [**get_folder_security_info**](FilesSharingApi.md#get_folder_security_info) | **GET** /api/2.0/files/folder/{id}/share | Get the shared folder information |
| [**get_groups_members_with_file_security**](FilesSharingApi.md#get_groups_members_with_file_security) | **GET** /api/2.0/files/file/{fileId}/group/{groupId}/share | Get file group members with security information |
| [**get_groups_members_with_folder_security**](FilesSharingApi.md#get_groups_members_with_folder_security) | **GET** /api/2.0/files/folder/{folderId}/group/{groupId}/share | Get folder group members with security information |
| [**get_security_info**](FilesSharingApi.md#get_security_info) | **POST** /api/2.0/files/share | Get the sharing rights |
| [**get_shared_users**](FilesSharingApi.md#get_shared_users) | **GET** /api/2.0/files/file/{fileId}/sharedusers | Get user access rights by file ID |
| [**remove_security_info**](FilesSharingApi.md#remove_security_info) | **DELETE** /api/2.0/files/share | Remove the sharing rights |
| [**send_editor_notify**](FilesSharingApi.md#send_editor_notify) | **POST** /api/2.0/files/file/{fileId}/sendeditornotify | Send the mention message |
| [**set_file_security_info**](FilesSharingApi.md#set_file_security_info) | **PUT** /api/2.0/files/file/{fileId}/share | Share a file |
| [**set_folder_security_info**](FilesSharingApi.md#set_folder_security_info) | **PUT** /api/2.0/files/folder/{folderId}/share | Share a folder |
| [**set_security_info**](FilesSharingApi.md#set_security_info) | **PUT** /api/2.0/files/share | Set the sharing rights |


## apply_external_share_password

> <ExternalShareWrapper> apply_external_share_password(key, external_share_request_param)

Apply external data password

Applies a password specified in the request to get the external data.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/apply-external-share-password/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::SharingApi.new
key = 'doc_key_123' # String | The unique document identifier.
external_share_request_param = DocspaceApiSdk::ExternalShareRequestParam.new # ExternalShareRequestParam | The external data share request parameters.

begin
  # Apply external data password
  result = api_instance.apply_external_share_password(key, external_share_request_param)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->apply_external_share_password: #{e}"
end
```

#### Using the apply_external_share_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalShareWrapper>, Integer, Hash)> apply_external_share_password_with_http_info(key, external_share_request_param)

```ruby
begin
  # Apply external data password
  data, status_code, headers = api_instance.apply_external_share_password_with_http_info(key, external_share_request_param)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalShareWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->apply_external_share_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The unique document identifier. |  |
| **external_share_request_param** | [**ExternalShareRequestParam**](ExternalShareRequestParam.md) | The external data share request parameters. |  |

### Return type

[**ExternalShareWrapper**](ExternalShareWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_file_owner

> <FileEntryBaseArrayWrapper> change_file_owner(opts)

Change the file owner

Changes the owner of the file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-file-owner/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
opts = {
  change_owner_request_dto: DocspaceApiSdk::ChangeOwnerRequestDto.new({user_id: '00000000-0000-0000-0000-000000000000'}) # ChangeOwnerRequestDto | 
}

begin
  # Change the file owner
  result = api_instance.change_file_owner(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->change_file_owner: #{e}"
end
```

#### Using the change_file_owner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileEntryBaseArrayWrapper>, Integer, Hash)> change_file_owner_with_http_info(opts)

```ruby
begin
  # Change the file owner
  data, status_code, headers = api_instance.change_file_owner_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileEntryBaseArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->change_file_owner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_owner_request_dto** | [**ChangeOwnerRequestDto**](ChangeOwnerRequestDto.md) |  | [optional] |

### Return type

[**FileEntryBaseArrayWrapper**](FileEntryBaseArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_external_share_data

> <ExternalShareWrapper> get_external_share_data(key, opts)

Get the external data

Returns the external data by the key specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-external-share-data/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Files::SharingApi.new
key = 'doc_key_123' # String | The unique key of the external shared data.
opts = {
  file_id: '1', # String | The unique document identifier.
  folder_id: '1' # String | The unique folder identifier.
}

begin
  # Get the external data
  result = api_instance.get_external_share_data(key, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_external_share_data: #{e}"
end
```

#### Using the get_external_share_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExternalShareWrapper>, Integer, Hash)> get_external_share_data_with_http_info(key, opts)

```ruby
begin
  # Get the external data
  data, status_code, headers = api_instance.get_external_share_data_with_http_info(key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExternalShareWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_external_share_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The unique key of the external shared data. |  |
| **file_id** | **String** | The unique document identifier. | [optional] |
| **folder_id** | **String** | The unique folder identifier. | [optional] |

### Return type

[**ExternalShareWrapper**](ExternalShareWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_security_info

> <FileShareArrayWrapper> get_file_security_info(id, opts)

Get the shared file information

Returns the detailed information about the shared file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-file-security-info/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
id = 10 # Integer | The file unique identifier.
opts = {
  count: 25, # Integer | The number of items to retrieve in the request.
  start_index: 0 # Integer | The starting index for the query results.
}

begin
  # Get the shared file information
  result = api_instance.get_file_security_info(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_file_security_info: #{e}"
end
```

#### Using the get_file_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> get_file_security_info_with_http_info(id, opts)

```ruby
begin
  # Get the shared file information
  data, status_code, headers = api_instance.get_file_security_info_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_file_security_info_with_http_info: #{e}"
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


## get_folder_security_info

> <FileShareArrayWrapper> get_folder_security_info(id, opts)

Get the shared folder information

Returns the detailed information about the shared folder with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-folder-security-info/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
id = 10 # Integer | The folder unique identifier.
opts = {
  count: 25, # Integer | The number of items to retrieve in the request.
  start_index: 0 # Integer | The starting index for the query results.
}

begin
  # Get the shared folder information
  result = api_instance.get_folder_security_info(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_folder_security_info: #{e}"
end
```

#### Using the get_folder_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> get_folder_security_info_with_http_info(id, opts)

```ruby
begin
  # Get the shared folder information
  data, status_code, headers = api_instance.get_folder_security_info_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_folder_security_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The folder unique identifier. |  |
| **count** | **Integer** | The number of items to retrieve in the request. | [optional] |
| **start_index** | **Integer** | The starting index for the query results. | [optional] |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_groups_members_with_file_security

> <GroupMemberSecurityRequestArrayWrapper> get_groups_members_with_file_security(file_id, group_id, opts)

Get file group members with security information

Returns the group members with their file security information.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-file-security/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
file_id = 1 # Integer | The file ID.
group_id = '00000000-0000-0000-0000-000000000000' # String | The group ID.
opts = {
  count: 25, # Integer | The number of items to be retrieved in the current query.
  start_index: 0, # Integer | The starting index for the query result set.
  filter_value: 'My Document' # String | The filter value used for searching or querying group members based on text input.
}

begin
  # Get file group members with security information
  result = api_instance.get_groups_members_with_file_security(file_id, group_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_groups_members_with_file_security: #{e}"
end
```

#### Using the get_groups_members_with_file_security_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupMemberSecurityRequestArrayWrapper>, Integer, Hash)> get_groups_members_with_file_security_with_http_info(file_id, group_id, opts)

```ruby
begin
  # Get file group members with security information
  data, status_code, headers = api_instance.get_groups_members_with_file_security_with_http_info(file_id, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupMemberSecurityRequestArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_groups_members_with_file_security_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID. |  |
| **group_id** | **String** | The group ID. |  |
| **count** | **Integer** | The number of items to be retrieved in the current query. | [optional] |
| **start_index** | **Integer** | The starting index for the query result set. | [optional] |
| **filter_value** | **String** | The filter value used for searching or querying group members based on text input. | [optional] |

### Return type

[**GroupMemberSecurityRequestArrayWrapper**](GroupMemberSecurityRequestArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_groups_members_with_folder_security

> <GroupMemberSecurityRequestArrayWrapper> get_groups_members_with_folder_security(folder_id, group_id, opts)

Get folder group members with security information

Returns the group members with their folder security information.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-members-with-folder-security/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
folder_id = 1 # Integer | The folder ID.
group_id = '00000000-0000-0000-0000-000000000000' # String | The group ID.
opts = {
  count: 25, # Integer | The number of items to be retrieved in the current query.
  start_index: 0, # Integer | The starting index for the query result set.
  filter_value: 'My Document' # String | The filter value used for searching or querying group members based on text input.
}

begin
  # Get folder group members with security information
  result = api_instance.get_groups_members_with_folder_security(folder_id, group_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_groups_members_with_folder_security: #{e}"
end
```

#### Using the get_groups_members_with_folder_security_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupMemberSecurityRequestArrayWrapper>, Integer, Hash)> get_groups_members_with_folder_security_with_http_info(folder_id, group_id, opts)

```ruby
begin
  # Get folder group members with security information
  data, status_code, headers = api_instance.get_groups_members_with_folder_security_with_http_info(folder_id, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupMemberSecurityRequestArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_groups_members_with_folder_security_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID. |  |
| **group_id** | **String** | The group ID. |  |
| **count** | **Integer** | The number of items to be retrieved in the current query. | [optional] |
| **start_index** | **Integer** | The starting index for the query result set. | [optional] |
| **filter_value** | **String** | The filter value used for searching or querying group members based on text input. | [optional] |

### Return type

[**GroupMemberSecurityRequestArrayWrapper**](GroupMemberSecurityRequestArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_security_info

> <FileShareArrayWrapper> get_security_info(opts)

Get the sharing rights

Returns the sharing rights for all the files and folders specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-security-info/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
opts = {
  base_batch_request_dto: DocspaceApiSdk::BaseBatchRequestDto.new # BaseBatchRequestDto | 
}

begin
  # Get the sharing rights
  result = api_instance.get_security_info(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_security_info: #{e}"
end
```

#### Using the get_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> get_security_info_with_http_info(opts)

```ruby
begin
  # Get the sharing rights
  data, status_code, headers = api_instance.get_security_info_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_security_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **base_batch_request_dto** | [**BaseBatchRequestDto**](BaseBatchRequestDto.md) |  | [optional] |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_shared_users

> <MentionWrapperArrayWrapper> get_shared_users(file_id)

Get user access rights by file ID

Returns a list of users with their access rights to the file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-shared-users/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
file_id = 1 # Integer | The file unique identifier.

begin
  # Get user access rights by file ID
  result = api_instance.get_shared_users(file_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_shared_users: #{e}"
end
```

#### Using the get_shared_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MentionWrapperArrayWrapper>, Integer, Hash)> get_shared_users_with_http_info(file_id)

```ruby
begin
  # Get user access rights by file ID
  data, status_code, headers = api_instance.get_shared_users_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MentionWrapperArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->get_shared_users_with_http_info: #{e}"
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


## remove_security_info

> <BooleanWrapper> remove_security_info(opts)

Remove the sharing rights

Removes the sharing rights from all the files and folders specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-security-info/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
opts = {
  base_batch_request_dto: DocspaceApiSdk::BaseBatchRequestDto.new # BaseBatchRequestDto | 
}

begin
  # Remove the sharing rights
  result = api_instance.remove_security_info(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->remove_security_info: #{e}"
end
```

#### Using the remove_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> remove_security_info_with_http_info(opts)

```ruby
begin
  # Remove the sharing rights
  data, status_code, headers = api_instance.remove_security_info_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->remove_security_info_with_http_info: #{e}"
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


## send_editor_notify

> <AceShortWrapperArrayWrapper> send_editor_notify(file_id, opts)

Send the mention message

Sends a message to the users who are mentioned in the file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-editor-notify/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
file_id = 56 # Integer | The file ID with the mention message.
opts = {
  mention_message_wrapper: DocspaceApiSdk::MentionMessageWrapper.new # MentionMessageWrapper | The mention message.
}

begin
  # Send the mention message
  result = api_instance.send_editor_notify(file_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->send_editor_notify: #{e}"
end
```

#### Using the send_editor_notify_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AceShortWrapperArrayWrapper>, Integer, Hash)> send_editor_notify_with_http_info(file_id, opts)

```ruby
begin
  # Send the mention message
  data, status_code, headers = api_instance.send_editor_notify_with_http_info(file_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AceShortWrapperArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->send_editor_notify_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID with the mention message. |  |
| **mention_message_wrapper** | [**MentionMessageWrapper**](MentionMessageWrapper.md) | The mention message. | [optional] |

### Return type

[**AceShortWrapperArrayWrapper**](AceShortWrapperArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_file_security_info

> <FileShareArrayWrapper> set_file_security_info(file_id, security_info_simple_request_dto)

Share a file

Sets the sharing settings to a file with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-file-security-info/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
file_id = 1 # Integer | The file ID.
security_info_simple_request_dto = DocspaceApiSdk::SecurityInfoSimpleRequestDto.new # SecurityInfoSimpleRequestDto | The parameters of the security information simple request.

begin
  # Share a file
  result = api_instance.set_file_security_info(file_id, security_info_simple_request_dto)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->set_file_security_info: #{e}"
end
```

#### Using the set_file_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> set_file_security_info_with_http_info(file_id, security_info_simple_request_dto)

```ruby
begin
  # Share a file
  data, status_code, headers = api_instance.set_file_security_info_with_http_info(file_id, security_info_simple_request_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->set_file_security_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** | The file ID. |  |
| **security_info_simple_request_dto** | [**SecurityInfoSimpleRequestDto**](SecurityInfoSimpleRequestDto.md) | The parameters of the security information simple request. |  |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_folder_security_info

> <FileShareArrayWrapper> set_folder_security_info(folder_id, security_info_simple_request_dto)

Share a folder

Sets the sharing settings to a folder with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-folder-security-info/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
folder_id = 1 # Integer | The folder ID.
security_info_simple_request_dto = DocspaceApiSdk::SecurityInfoSimpleRequestDto.new # SecurityInfoSimpleRequestDto | The parameters of the security information simple request.

begin
  # Share a folder
  result = api_instance.set_folder_security_info(folder_id, security_info_simple_request_dto)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->set_folder_security_info: #{e}"
end
```

#### Using the set_folder_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> set_folder_security_info_with_http_info(folder_id, security_info_simple_request_dto)

```ruby
begin
  # Share a folder
  data, status_code, headers = api_instance.set_folder_security_info_with_http_info(folder_id, security_info_simple_request_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->set_folder_security_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID. |  |
| **security_info_simple_request_dto** | [**SecurityInfoSimpleRequestDto**](SecurityInfoSimpleRequestDto.md) | The parameters of the security information simple request. |  |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_security_info

> <FileShareArrayWrapper> set_security_info(opts)

Set the sharing rights

Sets the sharing rights to all the files and folders specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-security-info/).

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

api_instance = DocspaceApiSdk::Files::SharingApi.new
opts = {
  security_info_request_dto: DocspaceApiSdk::SecurityInfoRequestDto.new # SecurityInfoRequestDto | 
}

begin
  # Set the sharing rights
  result = api_instance.set_security_info(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->set_security_info: #{e}"
end
```

#### Using the set_security_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileShareArrayWrapper>, Integer, Hash)> set_security_info_with_http_info(opts)

```ruby
begin
  # Set the sharing rights
  data, status_code, headers = api_instance.set_security_info_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileShareArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::SharingApi->set_security_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_info_request_dto** | [**SecurityInfoRequestDto**](SecurityInfoRequestDto.md) |  | [optional] |

### Return type

[**FileShareArrayWrapper**](FileShareArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

