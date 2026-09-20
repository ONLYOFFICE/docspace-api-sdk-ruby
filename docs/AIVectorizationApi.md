# DocspaceApiSdk::AIVectorizationApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_vectorization_start_task**](AIVectorizationApi.md#ai_vectorization_start_task) | **POST** /api/2.0/ai/vectorization/tasks | Start a vectorization task |


## ai_vectorization_start_task

> <AiVectorizationStartTask200Response> ai_vectorization_start_task(ai_vectorization_start_task_request)

Start a vectorization task

Queues the indexing of the portal files named in the body so their contents can be retrieved during a chat round. The body is proxied unchanged to the DocSpace AI service, which validates it and owns the job. Indexing is asynchronous and fire-and-forget: the answer acknowledges the request without carrying a job handle, so there is nothing to poll and progress is not reported here. The embedding provider used is the one in `GET api/2.0/ai/config/vectorization`, and changing that setting does not re-index anything already indexed - queue it again for that.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-vectorization-start-task/).

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

api_instance = DocspaceApiSdk::AI::VectorizationApi.new
ai_vectorization_start_task_request = DocspaceApiSdk::AiVectorizationStartTaskRequest.new({files: [1234, 1235]}) # AiVectorizationStartTaskRequest | The files to index, proxied unchanged to the DocSpace AI service, which owns and validates the shape.

begin
  # Start a vectorization task
  result = api_instance.ai_vectorization_start_task(ai_vectorization_start_task_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::VectorizationApi->ai_vectorization_start_task: #{e}"
end
```

#### Using the ai_vectorization_start_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiVectorizationStartTask200Response>, Integer, Hash)> ai_vectorization_start_task_with_http_info(ai_vectorization_start_task_request)

```ruby
begin
  # Start a vectorization task
  data, status_code, headers = api_instance.ai_vectorization_start_task_with_http_info(ai_vectorization_start_task_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiVectorizationStartTask200Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::VectorizationApi->ai_vectorization_start_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_vectorization_start_task_request** | [**AiVectorizationStartTaskRequest**](AiVectorizationStartTaskRequest.md) | The files to index, proxied unchanged to the DocSpace AI service, which owns and validates the shape. |  |

### Return type

[**AiVectorizationStartTask200Response**](AiVectorizationStartTask200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

