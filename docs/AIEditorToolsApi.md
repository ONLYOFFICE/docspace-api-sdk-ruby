# DocspaceApiSdk::AIEditorToolsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_editor_tools_call**](AIEditorToolsApi.md#ai_editor_tools_call) | **POST** /api/2.0/ai/editor-tools/call | Call an editor tool |
| [**ai_editor_tools_list**](AIEditorToolsApi.md#ai_editor_tools_list) | **GET** /api/2.0/ai/editor-tools/list | List editor tools |


## ai_editor_tools_call

> <AiEditorToolsCall200Response> ai_editor_tools_call(ai_editor_tools_call_request)

Call an editor tool

Executes one DocSpace tool on behalf of the document editor's AI plugin, server-side and under the caller's own credentials, so the browser never holds the transport. `name` has to be one of the tools `GET api/2.0/ai/editor-tools/list` reports; anything else, including a tool the editor is not allowed to reach, is refused. The result is always returned as a string - a structured result is serialised - because the plugin relays it to the model verbatim. A tool that fails does so inside that string as an error payload rather than as an HTTP status, so check the content before trusting it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-editor-tools-call/).

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

api_instance = DocspaceApiSdk::AI::EditorToolsApi.new
ai_editor_tools_call_request = DocspaceApiSdk::AiEditorToolsCallRequest.new({name: 'docspace_get_folder'}) # AiEditorToolsCallRequest | The tool to run: `name` from `GET api/2.0/ai/editor-tools/list`, `arguments` matching that tool's input schema, and an optional `entityId` for the room to run it in.

begin
  # Call an editor tool
  result = api_instance.ai_editor_tools_call(ai_editor_tools_call_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::EditorToolsApi->ai_editor_tools_call: #{e}"
end
```

#### Using the ai_editor_tools_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiEditorToolsCall200Response>, Integer, Hash)> ai_editor_tools_call_with_http_info(ai_editor_tools_call_request)

```ruby
begin
  # Call an editor tool
  data, status_code, headers = api_instance.ai_editor_tools_call_with_http_info(ai_editor_tools_call_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiEditorToolsCall200Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::EditorToolsApi->ai_editor_tools_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_editor_tools_call_request** | [**AiEditorToolsCallRequest**](AiEditorToolsCallRequest.md) | The tool to run: `name` from `GET api/2.0/ai/editor-tools/list`, `arguments` matching that tool's input schema, and an optional `entityId` for the room to run it in. |  |

### Return type

[**AiEditorToolsCall200Response**](AiEditorToolsCall200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_editor_tools_list

> <AiEditorToolsList200Response> ai_editor_tools_list

List editor tools

Returns the catalogue of DocSpace tools the document editor's AI plugin may offer the model - the same composed set the DocSpace chat sees, minus the two web-search tools the editor already reaches through its own passthrough. `entityId` scopes the catalogue to a room, which decides the room-specific tools it contains. Each entry carries exactly four fields: the tool name, its description, its input schema, and whether calling it requires an approval dialog; nothing else is exposed, because the raw listings of system servers carry transport details that must not reach a browser. The approval flag follows the same policy the chat engine applies, and a read-only tool comes back needing none - execute a tool with `POST api/2.0/ai/editor-tools/call`, which accepts only the names this catalogue reports.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-editor-tools-list/).

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

api_instance = DocspaceApiSdk::AI::EditorToolsApi.new

begin
  # List editor tools
  result = api_instance.ai_editor_tools_list
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::EditorToolsApi->ai_editor_tools_list: #{e}"
end
```

#### Using the ai_editor_tools_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiEditorToolsList200Response>, Integer, Hash)> ai_editor_tools_list_with_http_info

```ruby
begin
  # List editor tools
  data, status_code, headers = api_instance.ai_editor_tools_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiEditorToolsList200Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::EditorToolsApi->ai_editor_tools_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AiEditorToolsList200Response**](AiEditorToolsList200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

