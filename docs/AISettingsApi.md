# DocspaceApiSdk::AISettingsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_settings_get**](AISettingsApi.md#ai_settings_get) | **GET** /api/2.0/ai/config | Get AI settings |
| [**ai_settings_get_tool_mode**](AISettingsApi.md#ai_settings_get_tool_mode) | **GET** /api/2.0/ai/config/tool-mode | Get the tool permission mode |
| [**ai_settings_get_user**](AISettingsApi.md#ai_settings_get_user) | **GET** /api/2.0/ai/config/user | Get user AI settings |
| [**ai_settings_get_vectorization**](AISettingsApi.md#ai_settings_get_vectorization) | **GET** /api/2.0/ai/config/vectorization | Get vectorization settings |
| [**ai_settings_set_tool_mode**](AISettingsApi.md#ai_settings_set_tool_mode) | **PUT** /api/2.0/ai/config/tool-mode | Set the tool permission mode |
| [**ai_settings_set_user**](AISettingsApi.md#ai_settings_set_user) | **PUT** /api/2.0/ai/config/user | Update user AI settings |
| [**ai_settings_set_vectorization**](AISettingsApi.md#ai_settings_set_vectorization) | **PUT** /api/2.0/ai/config/vectorization | Update vectorization settings |


## ai_settings_get

> <AiSettingsWrapper> ai_settings_get

Get AI settings

Reports the portal's AI configuration and whether AI is usable at all, which is the first call a client makes before offering any AI feature. It takes no parameters and is proxied unchanged to the DocSpace AI service, so the answer is that service's settings payload. Among other things it says whether the portal runs on the central AI gateway, which decides whether provider profiles can be edited here at all. This is a read-only operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get/).

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

api_instance = DocspaceApiSdk::AI::SettingsApi.new

begin
  # Get AI settings
  result = api_instance.ai_settings_get
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_get: #{e}"
end
```

#### Using the ai_settings_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSettingsWrapper>, Integer, Hash)> ai_settings_get_with_http_info

```ruby
begin
  # Get AI settings
  data, status_code, headers = api_instance.ai_settings_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AiSettingsWrapper**](AiSettingsWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_settings_get_tool_mode

> <AiSuccessResponse> ai_settings_get_tool_mode

Get the tool permission mode

Returns the calling user's tool permission mode as the DocSpace AI service spells it - `{ mode }` with the service's `ToolPermissionMode` enum (`Ask`, `Auto`, `Allow`), proxied unchanged. The chat reads the same value in its own spelling through `GET api/2.0/ai/preferences/get-tool-permission-mode`. This is a read-only operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-tool-mode/).

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

api_instance = DocspaceApiSdk::AI::SettingsApi.new

begin
  # Get the tool permission mode
  result = api_instance.ai_settings_get_tool_mode
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_get_tool_mode: #{e}"
end
```

#### Using the ai_settings_get_tool_mode_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_settings_get_tool_mode_with_http_info

```ruby
begin
  # Get the tool permission mode
  data, status_code, headers = api_instance.ai_settings_get_tool_mode_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_get_tool_mode_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_settings_get_user

> <AiUserSettingsWrapper> ai_settings_get_user

Get user AI settings

Returns the AI settings of the calling user, as opposed to the portal-wide ones. It takes no parameters - the user is the authenticated caller, and there is no way to read somebody else's settings - and is proxied unchanged to the DocSpace AI service. Use `GET api/2.0/ai/config` for the portal-wide configuration. This is a read-only operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-user/).

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

api_instance = DocspaceApiSdk::AI::SettingsApi.new

begin
  # Get user AI settings
  result = api_instance.ai_settings_get_user
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_get_user: #{e}"
end
```

#### Using the ai_settings_get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiUserSettingsWrapper>, Integer, Hash)> ai_settings_get_user_with_http_info

```ruby
begin
  # Get user AI settings
  data, status_code, headers = api_instance.ai_settings_get_user_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiUserSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_get_user_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AiUserSettingsWrapper**](AiUserSettingsWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_settings_get_vectorization

> <AiVectorizationSettingsWrapper> ai_settings_get_vectorization

Get vectorization settings

Returns the portal's vectorization settings - the embedding provider and the options used when portal content is indexed for retrieval. It takes no parameters and is proxied unchanged to the DocSpace AI service. Vectorization is a portal-wide setting, so there is no room-scoped form of it. Change it with `PUT api/2.0/ai/config/vectorization`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-vectorization/).

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

api_instance = DocspaceApiSdk::AI::SettingsApi.new

begin
  # Get vectorization settings
  result = api_instance.ai_settings_get_vectorization
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_get_vectorization: #{e}"
end
```

#### Using the ai_settings_get_vectorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiVectorizationSettingsWrapper>, Integer, Hash)> ai_settings_get_vectorization_with_http_info

```ruby
begin
  # Get vectorization settings
  data, status_code, headers = api_instance.ai_settings_get_vectorization_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiVectorizationSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_get_vectorization_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AiVectorizationSettingsWrapper**](AiVectorizationSettingsWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_settings_set_tool_mode

> <AiSuccessResponse> ai_settings_set_tool_mode(ai_settings_set_tool_mode_request)

Set the tool permission mode

Stores the calling user's tool permission mode and returns the stored result. The body (`{ mode }`) is proxied unchanged to the DocSpace AI service, which rejects a value outside its `ToolPermissionMode` enum. The mode applies to every chat of the user in the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-tool-mode/).

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

api_instance = DocspaceApiSdk::AI::SettingsApi.new
ai_settings_set_tool_mode_request = { key: 3.56} # Hash<String, Object> | `{ mode }` with the AI service's `ToolPermissionMode` enum, proxied unchanged; the service rejects anything outside the enum.

begin
  # Set the tool permission mode
  result = api_instance.ai_settings_set_tool_mode(ai_settings_set_tool_mode_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_set_tool_mode: #{e}"
end
```

#### Using the ai_settings_set_tool_mode_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_settings_set_tool_mode_with_http_info(ai_settings_set_tool_mode_request)

```ruby
begin
  # Set the tool permission mode
  data, status_code, headers = api_instance.ai_settings_set_tool_mode_with_http_info(ai_settings_set_tool_mode_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_set_tool_mode_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_settings_set_tool_mode_request** | [**Hash&lt;String, Object&gt;**](Object.md) | `{ mode }` with the AI service's `ToolPermissionMode` enum, proxied unchanged; the service rejects anything outside the enum. |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_settings_set_user

> <AiUserSettingsWrapper> ai_settings_set_user(ai_settings_set_user_request)

Update user AI settings

Replaces the AI settings of the calling user and returns the stored result. `chatRecommendedModelVisible` is required and has to be a real boolean - a body the JSON parser cannot read, such as one sent as text/plain, used to arrive empty and answer 200 having stored nothing. The body is then proxied to the DocSpace AI service, which validates the rest, so a rejected value comes back with that service's verdict. Only the caller's own settings can be written. Portal-wide configuration is not touched by this operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-user/).

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

api_instance = DocspaceApiSdk::AI::SettingsApi.new
ai_settings_set_user_request = { key: 3.56} # Hash<String, Object> | The user's AI settings: `chatRecommendedModelVisible` as a boolean, required. Read the current one with `GET api/2.0/ai/config/user` and send it back changed.

begin
  # Update user AI settings
  result = api_instance.ai_settings_set_user(ai_settings_set_user_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_set_user: #{e}"
end
```

#### Using the ai_settings_set_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiUserSettingsWrapper>, Integer, Hash)> ai_settings_set_user_with_http_info(ai_settings_set_user_request)

```ruby
begin
  # Update user AI settings
  data, status_code, headers = api_instance.ai_settings_set_user_with_http_info(ai_settings_set_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiUserSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_set_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_settings_set_user_request** | [**Hash&lt;String, Object&gt;**](Object.md) | The user's AI settings: `chatRecommendedModelVisible` as a boolean, required. Read the current one with `GET api/2.0/ai/config/user` and send it back changed. |  |

### Return type

[**AiUserSettingsWrapper**](AiUserSettingsWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_settings_set_vectorization

> <AiVectorizationSettingsWrapper> ai_settings_set_vectorization(ai_settings_set_vectorization_request)

Update vectorization settings

Replaces the portal's vectorization settings and returns the stored result. The body is proxied unchanged to the DocSpace AI service, which validates it, so a rejected value is reported with that service's own verdict rather than being checked here. Changing the embedding provider does not re-index anything already indexed - start that separately with `POST api/2.0/ai/vectorization/tasks`. This is a portal-wide setting and requires the permissions the AI service demands for it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-vectorization/).

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

api_instance = DocspaceApiSdk::AI::SettingsApi.new
ai_settings_set_vectorization_request = { key: 3.56} # Hash<String, Object> | The portal's vectorization settings, proxied unchanged to the DocSpace AI service, which owns and validates the shape. Read the current one with `GET api/2.0/ai/config/vectorization` and send it back changed.

begin
  # Update vectorization settings
  result = api_instance.ai_settings_set_vectorization(ai_settings_set_vectorization_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_set_vectorization: #{e}"
end
```

#### Using the ai_settings_set_vectorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiVectorizationSettingsWrapper>, Integer, Hash)> ai_settings_set_vectorization_with_http_info(ai_settings_set_vectorization_request)

```ruby
begin
  # Update vectorization settings
  data, status_code, headers = api_instance.ai_settings_set_vectorization_with_http_info(ai_settings_set_vectorization_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiVectorizationSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_set_vectorization_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_settings_set_vectorization_request** | [**Hash&lt;String, Object&gt;**](Object.md) | The portal's vectorization settings, proxied unchanged to the DocSpace AI service, which owns and validates the shape. Read the current one with `GET api/2.0/ai/config/vectorization` and send it back changed. |  |

### Return type

[**AiVectorizationSettingsWrapper**](AiVectorizationSettingsWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

