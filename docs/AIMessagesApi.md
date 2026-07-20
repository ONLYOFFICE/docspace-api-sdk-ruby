# DocspaceApiSdk::AIMessagesApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**export_message**](AIMessagesApi.md#export_message) | **POST** /api/2.0/ai/messages/{messageId}/export | Export a single AI message to a document |


## export_message

> export_message(message_id, export_message_request_body)

Export a single AI message to a document

Exports a specific AI chat message as a document into the specified folder. The system verifies that the message exists  and belongs to a chat accessible by the current user, then publishes an asynchronous export task to the event bus.  The exported document will be created in the target folder with the given title once the background task completes.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/export-message/).

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

api_instance = DocspaceApiSdk::AI::MessagesApi.new
message_id = 1 # Integer | The unique identifier of the AI chat message to export.
export_message_request_body = DocspaceApiSdk::ExportMessageRequestBody.new({folder_id: nil, title: 'Message Export'}) # ExportMessageRequestBody | The export parameters including destination folder and file title.

begin
  # Export a single AI message to a document
  api_instance.export_message(message_id, export_message_request_body)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MessagesApi->export_message: #{e}"
end
```

#### Using the export_message_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> export_message_with_http_info(message_id, export_message_request_body)

```ruby
begin
  # Export a single AI message to a document
  data, status_code, headers = api_instance.export_message_with_http_info(message_id, export_message_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::MessagesApi->export_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **Integer** | The unique identifier of the AI chat message to export. |  |
| **export_message_request_body** | [**ExportMessageRequestBody**](ExportMessageRequestBody.md) | The export parameters including destination folder and file title. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

