# DocspaceApiSdk::AIOpenAIPassthroughApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_openai_chat_completions**](AIOpenAIPassthroughApi.md#ai_openai_chat_completions) | **POST** /api/2.0/ai/openai/{profileId}/v1/chat/completions | OpenAI chat completions passthrough |
| [**ai_openai_images_generations**](AIOpenAIPassthroughApi.md#ai_openai_images_generations) | **POST** /api/2.0/ai/openai/{profileId}/v1/images/generations | OpenAI image generation passthrough |


## ai_openai_chat_completions

> Hash&lt;String, Object&gt; ai_openai_chat_completions(profile_id, request_body)

OpenAI chat completions passthrough

OpenAI-compatible chat completions for the document editor's AI plugin. The profile is resolved server-side, its credentials are attached, and the body is forwarded to the provider verbatim - the payload is owned by the plugin's SDK on one end and the provider on the other. A client disconnect cancels the provider call.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-chat-completions/).

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

api_instance = DocspaceApiSdk::AI::OpenAIPassthroughApi.new
profile_id = '00000000-0000-0000-0000-000000000000' # String | The AI provider profile identifier.
request_body = { key: 3.56} # Hash<String, Object> | An OpenAI Chat Completions request, forwarded to the provider byte for byte. The shape is the provider's, not this API's, so consult the provider's own reference; the model and the credentials come from the profile in the path and must not be sent here.

begin
  # OpenAI chat completions passthrough
  result = api_instance.ai_openai_chat_completions(profile_id, request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::OpenAIPassthroughApi->ai_openai_chat_completions: #{e}"
end
```

#### Using the ai_openai_chat_completions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> ai_openai_chat_completions_with_http_info(profile_id, request_body)

```ruby
begin
  # OpenAI chat completions passthrough
  data, status_code, headers = api_instance.ai_openai_chat_completions_with_http_info(profile_id, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::OpenAIPassthroughApi->ai_openai_chat_completions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The AI provider profile identifier. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) | An OpenAI Chat Completions request, forwarded to the provider byte for byte. The shape is the provider's, not this API's, so consult the provider's own reference; the model and the credentials come from the profile in the path and must not be sent here. |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_openai_images_generations

> Hash&lt;String, Object&gt; ai_openai_images_generations(profile_id, request_body)

OpenAI image generation passthrough

OpenAI-compatible image generation for the document editor's AI plugin, working exactly as the chat-completions passthrough does: the profile named by `profileId` is resolved server-side, its credentials are attached, and the body reaches the provider unchanged. The provider's status and body are relayed verbatim, so its 429 and its own error envelope surface as they stand. A body larger than this route accepts is refused before it is forwarded. A client disconnect aborts the provider call.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-openai-images-generations/).

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

api_instance = DocspaceApiSdk::AI::OpenAIPassthroughApi.new
profile_id = '00000000-0000-0000-0000-000000000000' # String | The AI provider profile identifier.
request_body = { key: 3.56} # Hash<String, Object> | An OpenAI image-generation request, forwarded to the provider byte for byte. The shape is the provider's, not this API's, and the credentials come from the profile in the path.

begin
  # OpenAI image generation passthrough
  result = api_instance.ai_openai_images_generations(profile_id, request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::OpenAIPassthroughApi->ai_openai_images_generations: #{e}"
end
```

#### Using the ai_openai_images_generations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Object&gt;, Integer, Hash)> ai_openai_images_generations_with_http_info(profile_id, request_body)

```ruby
begin
  # OpenAI image generation passthrough
  data, status_code, headers = api_instance.ai_openai_images_generations_with_http_info(profile_id, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Object&gt;
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::OpenAIPassthroughApi->ai_openai_images_generations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The AI provider profile identifier. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) | An OpenAI image-generation request, forwarded to the provider byte for byte. The shape is the provider's, not this API's, and the credentials come from the profile in the path. |  |

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

