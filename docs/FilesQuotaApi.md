# DocspaceApiSdk::FilesQuotaApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**reset_room_quota**](FilesQuotaApi.md#reset_room_quota) | **PUT** /api/2.0/files/rooms/resetquota | Reset the room quota limit |
| [**update_rooms_quota**](FilesQuotaApi.md#update_rooms_quota) | **PUT** /api/2.0/files/rooms/roomquota | Change the room quota limit |


## reset_room_quota

> <FolderArrayWrapper> reset_room_quota(opts)

Reset the room quota limit

Returns every listed room to the default room quota of the portal and streams the updated rooms back in the  order they were given. This is not the same as removing the limit: the room stops carrying its own value and  starts following the portal default, which a portal administrator can change at any time. The per-room quota  feature has to be on, the caller must be a manager of each listed room, and an archived room or a room in the  trash is refused. The list is not transactional, so rooms processed before a failing one keep the default and  the rest keep what they had. Only numeric room ids are processed, which means ids of rooms stored in a  connected third-party account are silently skipped. Use `PUT api/2.0/files/rooms/roomquota` to set an explicit  value, and a quota of -1 in `PUT api/2.0/files/rooms/{id}` to leave the room with no custom limit at all.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-room-quota/).

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

api_instance = DocspaceApiSdk::Files::QuotaApi.new
opts = {
  update_rooms_room_ids_request_dto: DocspaceApiSdk::UpdateRoomsRoomIdsRequestDto.new # UpdateRoomsRoomIdsRequestDto | 
}

begin
  # Reset the room quota limit
  result = api_instance.reset_room_quota(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::QuotaApi->reset_room_quota: #{e}"
end
```

#### Using the reset_room_quota_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderArrayWrapper>, Integer, Hash)> reset_room_quota_with_http_info(opts)

```ruby
begin
  # Reset the room quota limit
  data, status_code, headers = api_instance.reset_room_quota_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::QuotaApi->reset_room_quota_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_rooms_room_ids_request_dto** | [**UpdateRoomsRoomIdsRequestDto**](UpdateRoomsRoomIdsRequestDto.md) |  | [optional] |

### Return type

[**FolderArrayWrapper**](FolderArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rooms_quota

> <FolderArrayWrapper> update_rooms_quota(opts)

Change the room quota limit

Sets the same custom storage limit, in bytes, on every listed room and streams the updated rooms back in the  order they were given. The per-room quota feature has to be on for the portal, and the value must stay within  the portal own limit, otherwise the call is refused before anything is written. The caller must be a manager  of each listed room, and an archived room or a room in the trash is refused. The list is not transactional:  rooms processed before the offending one keep their new limit, so a failed call has to be checked room by  room. Only numeric room ids are processed, which means ids of rooms stored in a connected third-party account  are silently skipped. A room whose limit already equals the requested value is left untouched and still  returned. To go back to the portal default use `PUT api/2.0/files/rooms/resetquota`, and to drop the custom  limit entirely send a quota of -1 to `PUT api/2.0/files/rooms/{id}`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-rooms-quota/).

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

api_instance = DocspaceApiSdk::Files::QuotaApi.new
opts = {
  update_rooms_quota_request_dto: DocspaceApiSdk::UpdateRoomsQuotaRequestDto.new # UpdateRoomsQuotaRequestDto | 
}

begin
  # Change the room quota limit
  result = api_instance.update_rooms_quota(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::QuotaApi->update_rooms_quota: #{e}"
end
```

#### Using the update_rooms_quota_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderArrayWrapper>, Integer, Hash)> update_rooms_quota_with_http_info(opts)

```ruby
begin
  # Change the room quota limit
  data, status_code, headers = api_instance.update_rooms_quota_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::QuotaApi->update_rooms_quota_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_rooms_quota_request_dto** | [**UpdateRoomsQuotaRequestDto**](UpdateRoomsQuotaRequestDto.md) |  | [optional] |

### Return type

[**FolderArrayWrapper**](FolderArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

