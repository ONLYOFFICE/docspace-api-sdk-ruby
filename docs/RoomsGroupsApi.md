# DocspaceApiSdk::RoomsGroupsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_room_group**](RoomsGroupsApi.md#add_room_group) | **POST** /api/2.0/files/group | Add a new room group |
| [**change_room_group_icon**](RoomsGroupsApi.md#change_room_group_icon) | **POST** /api/2.0/files/group/{id}/icon | Change room group icon |
| [**delete_room_group**](RoomsGroupsApi.md#delete_room_group) | **DELETE** /api/2.0/files/group/{id} | Delete a room group |
| [**get_room_group_info**](RoomsGroupsApi.md#get_room_group_info) | **GET** /api/2.0/files/group/{id} | Get room group info |
| [**get_room_groups**](RoomsGroupsApi.md#get_room_groups) | **GET** /api/2.0/files/group | List room groups |
| [**update_room_group**](RoomsGroupsApi.md#update_room_group) | **PUT** /api/2.0/files/group/{id} | Update room group |


## add_room_group

> <RoomGroupWrapper> add_room_group(opts)

Add a new room group

Creates a room group, a personal collection that gathers rooms the caller already works with under one name  and icon; it belongs to the account that created it and is never shown to other members of the portal. Pass  the group name, the identifier of one of the built-in covers offered by `GET api/2.0/files/rooms/covers`, and  a list of at least one room - a number for a room stored in the portal, a string for a room on a connected  third-party account. Any role may create its own group, a guest included: what is checked is read access to  each listed room, not the role of the caller. Repeated identifiers are collapsed, and a value that is not a  room identifier at all is rejected as an invalid request. When none of the listed rooms can be read the group  is not created; when only some of them can, the group is created with those rooms and the call is still  reported as failed, so re-read `GET api/2.0/files/group` before retrying. A room may sit in several groups,  and two groups of the same account may carry the same name. The answer is the stored group with its rooms.

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
  room_group_request_dto: DocspaceApiSdk::RoomGroupRequestDto.new({name: 'Client projects', icon: 'star', rooms: [12,  15,  folder-123-abc]}) # RoomGroupRequestDto | 
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

Change room group icon

Replaces the icon of one of the caller's own room groups and returns the whole group, its name and its rooms  left as they were. Send the identifier of one of the built-in covers offered by  `GET api/2.0/files/rooms/covers`; an empty string strips the icon, after which the group comes back with an  empty `icon`, and any other value - including a word that merely reads like one, such as `none` - is rejected  as an invalid request. An uploaded image cannot be used here, unlike the logo of a room. Leaving `icon` out of  the body or sending it as null is accepted and changes nothing, whereas a request that carries no body at all,  or a body that is not JSON, is refused. Setting the icon the group already has is accepted as well, so  retrying the call is safe. Any role may re-icon its own group, and a group belonging to another account is  answered as missing rather than refused, exactly as reading it would be.

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
id = 42 # Integer | The room group to re-icon, identified by the value `GET api/2.0/files/group` reports for it. A group of  another account cannot be addressed and reads as missing.
opts = {
  icon_request: DocspaceApiSdk::IconRequest.new # IconRequest | The icon to give the group. A body that leaves the icon out is accepted and changes nothing.
}

begin
  # Change room group icon
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
  # Change room group icon
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
| **id** | **Integer** | The room group to re-icon, identified by the value `GET api/2.0/files/group` reports for it. A group of  another account cannot be addressed and reads as missing. |  |
| **icon_request** | [**IconRequest**](IconRequest.md) | The icon to give the group. A body that leaves the icon out is accepted and changes nothing. | [optional] |

### Return type

[**RoomGroupWrapper**](RoomGroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_room_group

> delete_room_group(id, opts)

Delete a room group

Deletes one of the caller's own room groups. Only the collection goes away: the rooms it gathered, their  content and the shares on them are left exactly as they were, and a room that was in no other group simply  stops being grouped. Deleting a group of another account is refused, and an identifier that names nothing -  because it never existed, or because the group has already been deleted - is answered as missing, so repeating  the call after a successful delete does not report success a second time. The operation is destructive and  cannot be undone: there is no trash for groups, and rebuilding one means calling `POST api/2.0/files/group`  again with the same name, icon and rooms, which gives it a new identifier. Nothing is returned in the body.  The `includeMembers` parameter is accepted here because the route shares its contract with  `GET api/2.0/files/group/{id}`, and has no effect on what is deleted. Read the group first when the rooms it  gathers still have to be recorded somewhere.

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
id = 42 # Integer | The room group to act on, identified by the value `GET api/2.0/files/group` reports for it. A group of another  account cannot be addressed and reads as missing.
opts = {
  include_members: true # Boolean | Whether the rooms of the group are listed in the answer: true fills the `rooms` array, false leaves it out and  reports only how many there are in `totalRooms`.
}

begin
  # Delete a room group
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
  # Delete a room group
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
| **id** | **Integer** | The room group to act on, identified by the value `GET api/2.0/files/group` reports for it. A group of another  account cannot be addressed and reads as missing. |  |
| **include_members** | **Boolean** | Whether the rooms of the group are listed in the answer: true fills the `rooms` array, false leaves it out and  reports only how many there are in `totalRooms`. | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_group_info

> <RoomGroupWrapper> get_room_group_info(id, opts)

Get room group info

Returns one room group of the calling account together with the rooms it gathers. Groups are personal: an  identifier that belongs to another member is answered the same way as one that was never created or has  already been deleted, and a portal administrator is no exception to that rule. Take the identifier from  `GET api/2.0/files/group`, which lists the groups the caller owns. Set `includeMembers` to false to get the  group without the `rooms` array, which is the cheaper form when only the name, the icon and the number of  rooms are needed; `totalRooms` is filled either way. A room moved to the archive is left out of both `rooms`  and `totalRooms` while its membership survives, so taking the room out of the archive brings it back into the  group. Rooms stored in the portal are listed before rooms on connected third-party accounts. The call is  read-only and changes nothing about the group or the rooms it refers to.

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
id = 42 # Integer | The room group to act on, identified by the value `GET api/2.0/files/group` reports for it. A group of another  account cannot be addressed and reads as missing.
opts = {
  include_members: true # Boolean | Whether the rooms of the group are listed in the answer: true fills the `rooms` array, false leaves it out and  reports only how many there are in `totalRooms`.
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
| **id** | **Integer** | The room group to act on, identified by the value `GET api/2.0/files/group` reports for it. A group of another  account cannot be addressed and reads as missing. |  |
| **include_members** | **Boolean** | Whether the rooms of the group are listed in the answer: true fills the `rooms` array, false leaves it out and  reports only how many there are in `totalRooms`. | [optional] |

### Return type

[**RoomGroupWrapper**](RoomGroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_groups

> <RoomGroupArrayWrapper> get_room_groups(opts)

List room groups

Returns every room group of the calling account, each with the rooms it gathers. Only groups the caller  created are listed: groups of other members never appear here, and an account that has never made one gets an  empty array back. Set `includeMembers` to false to leave the `rooms` array out of every entry and keep the  name, the icon and `totalRooms` alone, which is the cheaper form when the list is only being shown as a menu.  Archived rooms are skipped in both the `rooms` array and the `totalRooms` count, and reappear once the room is  taken out of the archive. The listing is neither paged nor filtered - it always carries the whole set - and  the order of the entries is not contractual, so sort them on the client when the order matters. The call is  read-only. Use `GET api/2.0/files/group/{id}` when the identifier of a single group is already known, and  `POST api/2.0/files/group` to add one.

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
opts = {
  include_members: true, # Boolean | Whether the rooms of each group are listed in the answer: true fills the `rooms` array of every entry, false  leaves it out and reports only how many there are in `totalRooms`.
  search_area: DocspaceApiSdk::SearchArea::ACTIVE # SearchArea | The section to list the groups of: Active for Rooms and Forms for Forms. Active when omitted.
}

begin
  # List room groups
  result = api_instance.get_room_groups(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::GroupsApi->get_room_groups: #{e}"
end
```

#### Using the get_room_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RoomGroupArrayWrapper>, Integer, Hash)> get_room_groups_with_http_info(opts)

```ruby
begin
  # List room groups
  data, status_code, headers = api_instance.get_room_groups_with_http_info(opts)
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
| **include_members** | **Boolean** | Whether the rooms of each group are listed in the answer: true fills the `rooms` array of every entry, false  leaves it out and reports only how many there are in `totalRooms`. | [optional] |
| **search_area** | **SearchArea** | The section to list the groups of: Active for Rooms and Forms for Forms. Active when omitted. | [optional] |

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

Applies changes to one of the caller's own room groups: a new name, rooms to attach, rooms to detach, or any  combination of the three in a single call. A body that carries none of the three (`{}`) is accepted and  changes nothing, while a body that names them and leaves every one of them empty asks for an update that  cannot be performed and is rejected as an invalid request. `roomsToAdd` is resolved the way creation resolves  its list: every identifier has to name a room the caller can read, repeats and rooms already in the group are  collapsed, and when only part of the list resolves the rest is still attached and the call is reported as  failed. `roomsToRemove` works the other way round - a room already in the group is always detached, even when  the caller has since lost access to it, whereas an identifier that is not in the group is resolved first and  refused when it names nothing. The steps are applied in order and are not rolled back when a later one fails.  A group of another account is answered as missing. The answer is the group as stored after the call.

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
id = 42 # Integer | The room group to change, identified by the value `GET api/2.0/files/group` reports for it. A group of another  account cannot be addressed and reads as missing.
update_room_group_request = DocspaceApiSdk::UpdateRoomGroupRequest.new # UpdateRoomGroupRequest | The changes to apply. Carrying none of them leaves the group as it is, and each of them may be sent on its own  or together with the others.

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
| **id** | **Integer** | The room group to change, identified by the value `GET api/2.0/files/group` reports for it. A group of another  account cannot be addressed and reads as missing. |  |
| **update_room_group_request** | [**UpdateRoomGroupRequest**](UpdateRoomGroupRequest.md) | The changes to apply. Carrying none of them leaves the group as it is, and each of them may be sent on its own  or together with the others. |  |

### Return type

[**RoomGroupWrapper**](RoomGroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

