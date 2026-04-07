# DocspaceApiSdk::SettingsEncryptionApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_storage_encryption_progress**](SettingsEncryptionApi.md#get_storage_encryption_progress) | **GET** /api/2.0/settings/encryption/progress | Get the storage encryption progress |
| [**get_storage_encryption_settings**](SettingsEncryptionApi.md#get_storage_encryption_settings) | **GET** /api/2.0/settings/encryption/settings | Get the storage encryption settings |
| [**start_storage_encryption**](SettingsEncryptionApi.md#start_storage_encryption) | **POST** /api/2.0/settings/encryption/start | Start the storage encryption process |


## get_storage_encryption_progress

> <DoubleNullableWrapper> get_storage_encryption_progress

Get the storage encryption progress

Returns the storage encryption progress.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-storage-encryption-progress/).

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

api_instance = DocspaceApiSdk::Settings::EncryptionApi.new

begin
  # Get the storage encryption progress
  result = api_instance.get_storage_encryption_progress
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::EncryptionApi->get_storage_encryption_progress: #{e}"
end
```

#### Using the get_storage_encryption_progress_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DoubleNullableWrapper>, Integer, Hash)> get_storage_encryption_progress_with_http_info

```ruby
begin
  # Get the storage encryption progress
  data, status_code, headers = api_instance.get_storage_encryption_progress_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DoubleNullableWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::EncryptionApi->get_storage_encryption_progress_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DoubleNullableWrapper**](DoubleNullableWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_storage_encryption_settings

> <EncryptionSettingsWrapper> get_storage_encryption_settings

Get the storage encryption settings

Returns the storage encryption settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-storage-encryption-settings/).

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

api_instance = DocspaceApiSdk::Settings::EncryptionApi.new

begin
  # Get the storage encryption settings
  result = api_instance.get_storage_encryption_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::EncryptionApi->get_storage_encryption_settings: #{e}"
end
```

#### Using the get_storage_encryption_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EncryptionSettingsWrapper>, Integer, Hash)> get_storage_encryption_settings_with_http_info

```ruby
begin
  # Get the storage encryption settings
  data, status_code, headers = api_instance.get_storage_encryption_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EncryptionSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::EncryptionApi->get_storage_encryption_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**EncryptionSettingsWrapper**](EncryptionSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_storage_encryption

> <BooleanWrapper> start_storage_encryption(opts)

Start the storage encryption process

Starts the storage encryption process.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-storage-encryption/).

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

api_instance = DocspaceApiSdk::Settings::EncryptionApi.new
opts = {
  storage_encryption_requests_dto: DocspaceApiSdk::StorageEncryptionRequestsDto.new # StorageEncryptionRequestsDto | 
}

begin
  # Start the storage encryption process
  result = api_instance.start_storage_encryption(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::EncryptionApi->start_storage_encryption: #{e}"
end
```

#### Using the start_storage_encryption_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> start_storage_encryption_with_http_info(opts)

```ruby
begin
  # Start the storage encryption process
  data, status_code, headers = api_instance.start_storage_encryption_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::EncryptionApi->start_storage_encryption_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_encryption_requests_dto** | [**StorageEncryptionRequestsDto**](StorageEncryptionRequestsDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

