# DocspaceApiSdk::ApiKeysApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_api_key**](ApiKeysApi.md#create_api_key) | **POST** /api/2.0/keys | Create a user API key |
| [**delete_api_key**](ApiKeysApi.md#delete_api_key) | **DELETE** /api/2.0/keys/{keyId} | Delete an API key |
| [**get_all_permissions**](ApiKeysApi.md#get_all_permissions) | **GET** /api/2.0/keys/permissions | Get API key permissions |
| [**get_api_key**](ApiKeysApi.md#get_api_key) | **GET** /api/2.0/keys/@self | Get the current API key |
| [**get_api_keys**](ApiKeysApi.md#get_api_keys) | **GET** /api/2.0/keys | Get the API keys |
| [**update_api_key**](ApiKeysApi.md#update_api_key) | **PUT** /api/2.0/keys/{keyId} | Update an API key |


## create_api_key

> <ApiKeyResponseWrapper> create_api_key(opts)

Create a user API key

Creates an API key that authenticates requests as the calling account, and is the only operation that ever  returns the secret.  Any portal member except a guest may create one; when the portal limits developer tools to administrators,  only a DocSpace administrator may call it.  The call is not idempotent - every call issues a new key - and it is throttled, so a client that retries on a  timeout can end up with several keys.  The answer carries the full secret in `key`: it is shown here and never again, later reads expose only the  last four characters in `keyPostfix`, so store it now.  Pass the scopes the key may use in `permissions`, taking the values from  `GET api/2.0/keys/permissions`; pass `*` or omit the field to record a key without scope restrictions, and set  `expiresInDays` to make it expire, otherwise it stays valid until it is deleted.  An empty `permissions` array and an unknown scope are both rejected with 400.  Send the key in the `Authorization` header as `Bearer sk-...` to use it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-api-key/).

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

api_instance = DocspaceApiSdk::ApiKeys::ApiKeysApi.new
opts = {
  create_api_key_request_dto: DocspaceApiSdk::CreateApiKeyRequestDto.new({name: 'My API Key'}) # CreateApiKeyRequestDto | 
}

begin
  # Create a user API key
  result = api_instance.create_api_key(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling ApiKeys::ApiKeysApi->create_api_key: #{e}"
end
```

#### Using the create_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyResponseWrapper>, Integer, Hash)> create_api_key_with_http_info(opts)

```ruby
begin
  # Create a user API key
  data, status_code, headers = api_instance.create_api_key_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling ApiKeys::ApiKeysApi->create_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_api_key_request_dto** | [**CreateApiKeyRequestDto**](CreateApiKeyRequestDto.md) |  | [optional] |

### Return type

[**ApiKeyResponseWrapper**](ApiKeyResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_api_key

> <BooleanWrapper> delete_api_key(key_id)

Delete an API key

Deletes the API key with the ID given in the route, so that it stops authenticating requests immediately.  The caller may delete a key they created themselves, and a DocSpace administrator may delete any key of the  portal.  The removal is permanent and cannot be undone: the secret was only ever readable at creation time, so a  deleted key cannot be restored and a new one has to be issued through `POST api/2.0/keys`.  To stop a key temporarily instead, set `isActive` to false through `PUT api/2.0/keys/{keyId}`.  The answer is a plain boolean reporting whether the key was removed.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-api-key/).

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

api_instance = DocspaceApiSdk::ApiKeys::ApiKeysApi.new
key_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the key to delete, taken from the route. Read it from the `id` of an entry of  `GET api/2.0/keys` - it is not the secret and not the `keyPostfix`.

begin
  # Delete an API key
  result = api_instance.delete_api_key(key_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling ApiKeys::ApiKeysApi->delete_api_key: #{e}"
end
```

#### Using the delete_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> delete_api_key_with_http_info(key_id)

```ruby
begin
  # Delete an API key
  data, status_code, headers = api_instance.delete_api_key_with_http_info(key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling ApiKeys::ApiKeysApi->delete_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The ID of the key to delete, taken from the route. Read it from the `id` of an entry of  `GET api/2.0/keys` - it is not the secret and not the `keyPostfix`. |  |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_permissions

> <STRINGArrayWrapper> get_all_permissions

Get API key permissions

Returns every scope value the portal accepts in the `permissions` array of an API key.  Read it before `POST api/2.0/keys` or `PUT api/2.0/keys/{keyId}`, because any other value is rejected with  400.  Any portal member except a guest may call it, and the call is read-only.  The answer is a flat list sorted alphabetically, holding the per-area scopes such as `accounts:read`,  `files:write` and `rooms:write`, the portal-wide `*:read` and `*:write`, and `*` which stands for a key  without scope restrictions.  The list is fixed for the portal and identical for every caller, so it can be cached by the client.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-permissions/).

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

api_instance = DocspaceApiSdk::ApiKeys::ApiKeysApi.new

begin
  # Get API key permissions
  result = api_instance.get_all_permissions
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling ApiKeys::ApiKeysApi->get_all_permissions: #{e}"
end
```

#### Using the get_all_permissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<STRINGArrayWrapper>, Integer, Hash)> get_all_permissions_with_http_info

```ruby
begin
  # Get API key permissions
  data, status_code, headers = api_instance.get_all_permissions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <STRINGArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling ApiKeys::ApiKeysApi->get_all_permissions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**STRINGArrayWrapper**](STRINGArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_api_key

> <ApiKeyResponseWrapper> get_api_key

Get the current API key

Returns the API key that authenticated this very request, letting the holder of a key find out what it is  allowed to do without knowing its ID.  The key is identified by the `Authorization` header of the call itself, so the request has to be sent as  `Bearer sk-...`; a session authenticated in any other way has no key to report and this operation is not  usable for it.  The call is read-only and returns one entry, with the same fields as `GET api/2.0/keys` and without the  secret - read `permissions` for the granted scopes, `expiresAt` for the expiry and `isActive` for the state.  To look at a key other than the one in use, call `GET api/2.0/keys` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-api-key/).

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

api_instance = DocspaceApiSdk::ApiKeys::ApiKeysApi.new

begin
  # Get the current API key
  result = api_instance.get_api_key
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling ApiKeys::ApiKeysApi->get_api_key: #{e}"
end
```

#### Using the get_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyResponseWrapper>, Integer, Hash)> get_api_key_with_http_info

```ruby
begin
  # Get the current API key
  data, status_code, headers = api_instance.get_api_key_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling ApiKeys::ApiKeysApi->get_api_key_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiKeyResponseWrapper**](ApiKeyResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_api_keys

> <ApiKeyResponseArrayWrapper> get_api_keys

Get the API keys

Returns the API keys the caller is allowed to see, which is not the same set for everybody: a DocSpace  administrator gets every key of the portal, while any other member gets only the keys they created  themselves.  Any portal member except a guest may call it, and the call is read-only.  The secrets are not returned - each entry identifies its key by `id` and by the last four characters in  `keyPostfix`, and a secret can only be read once, at the moment `POST api/2.0/keys` creates it.  Expired and deactivated keys stay in the list, so check `expiresAt` against the current time and read  `isActive` before treating an entry as usable.  An empty list means the caller has created no keys, not that the portal has none.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-api-keys/).

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

api_instance = DocspaceApiSdk::ApiKeys::ApiKeysApi.new

begin
  # Get the API keys
  result = api_instance.get_api_keys
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling ApiKeys::ApiKeysApi->get_api_keys: #{e}"
end
```

#### Using the get_api_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiKeyResponseArrayWrapper>, Integer, Hash)> get_api_keys_with_http_info

```ruby
begin
  # Get the API keys
  data, status_code, headers = api_instance.get_api_keys_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiKeyResponseArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling ApiKeys::ApiKeysApi->get_api_keys_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiKeyResponseArrayWrapper**](ApiKeyResponseArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_api_key

> <BooleanWrapper> update_api_key(key_id, update_api_key_request)

Update an API key

Renames an API key, replaces the scopes it may use, or activates and deactivates it, without changing the  secret.  The caller may update a key they created themselves, and a DocSpace administrator may update any key of the  portal.  Take the values for `permissions` from `GET api/2.0/keys/permissions`; an unknown scope or an empty array is  rejected with 400, and the fields that are left out keep their current values.  The answer is a plain boolean: true when the key was changed, and false when it was not - which is also what  an already expired key returns, because such a key is left untouched instead of being reported as an error.  Deactivating a key through `isActive` stops it from authenticating while keeping it in the list, so use it  when the key may be needed again and `DELETE api/2.0/keys/{keyId}` when it may not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-api-key/).

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

api_instance = DocspaceApiSdk::ApiKeys::ApiKeysApi.new
key_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the key to update, taken from the route. Read it from the `id` of an entry of  `GET api/2.0/keys` - it is not the secret and not the `keyPostfix`.
update_api_key_request = DocspaceApiSdk::UpdateApiKeyRequest.new # UpdateApiKeyRequest | The fields to change. Every field is optional and the ones that are left out keep their current values, so an  empty object changes nothing.

begin
  # Update an API key
  result = api_instance.update_api_key(key_id, update_api_key_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling ApiKeys::ApiKeysApi->update_api_key: #{e}"
end
```

#### Using the update_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> update_api_key_with_http_info(key_id, update_api_key_request)

```ruby
begin
  # Update an API key
  data, status_code, headers = api_instance.update_api_key_with_http_info(key_id, update_api_key_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling ApiKeys::ApiKeysApi->update_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The ID of the key to update, taken from the route. Read it from the `id` of an entry of  `GET api/2.0/keys` - it is not the secret and not the `keyPostfix`. |  |
| **update_api_key_request** | [**UpdateApiKeyRequest**](UpdateApiKeyRequest.md) | The fields to change. Every field is optional and the ones that are left out keep their current values, so an  empty object changes nothing. |  |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

