# DocspaceApiSdk::AIEditorToolsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_editor_tools_call**](AIEditorToolsApi.md#ai_editor_tools_call) | **POST** /api/2.0/ai/editor-tools/call | Execute a DocSpace tool on behalf of the editor AI plugin |
| [**ai_editor_tools_list**](AIEditorToolsApi.md#ai_editor_tools_list) | **GET** /api/2.0/ai/editor-tools/list | Sanitized DocSpace tool catalog for the editor AI plugin |


## ai_editor_tools_call

> <AiSuccessResponse> ai_editor_tools_call(request_body)

Execute a DocSpace tool on behalf of the editor AI plugin

Executes one DocSpace tool on behalf of the document editor's AI plugin, server-side and with the caller's forwarded credentials. Whatever the tool produced is returned for the plugin to relay to the model; a failure comes back as an error payload.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-editor-tools-call/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::EditorToolsApi.new
request_body = { key: 3.56} # Hash<String, Object> | 

begin
  # Execute a DocSpace tool on behalf of the editor AI plugin
  result = api_instance.ai_editor_tools_call(request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::EditorToolsApi->ai_editor_tools_call: #{e}"
end
```

#### Using the ai_editor_tools_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_editor_tools_call_with_http_info(request_body)

```ruby
begin
  # Execute a DocSpace tool on behalf of the editor AI plugin
  data, status_code, headers = api_instance.ai_editor_tools_call_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::EditorToolsApi->ai_editor_tools_call_with_http_info: #{e}"
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


## ai_editor_tools_list

> <AiSuccessResponse> ai_editor_tools_list

Sanitized DocSpace tool catalog for the editor AI plugin

Returns the sanitized catalog of DocSpace tools available to the document editor's AI plugin - the same composed tool set the DocSpace chat sees, minus the web-search pair the editor already has through its own passthrough. Only the name, description, parameters and approval flag of each tool are exposed; transport details never reach the browser.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-editor-tools-list/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::EditorToolsApi.new

begin
  # Sanitized DocSpace tool catalog for the editor AI plugin
  result = api_instance.ai_editor_tools_list
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::EditorToolsApi->ai_editor_tools_list: #{e}"
end
```

#### Using the ai_editor_tools_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_editor_tools_list_with_http_info

```ruby
begin
  # Sanitized DocSpace tool catalog for the editor AI plugin
  data, status_code, headers = api_instance.ai_editor_tools_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::EditorToolsApi->ai_editor_tools_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

