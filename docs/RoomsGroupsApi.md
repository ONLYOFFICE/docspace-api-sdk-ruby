# DocspaceApiSdk::RoomsGroupsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_room_group**](RoomsGroupsApi.md#add_room_group) | **POST** /api/2.0/files/group | Add a new room group |
| [**change_room_group_icon**](RoomsGroupsApi.md#change_room_group_icon) | **POST** /api/2.0/files/group/{id}/icon | Change group icon |
| [**delete_room_group**](RoomsGroupsApi.md#delete_room_group) | **DELETE** /api/2.0/files/group/{id} | Delete group |
| [**get_room_group_info**](RoomsGroupsApi.md#get_room_group_info) | **GET** /api/2.0/files/group/{id} | Get room group info |
| [**get_room_groups**](RoomsGroupsApi.md#get_room_groups) | **GET** /api/2.0/files/group | List room groups |
| [**update_room_group**](RoomsGroupsApi.md#update_room_group) | **PUT** /api/2.0/files/group/{id} | Update room group |


## add_room_group

> <RoomGroupWrapper> add_room_group(opts)

Add a new room group

Creates a new room group with the specified name, icon, and list of rooms.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-room-group/).

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

api_instance = DocspaceApiSdk::Rooms::GroupsApi.new
opts = {
  room_group_request_dto: DocspaceApiSdk::RoomGroupRequestDto.new({name: 'My Group', icon: 'cover1', rooms: [1, 2, 3]}) # RoomGroupRequestDto | 
}

begin
  # Add a new room group
  result = api_instance.add_room_group(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::GroupsApi->add_room_group: #{e}"
end
```

#### Using the add_room_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomGroupWrapper>, Integer, Hash)> add_room_group_with_http_info(opts)

```ruby
begin
  # Add a new room group
  data, status_code, headers = api_instance.add_room_group_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomGroupWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::GroupsApi->add_room_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_group_request_dto** | [**RoomGroupRequestDto**](RoomGroupRequestDto.md) |  | [optional] |

### Return type

[**RoomGroupWrapper**](RoomGroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_room_group_icon

> <RoomGroupWrapper> change_room_group_icon(id, opts)

Change group icon

Changes the icon of an existing room group.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-room-group-icon/).

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

api_instance = DocspaceApiSdk::Rooms::GroupsApi.new
id = 1 # Integer | Group id
opts = {
  icon_request: DocspaceApiSdk::IconRequest.new # IconRequest | Icon update data.
}

begin
  # Change group icon
  result = api_instance.change_room_group_icon(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::GroupsApi->change_room_group_icon: #{e}"
end
```

#### Using the change_room_group_icon_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomGroupWrapper>, Integer, Hash)> change_room_group_icon_with_http_info(id, opts)

```ruby
begin
  # Change group icon
  data, status_code, headers = api_instance.change_room_group_icon_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomGroupWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::GroupsApi->change_room_group_icon_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Group id |  |
| **icon_request** | [**IconRequest**](IconRequest.md) | Icon update data. | [optional] |

### Return type

[**RoomGroupWrapper**](RoomGroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_room_group

> delete_room_group(id, opts)

Delete group

Deletes the specified room group.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-room-group/).

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

api_instance = DocspaceApiSdk::Rooms::GroupsApi.new
id = 10 # Integer | The group unique identifier.
opts = {
  include_members: true # Boolean | Whether to include group members.
}

begin
  # Delete group
  api_instance.delete_room_group(id, opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::GroupsApi->delete_room_group: #{e}"
end
```

#### Using the delete_room_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_room_group_with_http_info(id, opts)

```ruby
begin
  # Delete group
  data, status_code, headers = api_instance.delete_room_group_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::GroupsApi->delete_room_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The group unique identifier. |  |
| **include_members** | **Boolean** | Whether to include group members. | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_room_group_info

> <RoomGroupWrapper> get_room_group_info(id, opts)

Get room group info

Returns detailed information about a room group.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-group-info/).

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

api_instance = DocspaceApiSdk::Rooms::GroupsApi.new
id = 10 # Integer | The group unique identifier.
opts = {
  include_members: true # Boolean | Whether to include group members.
}

begin
  # Get room group info
  result = api_instance.get_room_group_info(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::GroupsApi->get_room_group_info: #{e}"
end
```

#### Using the get_room_group_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomGroupWrapper>, Integer, Hash)> get_room_group_info_with_http_info(id, opts)

```ruby
begin
  # Get room group info
  data, status_code, headers = api_instance.get_room_group_info_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomGroupWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::GroupsApi->get_room_group_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The group unique identifier. |  |
| **include_members** | **Boolean** | Whether to include group members. | [optional] |

### Return type

[**RoomGroupWrapper**](RoomGroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_groups

> <RoomGroupArrayWrapper> get_room_groups(id, opts)

List room groups

Returns a list of all room groups for the current user.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-groups/).

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

api_instance = DocspaceApiSdk::Rooms::GroupsApi.new
id = 10 # Integer | The group unique identifier.
opts = {
  include_members: true # Boolean | Whether to include group members.
}

begin
  # List room groups
  result = api_instance.get_room_groups(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::GroupsApi->get_room_groups: #{e}"
end
```

#### Using the get_room_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomGroupArrayWrapper>, Integer, Hash)> get_room_groups_with_http_info(id, opts)

```ruby
begin
  # List room groups
  data, status_code, headers = api_instance.get_room_groups_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomGroupArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::GroupsApi->get_room_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The group unique identifier. |  |
| **include_members** | **Boolean** | Whether to include group members. | [optional] |

### Return type

[**RoomGroupArrayWrapper**](RoomGroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_room_group

> <RoomGroupWrapper> update_room_group(id, update_room_group_request)

Update room group

Updates room group properties and adds or removes rooms.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-room-group/).

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

api_instance = DocspaceApiSdk::Rooms::GroupsApi.new
id = 1 # Integer | The group ID.
update_room_group_request = DocspaceApiSdk::UpdateRoomGroupRequest.new # UpdateRoomGroupRequest | The request for updating a group.

begin
  # Update room group
  result = api_instance.update_room_group(id, update_room_group_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::GroupsApi->update_room_group: #{e}"
end
```

#### Using the update_room_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomGroupWrapper>, Integer, Hash)> update_room_group_with_http_info(id, update_room_group_request)

```ruby
begin
  # Update room group
  data, status_code, headers = api_instance.update_room_group_with_http_info(id, update_room_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RoomGroupWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::GroupsApi->update_room_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The group ID. |  |
| **update_room_group_request** | [**UpdateRoomGroupRequest**](UpdateRoomGroupRequest.md) | The request for updating a group. |  |

### Return type

[**RoomGroupWrapper**](RoomGroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

