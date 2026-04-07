# DocspaceApiSdk::FilesThirdPartyIntegrationApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_third_party**](FilesThirdPartyIntegrationApi.md#delete_third_party) | **DELETE** /api/2.0/files/thirdparty/{providerId} | Remove a third-party account |
| [**get_all_providers**](FilesThirdPartyIntegrationApi.md#get_all_providers) | **GET** /api/2.0/files/thirdparty/providers | Get all providers |
| [**get_backup_third_party_account**](FilesThirdPartyIntegrationApi.md#get_backup_third_party_account) | **GET** /api/2.0/files/thirdparty/backup | Get a third-party account backup |
| [**get_capabilities**](FilesThirdPartyIntegrationApi.md#get_capabilities) | **GET** /api/2.0/files/thirdparty/capabilities | Get providers |
| [**get_common_third_party_folders**](FilesThirdPartyIntegrationApi.md#get_common_third_party_folders) | **GET** /api/2.0/files/thirdparty/common | Get the common third-party services |
| [**get_third_party_accounts**](FilesThirdPartyIntegrationApi.md#get_third_party_accounts) | **GET** /api/2.0/files/thirdparty | Get the third-party accounts |
| [**save_third_party**](FilesThirdPartyIntegrationApi.md#save_third_party) | **POST** /api/2.0/files/thirdparty | Save a third-party account |
| [**save_third_party_backup**](FilesThirdPartyIntegrationApi.md#save_third_party_backup) | **POST** /api/2.0/files/thirdparty/backup | Save a third-party account backup |


## delete_third_party

> <StringWrapper> delete_third_party(provider_id)

Remove a third-party account

Removes the third-party storage service account with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-third-party/).

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

api_instance = DocspaceApiSdk::Files::ThirdPartyIntegrationApi.new
provider_id = 1 # Integer | The provider ID.

begin
  # Remove a third-party account
  result = api_instance.delete_third_party(provider_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->delete_third_party: #{e}"
end
```

#### Using the delete_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> delete_third_party_with_http_info(provider_id)

```ruby
begin
  # Remove a third-party account
  data, status_code, headers = api_instance.delete_third_party_with_http_info(provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->delete_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_id** | **Integer** | The provider ID. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_providers

> <ProviderArrayWrapper> get_all_providers(opts)

Get all providers

Returns a list of all providers.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-providers/).

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

api_instance = DocspaceApiSdk::Files::ThirdPartyIntegrationApi.new
opts = {
  excludewebdav: false # Boolean | Specifies whether WebDAV resources should be excluded from the result..
}

begin
  # Get all providers
  result = api_instance.get_all_providers(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->get_all_providers: #{e}"
end
```

#### Using the get_all_providers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderArrayWrapper>, Integer, Hash)> get_all_providers_with_http_info(opts)

```ruby
begin
  # Get all providers
  data, status_code, headers = api_instance.get_all_providers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->get_all_providers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **excludewebdav** | **Boolean** | Specifies whether WebDAV resources should be excluded from the result.. | [optional] |

### Return type

[**ProviderArrayWrapper**](ProviderArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_backup_third_party_account

> <FolderStringWrapper> get_backup_third_party_account

Get a third-party account backup

Returns a backup of the connected third-party account.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-backup-third-party-account/).

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

api_instance = DocspaceApiSdk::Files::ThirdPartyIntegrationApi.new

begin
  # Get a third-party account backup
  result = api_instance.get_backup_third_party_account
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->get_backup_third_party_account: #{e}"
end
```

#### Using the get_backup_third_party_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderStringWrapper>, Integer, Hash)> get_backup_third_party_account_with_http_info

```ruby
begin
  # Get a third-party account backup
  data, status_code, headers = api_instance.get_backup_third_party_account_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderStringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->get_backup_third_party_account_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**FolderStringWrapper**](FolderStringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_capabilities

> <ArrayArrayWrapper> get_capabilities

Get providers

Returns the list of the available providers.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-capabilities/).

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

api_instance = DocspaceApiSdk::Files::ThirdPartyIntegrationApi.new

begin
  # Get providers
  result = api_instance.get_capabilities
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->get_capabilities: #{e}"
end
```

#### Using the get_capabilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ArrayArrayWrapper>, Integer, Hash)> get_capabilities_with_http_info

```ruby
begin
  # Get providers
  data, status_code, headers = api_instance.get_capabilities_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ArrayArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->get_capabilities_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ArrayArrayWrapper**](ArrayArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_common_third_party_folders

> <FolderStringArrayWrapper> get_common_third_party_folders

Get the common third-party services

Returns a list of the third-party services connected to the Common section.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-common-third-party-folders/).

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

api_instance = DocspaceApiSdk::Files::ThirdPartyIntegrationApi.new

begin
  # Get the common third-party services
  result = api_instance.get_common_third_party_folders
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->get_common_third_party_folders: #{e}"
end
```

#### Using the get_common_third_party_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderStringArrayWrapper>, Integer, Hash)> get_common_third_party_folders_with_http_info

```ruby
begin
  # Get the common third-party services
  data, status_code, headers = api_instance.get_common_third_party_folders_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderStringArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->get_common_third_party_folders_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**FolderStringArrayWrapper**](FolderStringArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_third_party_accounts

> <ThirdPartyParamsArrayWrapper> get_third_party_accounts

Get the third-party accounts

Returns a list of all the connected third-party accounts.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-accounts/).

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

api_instance = DocspaceApiSdk::Files::ThirdPartyIntegrationApi.new

begin
  # Get the third-party accounts
  result = api_instance.get_third_party_accounts
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->get_third_party_accounts: #{e}"
end
```

#### Using the get_third_party_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThirdPartyParamsArrayWrapper>, Integer, Hash)> get_third_party_accounts_with_http_info

```ruby
begin
  # Get the third-party accounts
  data, status_code, headers = api_instance.get_third_party_accounts_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThirdPartyParamsArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->get_third_party_accounts_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ThirdPartyParamsArrayWrapper**](ThirdPartyParamsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## save_third_party

> <FolderStringWrapper> save_third_party(opts)

Save a third-party account

Saves the third-party storage service account. For WebDav, Yandex, kDrive and SharePoint, the login and password are used for authentication. For other providers, the authentication is performed using a token received via OAuth 2.0.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party/).

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

api_instance = DocspaceApiSdk::Files::ThirdPartyIntegrationApi.new
opts = {
  third_party_request_dto: DocspaceApiSdk::ThirdPartyRequestDto.new({customer_title: 'My Document', provider_key: 'abc123'}) # ThirdPartyRequestDto | 
}

begin
  # Save a third-party account
  result = api_instance.save_third_party(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->save_third_party: #{e}"
end
```

#### Using the save_third_party_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderStringWrapper>, Integer, Hash)> save_third_party_with_http_info(opts)

```ruby
begin
  # Save a third-party account
  data, status_code, headers = api_instance.save_third_party_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderStringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->save_third_party_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **third_party_request_dto** | [**ThirdPartyRequestDto**](ThirdPartyRequestDto.md) |  | [optional] |

### Return type

[**FolderStringWrapper**](FolderStringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## save_third_party_backup

> <FolderStringWrapper> save_third_party_backup(opts)

Save a third-party account backup

Saves a backup of the connected third-party account.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-third-party-backup/).

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

api_instance = DocspaceApiSdk::Files::ThirdPartyIntegrationApi.new
opts = {
  third_party_backup_request_dto: DocspaceApiSdk::ThirdPartyBackupRequestDto.new # ThirdPartyBackupRequestDto | 
}

begin
  # Save a third-party account backup
  result = api_instance.save_third_party_backup(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->save_third_party_backup: #{e}"
end
```

#### Using the save_third_party_backup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderStringWrapper>, Integer, Hash)> save_third_party_backup_with_http_info(opts)

```ruby
begin
  # Save a third-party account backup
  data, status_code, headers = api_instance.save_third_party_backup_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderStringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Files::ThirdPartyIntegrationApi->save_third_party_backup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **third_party_backup_request_dto** | [**ThirdPartyBackupRequestDto**](ThirdPartyBackupRequestDto.md) |  | [optional] |

### Return type

[**FolderStringWrapper**](FolderStringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

