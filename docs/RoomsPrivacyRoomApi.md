# DocspaceApiSdk::RoomsPrivacyRoomApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_keys**](RoomsPrivacyRoomApi.md#delete_keys) | **DELETE** /api/2.0/privacyroom/keys/{id} | Delete an encryption key |
| [**get_user_keys**](RoomsPrivacyRoomApi.md#get_user_keys) | **GET** /api/2.0/privacyroom/keys | Get own encryption keys |
| [**get_user_keys_for_room**](RoomsPrivacyRoomApi.md#get_user_keys_for_room) | **GET** /api/2.0/privacyroom/{roomId}/access | Get private room access keys |
| [**replace_key**](RoomsPrivacyRoomApi.md#replace_key) | **PUT** /api/2.0/privacyroom/keys | Rotate an encryption key |
| [**set_keys**](RoomsPrivacyRoomApi.md#set_keys) | **POST** /api/2.0/privacyroom/keys | Create an encryption key |


## delete_keys

> delete_keys(id)

Delete an encryption key

Removes one encryption key pair from the calling user's own key set and answers 204 with no body. The pair is  named by the `id` of an entry of `GET api/2.0/privacyroom/keys`; the caller's other pairs stay as they are.  The call is destructive and cannot be repeated: the key material is gone for good, a second delete of the same  `id`, like an `id` that was never stored, is answered with 404, and there is no parameter for another user's  keys, so an authenticated member only ever deletes their own while a guest is refused. Deleting the last key  the caller holds locks them out of the private rooms they belong to, their own rooms included: the rooms and  their content survive untouched and stay listed as private, but `GET api/2.0/privacyroom/{roomId}/access` then  refuses the caller until a new key is stored with `POST api/2.0/privacyroom/keys`. Before DocSpace 4.0 the  call answered 200 with the caller's remaining keys, so a client that read that list has to call  `GET api/2.0/privacyroom/keys` instead.

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
id = '9924256B-447C-4F19-9dbd-8ad8c39e8ff5' # String | The pair to delete, taken from the `id` of an entry of `GET api/2.0/privacyroom/keys`. Only the caller's own  pairs can be named here.

begin
  # Delete an encryption key
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
  # Delete an encryption key
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
| **id** | **String** | The pair to delete, taken from the `id` of an entry of `GET api/2.0/privacyroom/keys`. Only the caller's own  pairs can be named here. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_keys

> <EncryptionKeyArrayWrapper> get_user_keys

Get own encryption keys

Returns every encryption key pair the calling user holds, the encrypted private half included, which is the  material a client needs in order to decrypt content in a private room. The set is personal and there is no  parameter for another user's keys: an authenticated caller reads only their own, and a guest, who cannot own  key material at all, always reads an empty set. The call is read-only. An empty answer, whether an empty list  or none at all, means no key has been created yet, and until `POST api/2.0/privacyroom/keys` creates one the  user cannot be invited to a private room. Each entry carries the pair's `id`, its owner in `userId`, the  moment the material was stored in `date`, the public half, the private half encrypted with the user's  password, and the portal-wide crypto engine in `cryptoEngineId`. For the keys that open a whole private room  use `GET api/2.0/privacyroom/{roomId}/access`, and for the keys a single file is shared with use  `GET api/2.0/files/file/{fileId}/publickeys`; this operation is about the caller alone.

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
  # Get own encryption keys
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
  # Get own encryption keys
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

Get private room access keys

Returns the encryption keys that give access to a private room: one entry per key held by each of its members,  which is what a client needs in order to encrypt a file key for everyone allowed to open the room's content.  Only the caller's own entries carry `privateKeyEnc`; another member's entry carries the public half alone, and  an entry with no public half is not reported as access at all. The room has to be a private one, a room  created without private mode holds no access keys and the call is refused, and it has to still exist: an  unknown room, or one already moved to Trash, is reported as missing, while an archived private room still  answers. Access follows room membership and not portal role: any member from read access upwards receives the  full set, whereas a DocSpace administrator who is not a member is refused, and so is a caller holding no key  of their own, the room creator included once they delete their last key. The call is read-only. For the keys  of a single file use `GET api/2.0/files/file/{fileId}/publickeys`.

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
room_id = 56 # Integer | The private room whose access keys are read. Take it from the `id` of the room returned by  `POST api/2.0/files/rooms` or listed by `GET api/2.0/files/rooms`.

begin
  # Get private room access keys
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
  # Get private room access keys
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
| **room_id** | **Integer** | The private room whose access keys are read. Take it from the `id` of the room returned by  `POST api/2.0/files/rooms` or listed by `GET api/2.0/files/rooms`. |  |

### Return type

[**EncryptionKeyArrayWrapper**](EncryptionKeyArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## replace_key

> <EncryptionKeyArrayWrapper> replace_key(opts)

Rotate an encryption key

Rotates one encryption key pair of the calling user: the entry whose `id` matches is overwritten with the  submitted `publicKey` and `privateKeyEnc`, and the caller's other pairs are left untouched. The pair has to  exist already, an `id` that is not in the caller's set is answered with 404, and a first key is created with  `POST api/2.0/privacyroom/keys`. This is a full replacement rather than a merge: both halves are mandatory,  and a request that omits or blanks one of them is rejected as invalid with the stored pair surviving  unchanged, so a rotation that means to keep the private half has to send it again. Omitting `id` targets the  all-zero pair, the one a client that never sets an id keeps rotating. Every authenticated member rotates their  own keys and only their own, and a guest is refused. The call is mutating, and repeating it with the same body  leaves the same state. It answers with every key the caller holds afterwards, and from then on  `GET api/2.0/privacyroom/{roomId}/access` reports the new public half for this member.

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
  encryption_key_request_dto: DocspaceApiSdk::EncryptionKeyRequestDto.new # EncryptionKeyRequestDto | 
}

begin
  # Rotate an encryption key
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
  # Rotate an encryption key
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
| **encryption_key_request_dto** | [**EncryptionKeyRequestDto**](EncryptionKeyRequestDto.md) |  | [optional] |

### Return type

[**EncryptionKeyArrayWrapper**](EncryptionKeyArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_keys

> <EncryptionKeyArrayWrapper> set_keys(opts)

Create an encryption key

Stores a new encryption key pair for the calling user and answers with that user's whole key set. The material  is end-to-end: `publicKey` is the half other members use to encrypt file keys for this user, while  `privateKeyEnc` arrives already encrypted with the user's own password, so the portal keeps it as opaque text.  A member must hold at least one key before they can be invited to a private room, which makes this the first  call of the private-room flow. Every authenticated member manages their own keys and only their own, there is  no parameter for somebody else's, and a guest is refused, which is also why a guest cannot become a member of  a private room. The call is mutating and is not safe to repeat: `id` names the pair inside the caller's set  and an `id` that is already stored is answered with 409, while a request that omits or blanks either half is  rejected as invalid and stores nothing. A successful call answers 201 with every key the caller now holds. To  change the material of an existing pair use `PUT api/2.0/privacyroom/keys`.

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
  encryption_key_request_dto: DocspaceApiSdk::EncryptionKeyRequestDto.new # EncryptionKeyRequestDto | 
}

begin
  # Create an encryption key
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
  # Create an encryption key
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
| **encryption_key_request_dto** | [**EncryptionKeyRequestDto**](EncryptionKeyRequestDto.md) |  | [optional] |

### Return type

[**EncryptionKeyArrayWrapper**](EncryptionKeyArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

