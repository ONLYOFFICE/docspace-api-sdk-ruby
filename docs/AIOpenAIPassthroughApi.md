# DocspaceApiSdk::AIOpenAIPassthroughApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_openai_chat_completions**](AIOpenAIPassthroughApi.md#ai_openai_chat_completions) | **POST** /api/2.0/ai/openai/{profileId}/v1/chat/completions | OpenAI-compatible chat completions proxied to the profile's provider |
| [**ai_openai_images_generations**](AIOpenAIPassthroughApi.md#ai_openai_images_generations) | **POST** /api/2.0/ai/openai/{profileId}/v1/images/generations | OpenAI-compatible image generation proxied to the profile's provider |


## ai_openai_chat_completions

> <AiSuccessResponse> ai_openai_chat_completions(profile_id, request_body)

OpenAI-compatible chat completions proxied to the profile's provider

OpenAI-compatible chat completions for the document editor's AI plugin. The profile is resolved server-side, its credentials are attached, and the body is forwarded to the provider verbatim - the payload is owned by the plugin's SDK on one end and the provider on the other. A client disconnect cancels the provider call.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-chat-completions/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::OpenAIPassthroughApi.new
profile_id = 'profile_id_example' # String | The AI provider profile identifier.
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  # OpenAI-compatible chat completions proxied to the profile's provider
  result = api_instance.ai_openai_chat_completions(profile_id, request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::OpenAIPassthroughApi->ai_openai_chat_completions: #{e}"
end
```

#### Using the ai_openai_chat_completions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_openai_chat_completions_with_http_info(profile_id, request_body)

```ruby
begin
  # OpenAI-compatible chat completions proxied to the profile's provider
  data, status_code, headers = api_instance.ai_openai_chat_completions_with_http_info(profile_id, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::OpenAIPassthroughApi->ai_openai_chat_completions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The AI provider profile identifier. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_openai_images_generations

> <AiSuccessResponse> ai_openai_images_generations(profile_id, request_body)

OpenAI-compatible image generation proxied to the profile's provider

OpenAI-compatible image generation for the document editor's AI plugin. As with the chat-completions passthrough, the profile's credentials are attached server-side and the body reaches the provider unchanged.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-images-generations/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::OpenAIPassthroughApi.new
profile_id = 'profile_id_example' # String | The AI provider profile identifier.
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  # OpenAI-compatible image generation proxied to the profile's provider
  result = api_instance.ai_openai_images_generations(profile_id, request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::OpenAIPassthroughApi->ai_openai_images_generations: #{e}"
end
```

#### Using the ai_openai_images_generations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_openai_images_generations_with_http_info(profile_id, request_body)

```ruby
begin
  # OpenAI-compatible image generation proxied to the profile's provider
  data, status_code, headers = api_instance.ai_openai_images_generations_with_http_info(profile_id, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::OpenAIPassthroughApi->ai_openai_images_generations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The AI provider profile identifier. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

