# DocspaceApiSdk::AISettingsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_settings_get**](AISettingsApi.md#ai_settings_get) | **GET** /api/2.0/ai/config | Get AI settings |
| [**ai_settings_get_user**](AISettingsApi.md#ai_settings_get_user) | **GET** /api/2.0/ai/config/user | Get user AI settings |
| [**ai_settings_get_vectorization**](AISettingsApi.md#ai_settings_get_vectorization) | **GET** /api/2.0/ai/config/vectorization | Get vectorization settings |
| [**ai_settings_set_user**](AISettingsApi.md#ai_settings_set_user) | **PUT** /api/2.0/ai/config/user | Update user AI settings |
| [**ai_settings_set_vectorization**](AISettingsApi.md#ai_settings_set_vectorization) | **PUT** /api/2.0/ai/config/vectorization | Update vectorization settings |


## ai_settings_get

> <AiAiSettingsWrapper> ai_settings_get

Get AI settings

Reports the portal's combined AI configuration and readiness.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

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

> <Array(<AiAiSettingsWrapper>, Integer, Hash)> ai_settings_get_with_http_info

```ruby
begin
  # Get AI settings
  data, status_code, headers = api_instance.ai_settings_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiAiSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AiAiSettingsWrapper**](AiAiSettingsWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_settings_get_user

> <AiAiUserSettingsWrapper> ai_settings_get_user

Get user AI settings

Returns the current user's AI settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-user/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

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

> <Array(<AiAiUserSettingsWrapper>, Integer, Hash)> ai_settings_get_user_with_http_info

```ruby
begin
  # Get user AI settings
  data, status_code, headers = api_instance.ai_settings_get_user_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiAiUserSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_get_user_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AiAiUserSettingsWrapper**](AiAiUserSettingsWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_settings_get_vectorization

> <AiVectorizationSettingsWrapper> ai_settings_get_vectorization

Get vectorization settings

Returns the portal's vectorization settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-get-vectorization/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_settings_set_user

> <AiAiUserSettingsWrapper> ai_settings_set_user(request_body)

Update user AI settings

Updates the current user's AI settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-user/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::SettingsApi.new
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  # Update user AI settings
  result = api_instance.ai_settings_set_user(request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_set_user: #{e}"
end
```

#### Using the ai_settings_set_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiAiUserSettingsWrapper>, Integer, Hash)> ai_settings_set_user_with_http_info(request_body)

```ruby
begin
  # Update user AI settings
  data, status_code, headers = api_instance.ai_settings_set_user_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiAiUserSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_set_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  |  |

### Return type

[**AiAiUserSettingsWrapper**](AiAiUserSettingsWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_settings_set_vectorization

> <AiVectorizationSettingsWrapper> ai_settings_set_vectorization(request_body)

Update vectorization settings

Updates the portal's vectorization settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-settings-set-vectorization/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::SettingsApi.new
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  # Update vectorization settings
  result = api_instance.ai_settings_set_vectorization(request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::SettingsApi->ai_settings_set_vectorization: #{e}"
end
```

#### Using the ai_settings_set_vectorization_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiVectorizationSettingsWrapper>, Integer, Hash)> ai_settings_set_vectorization_with_http_info(request_body)

```ruby
begin
  # Update vectorization settings
  data, status_code, headers = api_instance.ai_settings_set_vectorization_with_http_info(request_body)
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
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  |  |

### Return type

[**AiVectorizationSettingsWrapper**](AiVectorizationSettingsWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

