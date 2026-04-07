# DocspaceApiSdk::AIProvidersApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_provider**](AIProvidersApi.md#add_provider) | **POST** /api/2.0/ai/providers | Add an AI provider |
| [**delete_providers**](AIProvidersApi.md#delete_providers) | **DELETE** /api/2.0/ai/providers | Delete AI providers |
| [**get_available_providers**](AIProvidersApi.md#get_available_providers) | **GET** /api/2.0/ai/providers/available | Get available AI provider types |
| [**get_default_provider**](AIProvidersApi.md#get_default_provider) | **GET** /api/2.0/ai/providers/default | Get the default AI provider |
| [**get_providers**](AIProvidersApi.md#get_providers) | **GET** /api/2.0/ai/providers | Get AI providers |
| [**set_default_provider**](AIProvidersApi.md#set_default_provider) | **PUT** /api/2.0/ai/providers/default | Set the default AI provider |
| [**update_provider**](AIProvidersApi.md#update_provider) | **PUT** /api/2.0/ai/providers/{id} | Update an AI provider |


## add_provider

> <AiProviderWrapper> add_provider(opts)

Add an AI provider

Registers a new AI provider for the current tenant by specifying its type, display title, API endpoint URL, and authentication key.  The provider becomes available for AI chat conversations after creation. This action is rate-limited.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-provider/).

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

api_instance = DocspaceApiSdk::AI::ProvidersApi.new
opts = {
  create_provider_request_dto: DocspaceApiSdk::CreateProviderRequestDto.new({title: 'OpenAI Provider', key: 'sk-example-key-123'}) # CreateProviderRequestDto | 
}

begin
  # Add an AI provider
  result = api_instance.add_provider(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProvidersApi->add_provider: #{e}"
end
```

#### Using the add_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiProviderWrapper>, Integer, Hash)> add_provider_with_http_info(opts)

```ruby
begin
  # Add an AI provider
  data, status_code, headers = api_instance.add_provider_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiProviderWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProvidersApi->add_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_provider_request_dto** | [**CreateProviderRequestDto**](CreateProviderRequestDto.md) |  | [optional] |

### Return type

[**AiProviderWrapper**](AiProviderWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_providers

> delete_providers(opts)

Delete AI providers

Permanently deletes one or more AI providers by their identifiers.  All specified providers are removed from the current tenant. This action cannot be undone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-providers/).

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

api_instance = DocspaceApiSdk::AI::ProvidersApi.new
opts = {
  remove_provider_request_dto: DocspaceApiSdk::RemoveProviderRequestDto.new({ids: [1, 2, 3]}) # RemoveProviderRequestDto | 
}

begin
  # Delete AI providers
  api_instance.delete_providers(opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProvidersApi->delete_providers: #{e}"
end
```

#### Using the delete_providers_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_providers_with_http_info(opts)

```ruby
begin
  # Delete AI providers
  data, status_code, headers = api_instance.delete_providers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProvidersApi->delete_providers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remove_provider_request_dto** | [**RemoveProviderRequestDto**](RemoveProviderRequestDto.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_available_providers

> <ProviderSettingsArrayWrapper> get_available_providers

Get available AI provider types

Returns the list of AI provider types that are available for configuration on the current instance.  Each entry includes the provider type identifier and the default API endpoint URL.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-available-providers/).

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

api_instance = DocspaceApiSdk::AI::ProvidersApi.new

begin
  # Get available AI provider types
  result = api_instance.get_available_providers
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProvidersApi->get_available_providers: #{e}"
end
```

#### Using the get_available_providers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderSettingsArrayWrapper>, Integer, Hash)> get_available_providers_with_http_info

```ruby
begin
  # Get available AI provider types
  data, status_code, headers = api_instance.get_available_providers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderSettingsArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProvidersApi->get_available_providers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProviderSettingsArrayWrapper**](ProviderSettingsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_default_provider

> <DefaultProviderWrapper> get_default_provider

Get the default AI provider

Returns the default AI provider and model configured for the current tenant.  Returns null if the tenant does not have any registered providers.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-default-provider/).

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

api_instance = DocspaceApiSdk::AI::ProvidersApi.new

begin
  # Get the default AI provider
  result = api_instance.get_default_provider
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProvidersApi->get_default_provider: #{e}"
end
```

#### Using the get_default_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DefaultProviderWrapper>, Integer, Hash)> get_default_provider_with_http_info

```ruby
begin
  # Get the default AI provider
  data, status_code, headers = api_instance.get_default_provider_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DefaultProviderWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProvidersApi->get_default_provider_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DefaultProviderWrapper**](DefaultProviderWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_providers

> <AiProviderArrayWrapper> get_providers(opts)

Get AI providers

Returns a paginated list of AI providers configured for the current tenant.  Supports pagination via the startIndex and count query parameters. The total number of providers is included in the response metadata.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-providers/).

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

api_instance = DocspaceApiSdk::AI::ProvidersApi.new
opts = {
  start_index: 0, # Integer | The number of items to skip before returning results (zero-based offset). Defaults to 0.
  count: 100 # Integer | The maximum number of items to return per page. Defaults to 100.
}

begin
  # Get AI providers
  result = api_instance.get_providers(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProvidersApi->get_providers: #{e}"
end
```

#### Using the get_providers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiProviderArrayWrapper>, Integer, Hash)> get_providers_with_http_info(opts)

```ruby
begin
  # Get AI providers
  data, status_code, headers = api_instance.get_providers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiProviderArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProvidersApi->get_providers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_index** | **Integer** | The number of items to skip before returning results (zero-based offset). Defaults to 0. | [optional] |
| **count** | **Integer** | The maximum number of items to return per page. Defaults to 100. | [optional] |

### Return type

[**AiProviderArrayWrapper**](AiProviderArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_default_provider

> <DefaultProviderWrapper> set_default_provider(opts)

Set the default AI provider

Sets the default AI provider and model for the current tenant.  The specified provider and model will be used as the default for all new AI chat sessions within the tenant.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-provider/).

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

api_instance = DocspaceApiSdk::AI::ProvidersApi.new
opts = {
  set_default_provider_request_dto: DocspaceApiSdk::SetDefaultProviderRequestDto.new({default_model: 'gpt-4'}) # SetDefaultProviderRequestDto | 
}

begin
  # Set the default AI provider
  result = api_instance.set_default_provider(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProvidersApi->set_default_provider: #{e}"
end
```

#### Using the set_default_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DefaultProviderWrapper>, Integer, Hash)> set_default_provider_with_http_info(opts)

```ruby
begin
  # Set the default AI provider
  data, status_code, headers = api_instance.set_default_provider_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DefaultProviderWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProvidersApi->set_default_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_default_provider_request_dto** | [**SetDefaultProviderRequestDto**](SetDefaultProviderRequestDto.md) |  | [optional] |

### Return type

[**DefaultProviderWrapper**](DefaultProviderWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_provider

> <AiProviderWrapper> update_provider(id, update_provider_body)

Update an AI provider

Updates the configuration of an existing AI provider, including its display title, API endpoint URL, and authentication key.  Only the fields provided in the request body will be updated. This action is rate-limited.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-provider/).

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

api_instance = DocspaceApiSdk::AI::ProvidersApi.new
id = 1 # Integer | The identifier of the AI provider to update.
update_provider_body = DocspaceApiSdk::UpdateProviderBody.new # UpdateProviderBody | The AI provider configuration parameters to update.

begin
  # Update an AI provider
  result = api_instance.update_provider(id, update_provider_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProvidersApi->update_provider: #{e}"
end
```

#### Using the update_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiProviderWrapper>, Integer, Hash)> update_provider_with_http_info(id, update_provider_body)

```ruby
begin
  # Update an AI provider
  data, status_code, headers = api_instance.update_provider_with_http_info(id, update_provider_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiProviderWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ProvidersApi->update_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The identifier of the AI provider to update. |  |
| **update_provider_body** | [**UpdateProviderBody**](UpdateProviderBody.md) | The AI provider configuration parameters to update. |  |

### Return type

[**AiProviderWrapper**](AiProviderWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

