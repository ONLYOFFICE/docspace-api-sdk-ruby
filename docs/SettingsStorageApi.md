# DocspaceApiSdk::SettingsStorageApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_all_backup_storages**](SettingsStorageApi.md#get_all_backup_storages) | **GET** /api/2.0/settings/storage/backup | Get the backup storages |
| [**get_all_cdn_storages**](SettingsStorageApi.md#get_all_cdn_storages) | **GET** /api/2.0/settings/storage/cdn | Get the CDN storages |
| [**get_all_storages**](SettingsStorageApi.md#get_all_storages) | **GET** /api/2.0/settings/storage | Get storages |
| [**get_amazon_s3_regions**](SettingsStorageApi.md#get_amazon_s3_regions) | **GET** /api/2.0/settings/storage/s3/regions | Get Amazon regions |
| [**get_storage_progress**](SettingsStorageApi.md#get_storage_progress) | **GET** /api/2.0/settings/storage/progress | Get the storage progress |
| [**reset_cdn_to_default**](SettingsStorageApi.md#reset_cdn_to_default) | **DELETE** /api/2.0/settings/storage/cdn | Reset the CDN storage settings |
| [**reset_storage_to_default**](SettingsStorageApi.md#reset_storage_to_default) | **DELETE** /api/2.0/settings/storage | Reset the storage settings |
| [**update_cdn_storage**](SettingsStorageApi.md#update_cdn_storage) | **PUT** /api/2.0/settings/storage/cdn | Update the CDN storage |
| [**update_storage**](SettingsStorageApi.md#update_storage) | **PUT** /api/2.0/settings/storage | Update a storage |


## get_all_backup_storages

> <StorageArrayWrapper> get_all_backup_storages(opts)

Get the backup storages

Returns a list of all the backup storages.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-backup-storages/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new
opts = {
  dump: true # Boolean | Indicates whether the operation should perform a dump of backup storage data.  This property is used as a parameter in backup-related API requests to specify  if additional details or data dumping is required during the process.
}

begin
  # Get the backup storages
  result = api_instance.get_all_backup_storages(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_all_backup_storages: #{e}"
end
```

#### Using the get_all_backup_storages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageArrayWrapper>, Integer, Hash)> get_all_backup_storages_with_http_info(opts)

```ruby
begin
  # Get the backup storages
  data, status_code, headers = api_instance.get_all_backup_storages_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_all_backup_storages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dump** | **Boolean** | Indicates whether the operation should perform a dump of backup storage data.  This property is used as a parameter in backup-related API requests to specify  if additional details or data dumping is required during the process. | [optional] |

### Return type

[**StorageArrayWrapper**](StorageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_cdn_storages

> <StorageArrayWrapper> get_all_cdn_storages

Get the CDN storages

Returns a list of all the CDN storages.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-cdn-storages/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new

begin
  # Get the CDN storages
  result = api_instance.get_all_cdn_storages
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_all_cdn_storages: #{e}"
end
```

#### Using the get_all_cdn_storages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageArrayWrapper>, Integer, Hash)> get_all_cdn_storages_with_http_info

```ruby
begin
  # Get the CDN storages
  data, status_code, headers = api_instance.get_all_cdn_storages_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_all_cdn_storages_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**StorageArrayWrapper**](StorageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_storages

> <StorageArrayWrapper> get_all_storages

Get storages

Returns a list of all the portal storages.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-storages/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new

begin
  # Get storages
  result = api_instance.get_all_storages
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_all_storages: #{e}"
end
```

#### Using the get_all_storages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageArrayWrapper>, Integer, Hash)> get_all_storages_with_http_info

```ruby
begin
  # Get storages
  data, status_code, headers = api_instance.get_all_storages_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_all_storages_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**StorageArrayWrapper**](StorageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_amazon_s3_regions

> <ObjectWrapper> get_amazon_s3_regions

Get Amazon regions

Returns a list of all Amazon regions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-amazon-s3-regions/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new

begin
  # Get Amazon regions
  result = api_instance.get_amazon_s3_regions
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_amazon_s3_regions: #{e}"
end
```

#### Using the get_amazon_s3_regions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectWrapper>, Integer, Hash)> get_amazon_s3_regions_with_http_info

```ruby
begin
  # Get Amazon regions
  data, status_code, headers = api_instance.get_amazon_s3_regions_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_amazon_s3_regions_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_storage_progress

> <DoubleWrapper> get_storage_progress

Get the storage progress

Returns the storage progress.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-storage-progress/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new

begin
  # Get the storage progress
  result = api_instance.get_storage_progress
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_storage_progress: #{e}"
end
```

#### Using the get_storage_progress_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DoubleWrapper>, Integer, Hash)> get_storage_progress_with_http_info

```ruby
begin
  # Get the storage progress
  data, status_code, headers = api_instance.get_storage_progress_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DoubleWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->get_storage_progress_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DoubleWrapper**](DoubleWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_cdn_to_default

> reset_cdn_to_default

Reset the CDN storage settings

Resets the CDN storage settings to the default parameters.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-cdn-to-default/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new

begin
  # Reset the CDN storage settings
  api_instance.reset_cdn_to_default
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->reset_cdn_to_default: #{e}"
end
```

#### Using the reset_cdn_to_default_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> reset_cdn_to_default_with_http_info

```ruby
begin
  # Reset the CDN storage settings
  data, status_code, headers = api_instance.reset_cdn_to_default_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->reset_cdn_to_default_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_storage_to_default

> reset_storage_to_default

Reset the storage settings

Resets the storage settings to the default parameters.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-storage-to-default/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new

begin
  # Reset the storage settings
  api_instance.reset_storage_to_default
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->reset_storage_to_default: #{e}"
end
```

#### Using the reset_storage_to_default_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> reset_storage_to_default_with_http_info

```ruby
begin
  # Reset the storage settings
  data, status_code, headers = api_instance.reset_storage_to_default_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->reset_storage_to_default_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_cdn_storage

> <CdnStorageSettingsWrapper> update_cdn_storage(opts)

Update the CDN storage

Updates the CDN storage with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-cdn-storage/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new
opts = {
  storage_requests_dto: DocspaceApiSdk::StorageRequestsDto.new({_module: 'default'}) # StorageRequestsDto | 
}

begin
  # Update the CDN storage
  result = api_instance.update_cdn_storage(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->update_cdn_storage: #{e}"
end
```

#### Using the update_cdn_storage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CdnStorageSettingsWrapper>, Integer, Hash)> update_cdn_storage_with_http_info(opts)

```ruby
begin
  # Update the CDN storage
  data, status_code, headers = api_instance.update_cdn_storage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CdnStorageSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->update_cdn_storage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_requests_dto** | [**StorageRequestsDto**](StorageRequestsDto.md) |  | [optional] |

### Return type

[**CdnStorageSettingsWrapper**](CdnStorageSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_storage

> <StorageSettingsWrapper> update_storage(opts)

Update a storage

Updates a storage with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-storage/).

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

api_instance = DocspaceApiSdk::Settings::StorageApi.new
opts = {
  storage_requests_dto: DocspaceApiSdk::StorageRequestsDto.new({_module: 'default'}) # StorageRequestsDto | 
}

begin
  # Update a storage
  result = api_instance.update_storage(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->update_storage: #{e}"
end
```

#### Using the update_storage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StorageSettingsWrapper>, Integer, Hash)> update_storage_with_http_info(opts)

```ruby
begin
  # Update a storage
  data, status_code, headers = api_instance.update_storage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StorageSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::StorageApi->update_storage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **storage_requests_dto** | [**StorageRequestsDto**](StorageRequestsDto.md) |  | [optional] |

### Return type

[**StorageSettingsWrapper**](StorageSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

