# DocspaceApiSdk::GroupSearchApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_groups_with_files_shared**](GroupSearchApi.md#get_groups_with_files_shared) | **GET** /api/2.0/group/file/{id} | Search groups for a file |
| [**get_groups_with_folders_shared**](GroupSearchApi.md#get_groups_with_folders_shared) | **GET** /api/2.0/group/folder/{id} | Search groups for a folder |
| [**get_groups_with_rooms_shared**](GroupSearchApi.md#get_groups_with_rooms_shared) | **GET** /api/2.0/group/room/{id} | Search groups for a room |


## get_groups_with_files_shared

> <GroupArrayWrapper> get_groups_with_files_shared(id, opts)

Search groups for a file

Returns the groups that can be given access to the file with the ID given in the route, and reports for each  of them whether it already has access to that file.  The caller has to be allowed to manage the access of that file, and the ID has to belong to an existing file,  so the operation answers 403 for a file the caller cannot share and 404 for an ID that matches nothing.  The call is read-only and, unlike the account search, works without a filter: leaving `filterValue` empty  returns every group instead of nothing, and a value narrows the result by group name.  The result is paged by `count` and `startIndex`, with the number of matching groups in the total count of the  response.  Pass `excludeShared` to keep only the groups that have no access to the file yet, which is the set to offer  when adding new ones; without it every matching group comes back and `shared` tells them apart.  To search users and groups together, use `GET api/2.0/accounts/file/{id}/search`.

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
id = 1234 # Integer | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
opts = {
  exclude_shared: false, # Boolean | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart.
  count: 25, # Integer | The size of the page. It defaults to 100, which is also the largest value the operation accepts.
  start_index: 0, # Integer | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response.
  filter_value: 'Marketing' # String | The text to match against the group name. Omit it to get every group the caller may grant access to.
}

begin
  # Search groups for a file
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
  # Search groups for a file
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
| **id** | **Integer** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. |  |
| **exclude_shared** | **Boolean** | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart. | [optional] |
| **count** | **Integer** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. | [optional] |
| **filter_value** | **String** | The text to match against the group name. Omit it to get every group the caller may grant access to. | [optional] |

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Third-party storage

The same method serves an entry in a connected third-party storage, whose identifier is a string such as `sbox-42`: pass `id` as `String`.

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_groups_with_folders_shared

> <GroupArrayWrapper> get_groups_with_folders_shared(id, opts)

Search groups for a folder

Returns the groups that can be given access to the folder with the ID given in the route, and reports for  each of them whether it already has access to that folder.  The caller has to be allowed to manage the access of that folder, and the ID has to belong to an existing  folder, so the operation answers 403 for a folder the caller cannot share and 404 for an ID that matches  nothing.  The call is read-only and, unlike the account search, works without a filter: leaving `filterValue` empty  returns every group instead of nothing, and a value narrows the result by group name.  The result is paged by `count` and `startIndex`, with the number of matching groups in the total count of the  response.  Pass `excludeShared` to keep only the groups that have no access to the folder yet, which is the set to offer  when adding new ones; without it every matching group comes back and `shared` tells them apart.  To search users and groups together, use `GET api/2.0/accounts/folder/{id}/search`.

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
id = 1234 # Integer | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
opts = {
  exclude_shared: false, # Boolean | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart.
  count: 25, # Integer | The size of the page. It defaults to 100, which is also the largest value the operation accepts.
  start_index: 0, # Integer | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response.
  filter_value: 'Marketing' # String | The text to match against the group name. Omit it to get every group the caller may grant access to.
}

begin
  # Search groups for a folder
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
  # Search groups for a folder
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
| **id** | **Integer** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. |  |
| **exclude_shared** | **Boolean** | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart. | [optional] |
| **count** | **Integer** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. | [optional] |
| **filter_value** | **String** | The text to match against the group name. Omit it to get every group the caller may grant access to. | [optional] |

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Third-party storage

The same method serves an entry in a connected third-party storage, whose identifier is a string such as `sbox-42`: pass `id` as `String`.

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_groups_with_rooms_shared

> <GroupArrayWrapper> get_groups_with_rooms_shared(id, opts)

Search groups for a room

Returns the groups that can be given access to the room with the ID given in the route, and reports for each  of them whether it already has access to that room.  The caller has to be allowed to manage the access of that room, and the ID has to belong to an existing room,  so the operation answers 403 for a room the caller cannot share and 404 for an ID that matches nothing.  The call is read-only and, unlike the account search, works without a filter: leaving `filterValue` empty  returns every group instead of nothing, and a value narrows the result by group name.  The result is paged by `count` and `startIndex`, with the number of matching groups in the total count of the  response.  Pass `excludeShared` to keep only the groups that have no access to the room yet, which is the set to offer  when adding new ones; without it every matching group comes back and `shared` tells them apart.  To search users and groups together, use `GET api/2.0/accounts/room/{id}/search`.

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
id = 1234 # Integer | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage.
opts = {
  exclude_shared: false, # Boolean | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart.
  count: 25, # Integer | The size of the page. It defaults to 100, which is also the largest value the operation accepts.
  start_index: 0, # Integer | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response.
  filter_value: 'Marketing' # String | The text to match against the group name. Omit it to get every group the caller may grant access to.
}

begin
  # Search groups for a room
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
  # Search groups for a room
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
| **id** | **Integer** | The ID of the room, folder or file whose access the search is run against, taken from the route. It is an  integer for an entry stored in DocSpace and a provider-specific string for an entry in a connected  third-party storage. |  |
| **exclude_shared** | **Boolean** | Keeps only the groups that do not have access to the entry yet, which is the set to offer when granting  access. Every returned entry then has `shared` set to false; without the flag every matching group comes back  and `shared` tells them apart. | [optional] |
| **count** | **Integer** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. | [optional] |
| **filter_value** | **String** | The text to match against the group name. Omit it to get every group the caller may grant access to. | [optional] |

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Third-party storage

The same method serves an entry in a connected third-party storage, whose identifier is a string such as `sbox-42`: pass `id` as `String`.

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

