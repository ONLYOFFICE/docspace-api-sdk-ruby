# DocspaceApiSdk::ApiKeysApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_api_key**](ApiKeysApi.md#create_api_key) | **POST** /api/2.0/keys | Create a user API key |
| [**delete_api_key**](ApiKeysApi.md#delete_api_key) | **DELETE** /api/2.0/keys/{keyId} | Delete a user API key |
| [**get_all_permissions**](ApiKeysApi.md#get_all_permissions) | **GET** /api/2.0/keys/permissions | Get API key permissions |
| [**get_api_key**](ApiKeysApi.md#get_api_key) | **GET** /api/2.0/keys/@self | Get current user's API key |
| [**get_api_keys**](ApiKeysApi.md#get_api_keys) | **GET** /api/2.0/keys | Get current user's API keys |
| [**update_api_key**](ApiKeysApi.md#update_api_key) | **PUT** /api/2.0/keys/{keyId} | Update an API key |


## create_api_key

> <ApiKeyResponseWrapper> create_api_key(opts)

Create a user API key

Creates a user API key with the parameters specified in the request.

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

Delete a user API key

Deletes a user API key by its ID.

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
key_id = '00000000-0000-0000-0000-000000000000' # String | The API key ID.

begin
  # Delete a user API key
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
  # Delete a user API key
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
| **key_id** | **String** | The API key ID. |  |

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

Returns a list of all available permissions for the API key.

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

Get current user's API key

Returns information about the current user's API key.

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
  # Get current user's API key
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
  # Get current user's API key
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

Get current user's API keys

Returns a list of all API keys for the current user.

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
  # Get current user's API keys
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
  # Get current user's API keys
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

Updates an existing API key changing its name, permissions, and status.

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
key_id = '00000000-0000-0000-0000-000000000000' # String | The unique identifier of the API key to update.
update_api_key_request = DocspaceApiSdk::UpdateApiKeyRequest.new # UpdateApiKeyRequest | The request parameters for updating an existing API key.

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
| **key_id** | **String** | The unique identifier of the API key to update. |  |
| **update_api_key_request** | [**UpdateApiKeyRequest**](UpdateApiKeyRequest.md) | The request parameters for updating an existing API key. |  |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

