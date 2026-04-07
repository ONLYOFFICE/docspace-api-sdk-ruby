# DocspaceApiSdk::AIVectorizationApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**start_task**](AIVectorizationApi.md#start_task) | **POST** /api/2.0/ai/vectorization/tasks | Start a vectorization task |


## start_task

> start_task(vectorization_start_request_body)

Start a vectorization task

Submits the specified files for vectorization. Each file is processed asynchronously by the configured embedding provider  and indexed for semantic search in AI chat sessions. Only files accessible to the current user can be vectorized.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-task/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure API key authorization: ApiKeyBearer
  config.api_key['ApiKeyBearer'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyBearer'] = 'Bearer'

  # Configure API key authorization: asc_auth_key
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization (JWT): Bearer
  config.access_token = 'YOUR_BEARER_TOKEN'

end

api_instance = DocspaceApiSdk::AI::VectorizationApi.new
vectorization_start_request_body = DocspaceApiSdk::VectorizationStartRequestBody.new({files: [101, 102, 103]}) # VectorizationStartRequestBody | The vectorization parameters including file identifiers.

begin
  # Start a vectorization task
  api_instance.start_task(vectorization_start_request_body)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::VectorizationApi->start_task: #{e}"
end
```

#### Using the start_task_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> start_task_with_http_info(vectorization_start_request_body)

```ruby
begin
  # Start a vectorization task
  data, status_code, headers = api_instance.start_task_with_http_info(vectorization_start_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::VectorizationApi->start_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vectorization_start_request_body** | [**VectorizationStartRequestBody**](VectorizationStartRequestBody.md) | The vectorization parameters including file identifiers. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

