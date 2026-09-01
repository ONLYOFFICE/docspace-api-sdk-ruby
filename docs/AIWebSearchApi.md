# DocspaceApiSdk::AIWebSearchApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_web_search_clear**](AIWebSearchApi.md#ai_web_search_clear) | **DELETE** /api/2.0/ai/web-search/clear | Clear |
| [**ai_web_search_configure**](AIWebSearchApi.md#ai_web_search_configure) | **PUT** /api/2.0/ai/web-search/configure | Configure |
| [**ai_web_search_get_active_config**](AIWebSearchApi.md#ai_web_search_get_active_config) | **GET** /api/2.0/ai/web-search/get-active-config | Get active config |
| [**ai_web_search_is_configured**](AIWebSearchApi.md#ai_web_search_is_configured) | **GET** /api/2.0/ai/web-search/is-configured | Is configured |
| [**ai_web_search_passthrough_contents**](AIWebSearchApi.md#ai_web_search_passthrough_contents) | **POST** /api/2.0/ai/websearch/v1/contents | Web page contents proxied to the portal's active web-search provider |
| [**ai_web_search_passthrough_search**](AIWebSearchApi.md#ai_web_search_passthrough_search) | **POST** /api/2.0/ai/websearch/v1/search | Web search proxied to the portal's active web-search provider |
| [**ai_web_search_set_active_config**](AIWebSearchApi.md#ai_web_search_set_active_config) | **PUT** /api/2.0/ai/web-search/set-active-config | Set active config |
| [**ai_web_search_test_connection**](AIWebSearchApi.md#ai_web_search_test_connection) | **POST** /api/2.0/ai/web-search/test-connection | Test connection |


## ai_web_search_clear

> <AiSuccessResponse> ai_web_search_clear(body)

Clear

Removes the web-search configuration of the scope. Does nothing when web search was not configured there.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-clear/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
body = 'body_example' # String | 

begin
  # Clear
  result = api_instance.ai_web_search_clear(body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_clear: #{e}"
end
```

#### Using the ai_web_search_clear_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_web_search_clear_with_http_info(body)

```ruby
begin
  # Clear
  data, status_code, headers = api_instance.ai_web_search_clear_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_clear_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_web_search_configure

> <AiWebSearchMutationResult> ai_web_search_configure(ai_web_search_configure_request)

Configure

Validates a web-search configuration against the live provider and stores it only when the provider answers, replacing the previous one in a single write.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-configure/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
ai_web_search_configure_request = DocspaceApiSdk::AiWebSearchConfigureRequest.new({config: DocspaceApiSdk::AiWebSearchConfig.new({provider: 'provider_example'})}) # AiWebSearchConfigureRequest | 

begin
  # Configure
  result = api_instance.ai_web_search_configure(ai_web_search_configure_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_configure: #{e}"
end
```

#### Using the ai_web_search_configure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiWebSearchMutationResult>, Integer, Hash)> ai_web_search_configure_with_http_info(ai_web_search_configure_request)

```ruby
begin
  # Configure
  data, status_code, headers = api_instance.ai_web_search_configure_with_http_info(ai_web_search_configure_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiWebSearchMutationResult>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_configure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_web_search_configure_request** | [**AiWebSearchConfigureRequest**](AiWebSearchConfigureRequest.md) |  |  |

### Return type

[**AiWebSearchMutationResult**](AiWebSearchMutationResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_web_search_get_active_config

> <AiWebSearchConfig> ai_web_search_get_active_config(opts)

Get active config

Returns the web-search configuration active in the scope, or an empty result when web search is not configured.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-get-active-config/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
opts = {
  entity_id: 'entity_id_example' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
}

begin
  # Get active config
  result = api_instance.ai_web_search_get_active_config(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_get_active_config: #{e}"
end
```

#### Using the ai_web_search_get_active_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiWebSearchConfig>, Integer, Hash)> ai_web_search_get_active_config_with_http_info(opts)

```ruby
begin
  # Get active config
  data, status_code, headers = api_instance.ai_web_search_get_active_config_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiWebSearchConfig>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_get_active_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

[**AiWebSearchConfig**](AiWebSearchConfig.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_web_search_is_configured

> Boolean ai_web_search_is_configured(opts)

Is configured

Tells whether web search is configured in the scope.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-is-configured/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
opts = {
  entity_id: 'entity_id_example' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
}

begin
  # Is configured
  result = api_instance.ai_web_search_is_configured(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_is_configured: #{e}"
end
```

#### Using the ai_web_search_is_configured_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> ai_web_search_is_configured_with_http_info(opts)

```ruby
begin
  # Is configured
  data, status_code, headers = api_instance.ai_web_search_is_configured_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_is_configured_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

**Boolean**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_web_search_passthrough_contents

> <AiSuccessResponse> ai_web_search_passthrough_contents(request_body)

Web page contents proxied to the portal's active web-search provider

Fetches web page contents on behalf of the document editor's AI plugin, against the portal's active web-search provider, the same way as the search passthrough.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-passthrough-contents/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  # Web page contents proxied to the portal's active web-search provider
  result = api_instance.ai_web_search_passthrough_contents(request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_passthrough_contents: #{e}"
end
```

#### Using the ai_web_search_passthrough_contents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_web_search_passthrough_contents_with_http_info(request_body)

```ruby
begin
  # Web page contents proxied to the portal's active web-search provider
  data, status_code, headers = api_instance.ai_web_search_passthrough_contents_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_passthrough_contents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_web_search_passthrough_search

> <AiSuccessResponse> ai_web_search_passthrough_search(request_body)

Web search proxied to the portal's active web-search provider

Runs a web search on behalf of the document editor's AI plugin. The plugin only holds a placeholder configuration; the portal's active provider and its key are resolved here and never reach the browser.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-passthrough-search/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  # Web search proxied to the portal's active web-search provider
  result = api_instance.ai_web_search_passthrough_search(request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_passthrough_search: #{e}"
end
```

#### Using the ai_web_search_passthrough_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_web_search_passthrough_search_with_http_info(request_body)

```ruby
begin
  # Web search proxied to the portal's active web-search provider
  data, status_code, headers = api_instance.ai_web_search_passthrough_search_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_passthrough_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_web_search_set_active_config

> <AiSuccessResponse> ai_web_search_set_active_config(ai_web_search_configure_request)

Set active config

Stores a web-search configuration without contacting the provider first, for forms that validate locally.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-set-active-config/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
ai_web_search_configure_request = DocspaceApiSdk::AiWebSearchConfigureRequest.new({config: DocspaceApiSdk::AiWebSearchConfig.new({provider: 'provider_example'})}) # AiWebSearchConfigureRequest | 

begin
  # Set active config
  result = api_instance.ai_web_search_set_active_config(ai_web_search_configure_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_set_active_config: #{e}"
end
```

#### Using the ai_web_search_set_active_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_web_search_set_active_config_with_http_info(ai_web_search_configure_request)

```ruby
begin
  # Set active config
  data, status_code, headers = api_instance.ai_web_search_set_active_config_with_http_info(ai_web_search_configure_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_set_active_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_web_search_configure_request** | [**AiWebSearchConfigureRequest**](AiWebSearchConfigureRequest.md) |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_web_search_test_connection

> <AiProfilesTestConnection200Response> ai_web_search_test_connection(ai_web_search_config)

Test connection

Checks a web-search configuration against the live provider without storing it - for a Test button that must not commit on success.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-test-connection/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
ai_web_search_config = DocspaceApiSdk::AiWebSearchConfig.new({provider: 'provider_example'}) # AiWebSearchConfig | 

begin
  # Test connection
  result = api_instance.ai_web_search_test_connection(ai_web_search_config)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_test_connection: #{e}"
end
```

#### Using the ai_web_search_test_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiProfilesTestConnection200Response>, Integer, Hash)> ai_web_search_test_connection_with_http_info(ai_web_search_config)

```ruby
begin
  # Test connection
  data, status_code, headers = api_instance.ai_web_search_test_connection_with_http_info(ai_web_search_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiProfilesTestConnection200Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_test_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_web_search_config** | [**AiWebSearchConfig**](AiWebSearchConfig.md) |  |  |

### Return type

[**AiProfilesTestConnection200Response**](AiProfilesTestConnection200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

