# DocspaceApiSdk::GroupSearchApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_groups_with_files_shared**](GroupSearchApi.md#get_groups_with_files_shared) | **GET** /api/2.0/group/file/{id} | Get groups with file sharing settings |
| [**get_groups_with_folders_shared**](GroupSearchApi.md#get_groups_with_folders_shared) | **GET** /api/2.0/group/folder/{id} | Get groups with folder sharing settings |
| [**get_groups_with_rooms_shared**](GroupSearchApi.md#get_groups_with_rooms_shared) | **GET** /api/2.0/group/room/{id} | Get groups with room sharing settings |


## get_groups_with_files_shared

> <GroupArrayWrapper> get_groups_with_files_shared(id, opts)

Get groups with file sharing settings

Returns groups with their sharing settings for a file with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-files-shared/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Group::SearchApi.new
id = 00000000-0000-0000-0000-000000000000 # Integer | The group ID.
opts = {
  exclude_shared: false, # Boolean | Specifies whether to exclude the group sharing settings from the response.
  count: 25, # Integer | The number of groups to retrieve in the request.
  start_index: 0, # Integer | The starting index from which to begin retrieving groups with their sharing settings.
  filter_value: 'John' # String | The text used as a filter for retrieving groups with their sharing settings.
}

begin
  # Get groups with file sharing settings
  result = api_instance.get_groups_with_files_shared(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::SearchApi->get_groups_with_files_shared: #{e}"
end
```

#### Using the get_groups_with_files_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupArrayWrapper>, Integer, Hash)> get_groups_with_files_shared_with_http_info(id, opts)

```ruby
begin
  # Get groups with file sharing settings
  data, status_code, headers = api_instance.get_groups_with_files_shared_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::SearchApi->get_groups_with_files_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The group ID. |  |
| **exclude_shared** | **Boolean** | Specifies whether to exclude the group sharing settings from the response. | [optional] |
| **count** | **Integer** | The number of groups to retrieve in the request. | [optional] |
| **start_index** | **Integer** | The starting index from which to begin retrieving groups with their sharing settings. | [optional] |
| **filter_value** | **String** | The text used as a filter for retrieving groups with their sharing settings. | [optional] |

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_groups_with_folders_shared

> <GroupArrayWrapper> get_groups_with_folders_shared(id, opts)

Get groups with folder sharing settings

Returns groups with their sharing settings in a folder with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-folders-shared/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Group::SearchApi.new
id = 00000000-0000-0000-0000-000000000000 # Integer | The group ID.
opts = {
  exclude_shared: false, # Boolean | Specifies whether to exclude the group sharing settings from the response.
  count: 25, # Integer | The number of groups to retrieve in the request.
  start_index: 0, # Integer | The starting index from which to begin retrieving groups with their sharing settings.
  filter_value: 'John' # String | The text used as a filter for retrieving groups with their sharing settings.
}

begin
  # Get groups with folder sharing settings
  result = api_instance.get_groups_with_folders_shared(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::SearchApi->get_groups_with_folders_shared: #{e}"
end
```

#### Using the get_groups_with_folders_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupArrayWrapper>, Integer, Hash)> get_groups_with_folders_shared_with_http_info(id, opts)

```ruby
begin
  # Get groups with folder sharing settings
  data, status_code, headers = api_instance.get_groups_with_folders_shared_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::SearchApi->get_groups_with_folders_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The group ID. |  |
| **exclude_shared** | **Boolean** | Specifies whether to exclude the group sharing settings from the response. | [optional] |
| **count** | **Integer** | The number of groups to retrieve in the request. | [optional] |
| **start_index** | **Integer** | The starting index from which to begin retrieving groups with their sharing settings. | [optional] |
| **filter_value** | **String** | The text used as a filter for retrieving groups with their sharing settings. | [optional] |

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_groups_with_rooms_shared

> <GroupArrayWrapper> get_groups_with_rooms_shared(id, opts)

Get groups with room sharing settings

Returns groups with their sharing settings in a room with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups-with-rooms-shared/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::Group::SearchApi.new
id = 00000000-0000-0000-0000-000000000000 # Integer | The group ID.
opts = {
  exclude_shared: false, # Boolean | Specifies whether to exclude the group sharing settings from the response.
  count: 25, # Integer | The number of groups to retrieve in the request.
  start_index: 0, # Integer | The starting index from which to begin retrieving groups with their sharing settings.
  filter_value: 'John' # String | The text used as a filter for retrieving groups with their sharing settings.
}

begin
  # Get groups with room sharing settings
  result = api_instance.get_groups_with_rooms_shared(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::SearchApi->get_groups_with_rooms_shared: #{e}"
end
```

#### Using the get_groups_with_rooms_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupArrayWrapper>, Integer, Hash)> get_groups_with_rooms_shared_with_http_info(id, opts)

```ruby
begin
  # Get groups with room sharing settings
  data, status_code, headers = api_instance.get_groups_with_rooms_shared_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::SearchApi->get_groups_with_rooms_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The group ID. |  |
| **exclude_shared** | **Boolean** | Specifies whether to exclude the group sharing settings from the response. | [optional] |
| **count** | **Integer** | The number of groups to retrieve in the request. | [optional] |
| **start_index** | **Integer** | The starting index from which to begin retrieving groups with their sharing settings. | [optional] |
| **filter_value** | **String** | The text used as a filter for retrieving groups with their sharing settings. | [optional] |

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

