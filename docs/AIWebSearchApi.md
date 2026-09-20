# DocspaceApiSdk::AIWebSearchApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_web_search_clear**](AIWebSearchApi.md#ai_web_search_clear) | **DELETE** /api/2.0/ai/web-search/clear | Clear the web-search configuration |
| [**ai_web_search_configure**](AIWebSearchApi.md#ai_web_search_configure) | **PUT** /api/2.0/ai/web-search/configure | Configure and verify web search |
| [**ai_web_search_get_active_config**](AIWebSearchApi.md#ai_web_search_get_active_config) | **GET** /api/2.0/ai/web-search/get-active-config | Get active config |
| [**ai_web_search_is_configured**](AIWebSearchApi.md#ai_web_search_is_configured) | **GET** /api/2.0/ai/web-search/is-configured | Is configured |
| [**ai_web_search_passthrough_contents**](AIWebSearchApi.md#ai_web_search_passthrough_contents) | **POST** /api/2.0/ai/websearch/v1/contents | Web page contents passthrough |
| [**ai_web_search_passthrough_search**](AIWebSearchApi.md#ai_web_search_passthrough_search) | **POST** /api/2.0/ai/websearch/v1/search | Web search passthrough |
| [**ai_web_search_set_active_config**](AIWebSearchApi.md#ai_web_search_set_active_config) | **PUT** /api/2.0/ai/web-search/set-active-config | Set active config |
| [**ai_web_search_test_connection**](AIWebSearchApi.md#ai_web_search_test_connection) | **POST** /api/2.0/ai/web-search/test-connection | Test a web-search provider |


## ai_web_search_clear

> <AiSuccessResponse> ai_web_search_clear(body)

Clear the web-search configuration

Removes the portal's web-search configuration, after which web search is unavailable everywhere it was not configured separately. This is not scoped: it takes no `entityId` and any body sent with it is ignored, so it cannot be used to clear one room's configuration. Clearing an already-unconfigured portal is not an error and the call answers success either way. The stored provider key is destroyed with the configuration and has to be entered again.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-clear/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
body = 'body_example' # String | Ignored. The operation always clears the portal-wide configuration, so send an empty body; a value here does not scope it to a room.

begin
  # Clear the web-search configuration
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
  # Clear the web-search configuration
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
| **body** | **String** | Ignored. The operation always clears the portal-wide configuration, so send an empty body; a value here does not scope it to a room. |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_web_search_configure

> <AiWebSearchMutationResult> ai_web_search_configure(ai_web_search_configure_request)

Configure and verify web search

Validates a web-search configuration against the live provider and stores it only if the provider answers, which makes it the safe way to save a form in one step. `entityId` scopes the configuration to a room and has to name one the caller can open; omitting it configures the portal. A `baseUrl` pointing at a private network address is refused. Use `PUT api/2.0/ai/web-search/set-active-config` when the configuration should be stored without a provider round trip.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-configure/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
ai_web_search_configure_request = DocspaceApiSdk::AiWebSearchConfigureRequest.new({config: DocspaceApiSdk::AiWebSearchConfig.new({provider: 'exa'})}) # AiWebSearchConfigureRequest | 

begin
  # Configure and verify web search
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
  # Configure and verify web search
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_web_search_get_active_config

> <AiWebSearchConfig> ai_web_search_get_active_config(opts)

Get active config

Returns the web-search configuration in force for a scope - the provider, its endpoint and its settings. `entityId` picks a room and has to name one the caller can open; omitting it reads the portal-wide configuration, and a room with none of its own falls back to that. An unconfigured scope answers an empty result rather than 404. The provider key is not part of the answer, so a client cannot read it back after storing it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-get-active-config/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
opts = {
  entity_id: '1234' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_web_search_is_configured

> Boolean ai_web_search_is_configured(opts)

Is configured

Tells whether web search is available in a scope, as a bare boolean, which is the cheap check for hiding or showing the feature. `entityId` picks a room and has to name one the caller can open. It reports the same state as `GET api/2.0/ai/web-search/get-active-config` without transferring the configuration itself. A true answer means a provider is stored, not that the provider is currently reachable - probe that with `POST api/2.0/ai/web-search/test-connection`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-is-configured/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
opts = {
  entity_id: '1234' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_web_search_passthrough_contents

> Hash&lt;String, Object&gt; ai_web_search_passthrough_contents(request_body)

Web page contents passthrough

Fetches the contents of web pages on behalf of the document editor's AI plugin, against the portal's active web-search provider, exactly as the search passthrough does — including the `entityId` / `entityKind` billing attribution. The portal-wide configuration is used and a portal without one answers 404. The provider's status, body and content type are relayed verbatim, so its 429 and its failures surface unchanged. This is the follow-up to `POST api/2.0/ai/websearch/v1/search`, which returns the results whose contents this operation retrieves.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-passthrough-contents/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
request_body = { key: 3.56} # Hash<String, Object> | A page-contents request in the shape the portal's active web-search provider expects, forwarded to it unchanged. The endpoint and the key come from the stored configuration.

begin
  # Web page contents passthrough
  result = api_instance.ai_web_search_passthrough_contents(request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_passthrough_contents: #{e}"
end
```

#### Using the ai_web_search_passthrough_contents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> ai_web_search_passthrough_contents_with_http_info(request_body)

```ruby
begin
  # Web page contents passthrough
  data, status_code, headers = api_instance.ai_web_search_passthrough_contents_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_passthrough_contents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) | A page-contents request in the shape the portal's active web-search provider expects, forwarded to it unchanged. The endpoint and the key come from the stored configuration. |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_web_search_passthrough_search

> Hash&lt;String, Object&gt; ai_web_search_passthrough_search(request_body)

Web search passthrough

Runs a web search on behalf of the document editor's AI plugin, which holds only a placeholder configuration - the portal's active provider and its key are resolved here, so neither ever reaches the browser. The portal-wide configuration is used, and a portal without one answers 404. The `entityId` and `entityKind` query parameters name the document the search is billed to; with the ONLYOFFICE provider the entry is resolved under the caller's credentials and sent to the gateway as the request `metadata` (`source_id` / `source_type` / `source_title`), and an entry the caller cannot open sends none. The provider's own status, body and content type are relayed as they stand, so a provider that rate-limits answers 429 and one that is unreachable answers 502. Closing the connection aborts the upstream request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-passthrough-search/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
request_body = { key: 3.56} # Hash<String, Object> | A search request in the shape the portal's active web-search provider expects, forwarded to it unchanged. The endpoint and the key come from the stored configuration and must not be sent here.

begin
  # Web search passthrough
  result = api_instance.ai_web_search_passthrough_search(request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_passthrough_search: #{e}"
end
```

#### Using the ai_web_search_passthrough_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> ai_web_search_passthrough_search_with_http_info(request_body)

```ruby
begin
  # Web search passthrough
  data, status_code, headers = api_instance.ai_web_search_passthrough_search_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::WebSearchApi->ai_web_search_passthrough_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) | A search request in the shape the portal's active web-search provider expects, forwarded to it unchanged. The endpoint and the key come from the stored configuration and must not be sent here. |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_web_search_set_active_config

> <AiSuccessResponse> ai_web_search_set_active_config(ai_web_search_configure_request)

Set active config

Stores a web-search configuration without contacting the provider first, for a form that has already validated its input or for restoring a known-good configuration. `entityId` scopes it to a room and has to name one the caller can open. A `baseUrl` pointing at a private network address is still refused, because that check is local. Nothing guarantees the stored provider works: follow up with `POST api/2.0/ai/web-search/test-connection`, or use `PUT api/2.0/ai/web-search/configure` to have the store gated on a live probe.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-set-active-config/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
ai_web_search_configure_request = DocspaceApiSdk::AiWebSearchConfigureRequest.new({config: DocspaceApiSdk::AiWebSearchConfig.new({provider: 'exa'})}) # AiWebSearchConfigureRequest | 

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_web_search_test_connection

> <AiProfilesTestConnection200Response> ai_web_search_test_connection(ai_web_search_config)

Test a web-search provider

Probes a web-search configuration against the live provider and reports the outcome, storing nothing - this is what a Test button calls so that a failure commits no state. The configuration is taken from the request rather than from storage, so credentials that were never saved can be checked. A `baseUrl` pointing at a private network address is refused before any request leaves the portal. The verdict is carried in the body rather than in the status, so a failed probe still answers 200 and the caller has to read the payload.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-web-search-test-connection/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::AI::WebSearchApi.new
ai_web_search_config = DocspaceApiSdk::AiWebSearchConfig.new({provider: 'exa'}) # AiWebSearchConfig | 

begin
  # Test a web-search provider
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
  # Test a web-search provider
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

