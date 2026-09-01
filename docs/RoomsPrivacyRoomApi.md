# DocspaceApiSdk::RoomsPrivacyRoomApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_keys**](RoomsPrivacyRoomApi.md#delete_keys) | **DELETE** /api/2.0/privacyroom/keys/{id} | Deletes an encryption key and removes it from the system. |
| [**get_user_keys**](RoomsPrivacyRoomApi.md#get_user_keys) | **GET** /api/2.0/privacyroom/keys | Retrieves encryption keys associated with the current user. |
| [**get_user_keys_for_room**](RoomsPrivacyRoomApi.md#get_user_keys_for_room) | **GET** /api/2.0/privacyroom/{roomId}/access | Retrieves the encryption keys associated with a specific privacy room. |
| [**replace_key**](RoomsPrivacyRoomApi.md#replace_key) | **PUT** /api/2.0/privacyroom/keys | Replaces an existing encryption key with a new one for the user. |
| [**set_keys**](RoomsPrivacyRoomApi.md#set_keys) | **POST** /api/2.0/privacyroom/keys | Creates and sets encryption keys for the user. |


## delete_keys

> delete_keys(id)

Deletes an encryption key and removes it from the system.

Deletes an encryption key and removes it from the system based on the provided key identifier.    Breaking change in DocSpace 4.0: the endpoint used to answer 200 with the caller's remaining  encryption keys and now answers 204 with no body. A client that read that list must call  `GET api/2.0/privacyroom/keys` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-keys/).

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

api_instance = DocspaceApiSdk::Rooms::PrivacyRoomApi.new
id = '00000000-0000-0000-0000-000000000000' # String | The unique identifier of the encryption key to be deleted.

begin
  # Deletes an encryption key and removes it from the system.
  api_instance.delete_keys(id)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::PrivacyRoomApi->delete_keys: #{e}"
end
```

#### Using the delete_keys_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_keys_with_http_info(id)

```ruby
begin
  # Deletes an encryption key and removes it from the system.
  data, status_code, headers = api_instance.delete_keys_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::PrivacyRoomApi->delete_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the encryption key to be deleted. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_keys

> <EncryptionKeyArrayWrapper> get_user_keys

Retrieves encryption keys associated with the current user.

Retrieves encryption keys associated with the current user.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys/).

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

api_instance = DocspaceApiSdk::Rooms::PrivacyRoomApi.new

begin
  # Retrieves encryption keys associated with the current user.
  result = api_instance.get_user_keys
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::PrivacyRoomApi->get_user_keys: #{e}"
end
```

#### Using the get_user_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EncryptionKeyArrayWrapper>, Integer, Hash)> get_user_keys_with_http_info

```ruby
begin
  # Retrieves encryption keys associated with the current user.
  data, status_code, headers = api_instance.get_user_keys_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EncryptionKeyArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::PrivacyRoomApi->get_user_keys_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**EncryptionKeyArrayWrapper**](EncryptionKeyArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_keys_for_room

> <EncryptionKeyArrayWrapper> get_user_keys_for_room(room_id)

Retrieves the encryption keys associated with a specific privacy room.

Retrieves the encryption keys associated with a specific privacy room.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-keys-for-room/).

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

api_instance = DocspaceApiSdk::Rooms::PrivacyRoomApi.new
room_id = 56 # Integer | The identifier of the privacy room.

begin
  # Retrieves the encryption keys associated with a specific privacy room.
  result = api_instance.get_user_keys_for_room(room_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::PrivacyRoomApi->get_user_keys_for_room: #{e}"
end
```

#### Using the get_user_keys_for_room_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EncryptionKeyArrayWrapper>, Integer, Hash)> get_user_keys_for_room_with_http_info(room_id)

```ruby
begin
  # Retrieves the encryption keys associated with a specific privacy room.
  data, status_code, headers = api_instance.get_user_keys_for_room_with_http_info(room_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EncryptionKeyArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::PrivacyRoomApi->get_user_keys_for_room_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | The identifier of the privacy room. |  |

### Return type

[**EncryptionKeyArrayWrapper**](EncryptionKeyArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## replace_key

> <EncryptionKeyArrayWrapper> replace_key(opts)

Replaces an existing encryption key with a new one for the user.

Replaces an existing encryption key with a new one for the user.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/replace-key/).

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

api_instance = DocspaceApiSdk::Rooms::PrivacyRoomApi.new
opts = {
  encryption_key_request_dto: DocspaceApiSdk::EncryptionKeyRequestDto.new # EncryptionKeyRequestDto | The request object containing the public and private key information to replace the existing key.
}

begin
  # Replaces an existing encryption key with a new one for the user.
  result = api_instance.replace_key(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::PrivacyRoomApi->replace_key: #{e}"
end
```

#### Using the replace_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EncryptionKeyArrayWrapper>, Integer, Hash)> replace_key_with_http_info(opts)

```ruby
begin
  # Replaces an existing encryption key with a new one for the user.
  data, status_code, headers = api_instance.replace_key_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EncryptionKeyArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::PrivacyRoomApi->replace_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **encryption_key_request_dto** | [**EncryptionKeyRequestDto**](EncryptionKeyRequestDto.md) | The request object containing the public and private key information to replace the existing key. | [optional] |

### Return type

[**EncryptionKeyArrayWrapper**](EncryptionKeyArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_keys

> <EncryptionKeyArrayWrapper> set_keys(opts)

Creates and sets encryption keys for the user.

Creates and sets encryption keys for the user.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-keys/).

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

api_instance = DocspaceApiSdk::Rooms::PrivacyRoomApi.new
opts = {
  encryption_key_request_dto: DocspaceApiSdk::EncryptionKeyRequestDto.new # EncryptionKeyRequestDto | The request object containing public and private key information.
}

begin
  # Creates and sets encryption keys for the user.
  result = api_instance.set_keys(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::PrivacyRoomApi->set_keys: #{e}"
end
```

#### Using the set_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EncryptionKeyArrayWrapper>, Integer, Hash)> set_keys_with_http_info(opts)

```ruby
begin
  # Creates and sets encryption keys for the user.
  data, status_code, headers = api_instance.set_keys_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EncryptionKeyArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::PrivacyRoomApi->set_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **encryption_key_request_dto** | [**EncryptionKeyRequestDto**](EncryptionKeyRequestDto.md) | The request object containing public and private key information. | [optional] |

### Return type

[**EncryptionKeyArrayWrapper**](EncryptionKeyArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

