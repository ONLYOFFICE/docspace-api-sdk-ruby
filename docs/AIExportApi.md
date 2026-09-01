# DocspaceApiSdk::AIExportApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_export_text_to_docx**](AIExportApi.md#ai_export_text_to_docx) | **POST** /api/2.0/ai/text-to-docx | Start markdown → docx export |


## ai_export_text_to_docx

> <AiExportTextToDocx200Response> ai_export_text_to_docx(ai_export_text_to_docx_request)

Start markdown → docx export

Starts an asynchronous markdown-to-docx export. The response only acknowledges the task: the AI Worker converts the content and saves the .docx into the target folder (an agent room resolves to its result-storage subfolder), and completion reaches the client as the usual folder-modified socket event.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-export-text-to-docx/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ExportApi.new
ai_export_text_to_docx_request = DocspaceApiSdk::AiExportTextToDocxRequest.new({title: 'title_example', content: 'content_example', folder_id: DocspaceApiSdk::AiExportTextToDocxRequestFolderId.new}) # AiExportTextToDocxRequest | 

begin
  # Start markdown → docx export
  result = api_instance.ai_export_text_to_docx(ai_export_text_to_docx_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ExportApi->ai_export_text_to_docx: #{e}"
end
```

#### Using the ai_export_text_to_docx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiExportTextToDocx200Response>, Integer, Hash)> ai_export_text_to_docx_with_http_info(ai_export_text_to_docx_request)

```ruby
begin
  # Start markdown → docx export
  data, status_code, headers = api_instance.ai_export_text_to_docx_with_http_info(ai_export_text_to_docx_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiExportTextToDocx200Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ExportApi->ai_export_text_to_docx_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_export_text_to_docx_request** | [**AiExportTextToDocxRequest**](AiExportTextToDocxRequest.md) |  |  |

### Return type

[**AiExportTextToDocx200Response**](AiExportTextToDocx200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

