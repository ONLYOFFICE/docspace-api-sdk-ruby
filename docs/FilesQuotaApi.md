# DocspaceApiSdk::FilesQuotaApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**reset_room_quota**](FilesQuotaApi.md#reset_room_quota) | **PUT** /api/2.0/files/rooms/resetquota | Reset the room quota limit |
| [**update_rooms_quota**](FilesQuotaApi.md#update_rooms_quota) | **PUT** /api/2.0/files/rooms/roomquota | Change the room quota limit |


## reset_room_quota

> <FolderIntegerArrayWrapper> reset_room_quota(opts)

Reset the room quota limit

Resets the quota limit for the rooms with the IDs specified in the request.

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
  update_rooms_room_ids_request_dto_integer: DocspaceApiSdk::UpdateRoomsRoomIdsRequestDtoInteger.new # UpdateRoomsRoomIdsRequestDtoInteger | 
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

> <Array(<FolderIntegerArrayWrapper>, Integer, Hash)> reset_room_quota_with_http_info(opts)

```ruby
begin
  # Reset the room quota limit
  data, status_code, headers = api_instance.reset_room_quota_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::QuotaApi->reset_room_quota_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_rooms_room_ids_request_dto_integer** | [**UpdateRoomsRoomIdsRequestDtoInteger**](UpdateRoomsRoomIdsRequestDtoInteger.md) |  | [optional] |

### Return type

[**FolderIntegerArrayWrapper**](FolderIntegerArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rooms_quota

> <FolderIntegerArrayWrapper> update_rooms_quota(opts)

Change the room quota limit

Changes the quota limit for the rooms with the IDs specified in the request.

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
  update_rooms_quota_request_dto_integer: DocspaceApiSdk::UpdateRoomsQuotaRequestDtoInteger.new # UpdateRoomsQuotaRequestDtoInteger | 
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

> <Array(<FolderIntegerArrayWrapper>, Integer, Hash)> update_rooms_quota_with_http_info(opts)

```ruby
begin
  # Change the room quota limit
  data, status_code, headers = api_instance.update_rooms_quota_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::QuotaApi->update_rooms_quota_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_rooms_quota_request_dto_integer** | [**UpdateRoomsQuotaRequestDtoInteger**](UpdateRoomsQuotaRequestDtoInteger.md) |  | [optional] |

### Return type

[**FolderIntegerArrayWrapper**](FolderIntegerArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

