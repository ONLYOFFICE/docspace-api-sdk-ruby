# DocspaceApiSdk::AIContextApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_context_get_context_folders**](AIContextApi.md#ai_context_get_context_folders) | **GET** /api/2.0/ai/context/get-context-folders | Get context folders |
| [**ai_context_get_room_skill**](AIContextApi.md#ai_context_get_room_skill) | **GET** /api/2.0/ai/context/get-room-skill | Get room skill |
| [**ai_context_get_room_skills**](AIContextApi.md#ai_context_get_room_skills) | **GET** /api/2.0/ai/context/get-room-skills | Get room skills |


## ai_context_get_context_folders

> <AiSuccessResponse> ai_context_get_context_folders

Get context folders

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-context-folders/).

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

api_instance = DocspaceApiSdk::AI::ContextApi.new

begin
  # Get context folders
  result = api_instance.ai_context_get_context_folders
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ContextApi->ai_context_get_context_folders: #{e}"
end
```

#### Using the ai_context_get_context_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_context_get_context_folders_with_http_info

```ruby
begin
  # Get context folders
  data, status_code, headers = api_instance.ai_context_get_context_folders_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ContextApi->ai_context_get_context_folders_with_http_info: #{e}"
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


## ai_context_get_room_skill

> <AiSuccessResponse> ai_context_get_room_skill(cloud, room_id, skill_id)

Get room skill

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skill/).

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

api_instance = DocspaceApiSdk::AI::ContextApi.new
cloud = 'cloud_example' # String | 
room_id = 'room_id_example' # String | 
skill_id = 'skill_id_example' # String | 

begin
  # Get room skill
  result = api_instance.ai_context_get_room_skill(cloud, room_id, skill_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ContextApi->ai_context_get_room_skill: #{e}"
end
```

#### Using the ai_context_get_room_skill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_context_get_room_skill_with_http_info(cloud, room_id, skill_id)

```ruby
begin
  # Get room skill
  data, status_code, headers = api_instance.ai_context_get_room_skill_with_http_info(cloud, room_id, skill_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ContextApi->ai_context_get_room_skill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud** | **String** |  |  |
| **room_id** | **String** |  |  |
| **skill_id** | **String** |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_context_get_room_skills

> <AiSuccessResponse> ai_context_get_room_skills(cloud, room_id)

Get room skills

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skills/).

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

api_instance = DocspaceApiSdk::AI::ContextApi.new
cloud = 'cloud_example' # String | 
room_id = 'room_id_example' # String | 

begin
  # Get room skills
  result = api_instance.ai_context_get_room_skills(cloud, room_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ContextApi->ai_context_get_room_skills: #{e}"
end
```

#### Using the ai_context_get_room_skills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_context_get_room_skills_with_http_info(cloud, room_id)

```ruby
begin
  # Get room skills
  data, status_code, headers = api_instance.ai_context_get_room_skills_with_http_info(cloud, room_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ContextApi->ai_context_get_room_skills_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud** | **String** |  |  |
| **room_id** | **String** |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

