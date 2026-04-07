# DocspaceApiSdk::AISettingsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_ai_settings**](AISettingsApi.md#get_ai_settings) | **GET** /api/2.0/ai/config | Get AI settings |
| [**get_vectorization_settings**](AISettingsApi.md#get_vectorization_settings) | **GET** /api/2.0/ai/config/vectorization | Get vectorization settings |
| [**get_web_search_settings**](AISettingsApi.md#get_web_search_settings) | **GET** /api/2.0/ai/config/web-search | Get web search settings |
| [**set_vectorization_settings**](AISettingsApi.md#set_vectorization_settings) | **PUT** /api/2.0/ai/config/vectorization | Update vectorization settings |
| [**set_web_search_settings**](AISettingsApi.md#set_web_search_settings) | **PUT** /api/2.0/ai/config/web-search | Update web search settings |


## get_ai_settings

> <AiSettingsWrapper> get_ai_settings

Get AI settings

Retrieves the combined AI configuration for the current portal, including the status of web search,  vectorization, and AI readiness, along with tool names and the portal MCP server identifier.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ai-settings/).

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

api_instance = DocspaceApiSdk::AI::SettingsApi.new

begin
  # Get AI settings
  result = api_instance.get_ai_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->get_ai_settings: #{e}"
end
```

#### Using the get_ai_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSettingsWrapper>, Integer, Hash)> get_ai_settings_with_http_info

```ruby
begin
  # Get AI settings
  data, status_code, headers = api_instance.get_ai_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->get_ai_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AiSettingsWrapper**](AiSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vectorization_settings

> <VectorizationSettingsWrapper> get_vectorization_settings

Get vectorization settings

Retrieves the current embedding provider settings used for document vectorization,  including the configured provider type and whether the API key needs to be reset.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-vectorization-settings/).

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

api_instance = DocspaceApiSdk::AI::SettingsApi.new

begin
  # Get vectorization settings
  result = api_instance.get_vectorization_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->get_vectorization_settings: #{e}"
end
```

#### Using the get_vectorization_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VectorizationSettingsWrapper>, Integer, Hash)> get_vectorization_settings_with_http_info

```ruby
begin
  # Get vectorization settings
  data, status_code, headers = api_instance.get_vectorization_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VectorizationSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->get_vectorization_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**VectorizationSettingsWrapper**](VectorizationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_web_search_settings

> <WebSearchSettingsWrapper> get_web_search_settings

Get web search settings

Retrieves the current web search integration settings for AI chat sessions,  including whether web search is enabled, the configured search engine type, and whether the API key needs to be reset.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-web-search-settings/).

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

api_instance = DocspaceApiSdk::AI::SettingsApi.new

begin
  # Get web search settings
  result = api_instance.get_web_search_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->get_web_search_settings: #{e}"
end
```

#### Using the get_web_search_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebSearchSettingsWrapper>, Integer, Hash)> get_web_search_settings_with_http_info

```ruby
begin
  # Get web search settings
  data, status_code, headers = api_instance.get_web_search_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebSearchSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->get_web_search_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WebSearchSettingsWrapper**](WebSearchSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_vectorization_settings

> <VectorizationSettingsWrapper> set_vectorization_settings(set_embedding_config_request_body)

Update vectorization settings

Configures the embedding provider used for document vectorization at the portal level.  Vectorization enables semantic search and knowledge retrieval capabilities in AI chat sessions.  Allows selecting the embedding provider type and providing the API key for the chosen provider.  Only portal administrators can modify these settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-vectorization-settings/).

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

api_instance = DocspaceApiSdk::AI::SettingsApi.new
set_embedding_config_request_body = DocspaceApiSdk::SetEmbeddingConfigRequestBody.new # SetEmbeddingConfigRequestBody | The embedding provider configuration parameters.

begin
  # Update vectorization settings
  result = api_instance.set_vectorization_settings(set_embedding_config_request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->set_vectorization_settings: #{e}"
end
```

#### Using the set_vectorization_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VectorizationSettingsWrapper>, Integer, Hash)> set_vectorization_settings_with_http_info(set_embedding_config_request_body)

```ruby
begin
  # Update vectorization settings
  data, status_code, headers = api_instance.set_vectorization_settings_with_http_info(set_embedding_config_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VectorizationSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->set_vectorization_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_embedding_config_request_body** | [**SetEmbeddingConfigRequestBody**](SetEmbeddingConfigRequestBody.md) | The embedding provider configuration parameters. |  |

### Return type

[**VectorizationSettingsWrapper**](VectorizationSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_web_search_settings

> <WebSearchSettingsWrapper> set_web_search_settings(set_web_search_settings_request_body)

Update web search settings

Configures the web search integration for AI chat sessions at the portal level.  Allows enabling or disabling web search, selecting the search engine type, and providing the API key for the chosen engine.  Only portal administrators can modify these settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-web-search-settings/).

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

api_instance = DocspaceApiSdk::AI::SettingsApi.new
set_web_search_settings_request_body = DocspaceApiSdk::SetWebSearchSettingsRequestBody.new # SetWebSearchSettingsRequestBody | The web search configuration parameters.

begin
  # Update web search settings
  result = api_instance.set_web_search_settings(set_web_search_settings_request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->set_web_search_settings: #{e}"
end
```

#### Using the set_web_search_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebSearchSettingsWrapper>, Integer, Hash)> set_web_search_settings_with_http_info(set_web_search_settings_request_body)

```ruby
begin
  # Update web search settings
  data, status_code, headers = api_instance.set_web_search_settings_with_http_info(set_web_search_settings_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebSearchSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->set_web_search_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_web_search_settings_request_body** | [**SetWebSearchSettingsRequestBody**](SetWebSearchSettingsRequestBody.md) | The web search configuration parameters. |  |

### Return type

[**WebSearchSettingsWrapper**](WebSearchSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

