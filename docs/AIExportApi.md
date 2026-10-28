# DocspaceApiSdk::AIExportApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_export_text_to_docx**](AIExportApi.md#ai_export_text_to_docx) | **POST** /api/2.0/ai/text-to-docx | Start markdown export |


## ai_export_text_to_docx

> <AiExportTextToDocx202Response> ai_export_text_to_docx(ai_export_text_to_docx_request)

Start markdown export

Queues a markdown export and answers 202 as soon as the job is accepted, without waiting for it. `title`, `content` and `folderId` are all required, and a `content` of only whitespace counts as missing even though it is not empty. `format` is optional and selects the output - `Docx` (the default), `Pdf`, or `Md`, which stores the markdown verbatim instead of converting it. The conversion runs in the AI worker, which saves the .docx into the target folder - an agent room resolves to its own result-storage subfolder - so there is nothing to poll here: completion arrives as the ordinary folder-modified socket event. This route accepts a body of up to 15 MB rather than the 100 KB the rest of the API allows, because a whole thread transcript is sent in one request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-export-text-to-docx/).

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

api_instance = DocspaceApiSdk::AI::ExportApi.new
ai_export_text_to_docx_request = DocspaceApiSdk::AiExportTextToDocxRequest.new({title: 'title_example', content: 'content_example', folder_id: DocspaceApiSdk::AiExportTextToDocxRequestFolderId.new}) # AiExportTextToDocxRequest | 

begin
  # Start markdown export
  result = api_instance.ai_export_text_to_docx(ai_export_text_to_docx_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ExportApi->ai_export_text_to_docx: #{e}"
end
```

#### Using the ai_export_text_to_docx_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiExportTextToDocx202Response>, Integer, Hash)> ai_export_text_to_docx_with_http_info(ai_export_text_to_docx_request)

```ruby
begin
  # Start markdown export
  data, status_code, headers = api_instance.ai_export_text_to_docx_with_http_info(ai_export_text_to_docx_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiExportTextToDocx202Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ExportApi->ai_export_text_to_docx_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_export_text_to_docx_request** | [**AiExportTextToDocxRequest**](AiExportTextToDocxRequest.md) |  |  |

### Return type

[**AiExportTextToDocx202Response**](AiExportTextToDocx202Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

