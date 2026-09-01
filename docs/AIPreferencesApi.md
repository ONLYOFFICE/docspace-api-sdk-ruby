# DocspaceApiSdk::AIPreferencesApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_preferences_clear_deep_mode**](AIPreferencesApi.md#ai_preferences_clear_deep_mode) | **DELETE** /api/2.0/ai/preferences/clear-deep-mode | Clear deep mode |
| [**ai_preferences_get_deep_mode**](AIPreferencesApi.md#ai_preferences_get_deep_mode) | **GET** /api/2.0/ai/preferences/get-deep-mode | Get deep mode |
| [**ai_preferences_is_deep_mode_set**](AIPreferencesApi.md#ai_preferences_is_deep_mode_set) | **GET** /api/2.0/ai/preferences/is-deep-mode-set | Is deep mode set |
| [**ai_preferences_set_deep_mode**](AIPreferencesApi.md#ai_preferences_set_deep_mode) | **PUT** /api/2.0/ai/preferences/set-deep-mode | Set deep mode |


## ai_preferences_clear_deep_mode

> <AiSuccessResponse> ai_preferences_clear_deep_mode(body)

Clear deep mode

Drops the persisted deep-mode toggle of the scope, so later reads fall back to the configured default.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-clear-deep-mode/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::PreferencesApi.new
body = 'body_example' # String | 

begin
  # Clear deep mode
  result = api_instance.ai_preferences_clear_deep_mode(body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PreferencesApi->ai_preferences_clear_deep_mode: #{e}"
end
```

#### Using the ai_preferences_clear_deep_mode_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_preferences_clear_deep_mode_with_http_info(body)

```ruby
begin
  # Clear deep mode
  data, status_code, headers = api_instance.ai_preferences_clear_deep_mode_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PreferencesApi->ai_preferences_clear_deep_mode_with_http_info: #{e}"
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


## ai_preferences_get_deep_mode

> Boolean ai_preferences_get_deep_mode(opts)

Get deep mode

Returns the deep-mode toggle of the scope, falling back to the configured default when nothing has been persisted.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-get-deep-mode/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::PreferencesApi.new
opts = {
  entity_id: 'entity_id_example' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
}

begin
  # Get deep mode
  result = api_instance.ai_preferences_get_deep_mode(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PreferencesApi->ai_preferences_get_deep_mode: #{e}"
end
```

#### Using the ai_preferences_get_deep_mode_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> ai_preferences_get_deep_mode_with_http_info(opts)

```ruby
begin
  # Get deep mode
  data, status_code, headers = api_instance.ai_preferences_get_deep_mode_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PreferencesApi->ai_preferences_get_deep_mode_with_http_info: #{e}"
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


## ai_preferences_is_deep_mode_set

> Boolean ai_preferences_is_deep_mode_set(opts)

Is deep mode set

Tells whether the scope has an explicitly persisted deep-mode value, whichever way that value is set.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-is-deep-mode-set/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::PreferencesApi.new
opts = {
  entity_id: 'entity_id_example' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
}

begin
  # Is deep mode set
  result = api_instance.ai_preferences_is_deep_mode_set(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PreferencesApi->ai_preferences_is_deep_mode_set: #{e}"
end
```

#### Using the ai_preferences_is_deep_mode_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> ai_preferences_is_deep_mode_set_with_http_info(opts)

```ruby
begin
  # Is deep mode set
  data, status_code, headers = api_instance.ai_preferences_is_deep_mode_set_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PreferencesApi->ai_preferences_is_deep_mode_set_with_http_info: #{e}"
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


## ai_preferences_set_deep_mode

> <AiSuccessResponse> ai_preferences_set_deep_mode(ai_preferences_set_deep_mode_request)

Set deep mode

Persists the deep-mode toggle of the scope. Idempotent - there is no need to check whether a value already exists.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-set-deep-mode/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::PreferencesApi.new
ai_preferences_set_deep_mode_request = DocspaceApiSdk::AiPreferencesSetDeepModeRequest.new({value: false}) # AiPreferencesSetDeepModeRequest | 

begin
  # Set deep mode
  result = api_instance.ai_preferences_set_deep_mode(ai_preferences_set_deep_mode_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PreferencesApi->ai_preferences_set_deep_mode: #{e}"
end
```

#### Using the ai_preferences_set_deep_mode_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_preferences_set_deep_mode_with_http_info(ai_preferences_set_deep_mode_request)

```ruby
begin
  # Set deep mode
  data, status_code, headers = api_instance.ai_preferences_set_deep_mode_with_http_info(ai_preferences_set_deep_mode_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PreferencesApi->ai_preferences_set_deep_mode_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_preferences_set_deep_mode_request** | [**AiPreferencesSetDeepModeRequest**](AiPreferencesSetDeepModeRequest.md) |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

