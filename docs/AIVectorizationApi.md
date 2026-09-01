# DocspaceApiSdk::AIVectorizationApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_vectorization_start_task**](AIVectorizationApi.md#ai_vectorization_start_task) | **POST** /api/2.0/ai/vectorization/tasks | Start a vectorization task |


## ai_vectorization_start_task

> <AiSuccessResponse> ai_vectorization_start_task(request_body)

Start a vectorization task

Starts a vectorization task over the supplied portal files. The indexing itself runs asynchronously on the .NET side.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-vectorization-start-task/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::VectorizationApi.new
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  # Start a vectorization task
  result = api_instance.ai_vectorization_start_task(request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::VectorizationApi->ai_vectorization_start_task: #{e}"
end
```

#### Using the ai_vectorization_start_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_vectorization_start_task_with_http_info(request_body)

```ruby
begin
  # Start a vectorization task
  data, status_code, headers = api_instance.ai_vectorization_start_task_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::VectorizationApi->ai_vectorization_start_task_with_http_info: #{e}"
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

