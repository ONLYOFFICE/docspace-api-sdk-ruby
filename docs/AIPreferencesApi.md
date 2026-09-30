# DocspaceApiSdk::AIPreferencesApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_preferences_clear_deep_mode**](AIPreferencesApi.md#ai_preferences_clear_deep_mode) | **DELETE** /api/2.0/ai/preferences/clear-deep-mode | Clear deep mode |
| [**ai_preferences_get_deep_mode**](AIPreferencesApi.md#ai_preferences_get_deep_mode) | **GET** /api/2.0/ai/preferences/get-deep-mode | Get deep mode |
| [**ai_preferences_get_reasoning_level**](AIPreferencesApi.md#ai_preferences_get_reasoning_level) | **GET** /api/2.0/ai/preferences/get-reasoning-level | Get reasoning level |
| [**ai_preferences_is_deep_mode_set**](AIPreferencesApi.md#ai_preferences_is_deep_mode_set) | **GET** /api/2.0/ai/preferences/is-deep-mode-set | Is deep mode set |
| [**ai_preferences_set_deep_mode**](AIPreferencesApi.md#ai_preferences_set_deep_mode) | **PUT** /api/2.0/ai/preferences/set-deep-mode | Set deep mode |
| [**ai_preferences_set_reasoning_level**](AIPreferencesApi.md#ai_preferences_set_reasoning_level) | **PUT** /api/2.0/ai/preferences/set-reasoning-level | Set reasoning level |


## ai_preferences_clear_deep_mode

> <AiSuccessResponse> ai_preferences_clear_deep_mode(body)

Clear deep mode

Removes the stored extended-thinking setting of a scope (the depth and, with it, the deep-mode toggle), after which reads fall back to the configured default rather than to false. `entityId` picks a room and omitting it clears the portal-wide preference. Clearing a scope that has no stored value is not an error. This differs from storing false, which is an explicit choice a later read reports as set.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-clear-deep-mode/).

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

api_instance = DocspaceApiSdk::AI::PreferencesApi.new
body = 'body_example' # String | The ID of the room whose preference is cleared, as a bare JSON string. Send an empty body to clear the portal-wide preference.

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
| **body** | **String** | The ID of the room whose preference is cleared, as a bare JSON string. Send an empty body to clear the portal-wide preference. |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_preferences_get_deep_mode

> Boolean ai_preferences_get_deep_mode(opts)

Get deep mode

Returns the deep-mode toggle of a scope, as a bare boolean: whether the stored extended-thinking depth is above `off`. `entityId` picks a room and omitting it reads the portal-wide preference. A scope that has never had a value stored falls back to the configured default, so the answer never distinguishes off from unset - ask `GET api/2.0/ai/preferences/is-deep-mode-set` for that. This is a read-only operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-get-deep-mode/).

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

api_instance = DocspaceApiSdk::AI::PreferencesApi.new
opts = {
  entity_id: '1234' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_preferences_get_reasoning_level

> <AiAiReasoningLevel> ai_preferences_get_reasoning_level(opts)

Get reasoning level

Returns the effective extended-thinking depth of the scope: `off` while deep mode is off, otherwise the persisted depth (`low`, `medium`, `high`, `max`), falling back to the default depth (`medium`) when none has been stored. `entityId` picks a room and omitting it reads the portal-wide preference. Providers clamp the depth to what the model accepts.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-get-reasoning-level/).

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

api_instance = DocspaceApiSdk::AI::PreferencesApi.new
opts = {
  entity_id: '1234' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
}

begin
  # Get reasoning level
  result = api_instance.ai_preferences_get_reasoning_level(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PreferencesApi->ai_preferences_get_reasoning_level: #{e}"
end
```

#### Using the ai_preferences_get_reasoning_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiAiReasoningLevel>, Integer, Hash)> ai_preferences_get_reasoning_level_with_http_info(opts)

```ruby
begin
  # Get reasoning level
  data, status_code, headers = api_instance.ai_preferences_get_reasoning_level_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiAiReasoningLevel>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PreferencesApi->ai_preferences_get_reasoning_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |

### Return type

[**AiAiReasoningLevel**](AiAiReasoningLevel.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_preferences_is_deep_mode_set

> Boolean ai_preferences_is_deep_mode_set(opts)

Is deep mode set

Tells whether a scope has an explicitly persisted extended-thinking setting of its own, as opposed to inheriting the configured default. `entityId` picks a room and omitting it asks about the portal-wide preference. A true answer means a value was stored, whether that value is on or off - read the value itself with `GET api/2.0/ai/preferences/get-deep-mode`. This is the check a settings screen uses to show an explicit override rather than an inherited state.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-is-deep-mode-set/).

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

api_instance = DocspaceApiSdk::AI::PreferencesApi.new
opts = {
  entity_id: '1234' # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_preferences_set_deep_mode

> <AiSuccessResponse> ai_preferences_set_deep_mode(ai_preferences_set_deep_mode_request)

Set deep mode

Stores the deep-mode toggle of a scope. `false` stores the `off` depth; `true` keeps the depth already stored and falls back to the default depth (`medium`) when none is. `value` has to be a real boolean: a string, a number or an absent value is rejected rather than coerced, so the string false cannot silently switch the setting on and an empty request cannot silently switch it off. `entityId` picks a room and omitting it writes the portal-wide preference. It is idempotent, so there is no need to read the current value first.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-set-deep-mode/).

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_preferences_set_reasoning_level

> <AiSuccessResponse> ai_preferences_set_reasoning_level(ai_preferences_set_reasoning_level_request)

Set reasoning level

Persists the extended-thinking depth of the scope as its single stored value: a depth turns deep mode on at that depth, `off` turns it off and replaces the stored depth (a later deep-mode `true` without a depth lands on `medium`). `entityId` picks a room and omitting it writes the portal-wide preference. Idempotent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-preferences-set-reasoning-level/).

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

api_instance = DocspaceApiSdk::AI::PreferencesApi.new
ai_preferences_set_reasoning_level_request = DocspaceApiSdk::AiPreferencesSetReasoningLevelRequest.new({value: DocspaceApiSdk::AiAiReasoningLevel::OFF}) # AiPreferencesSetReasoningLevelRequest | 

begin
  # Set reasoning level
  result = api_instance.ai_preferences_set_reasoning_level(ai_preferences_set_reasoning_level_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PreferencesApi->ai_preferences_set_reasoning_level: #{e}"
end
```

#### Using the ai_preferences_set_reasoning_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_preferences_set_reasoning_level_with_http_info(ai_preferences_set_reasoning_level_request)

```ruby
begin
  # Set reasoning level
  data, status_code, headers = api_instance.ai_preferences_set_reasoning_level_with_http_info(ai_preferences_set_reasoning_level_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::PreferencesApi->ai_preferences_set_reasoning_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_preferences_set_reasoning_level_request** | [**AiPreferencesSetReasoningLevelRequest**](AiPreferencesSetReasoningLevelRequest.md) |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

