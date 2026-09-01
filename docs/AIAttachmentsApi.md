# DocspaceApiSdk::AIAttachmentsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_attachments_delete**](AIAttachmentsApi.md#ai_attachments_delete) | **DELETE** /api/2.0/ai/attachments/delete | Delete |
| [**ai_attachments_delete_many**](AIAttachmentsApi.md#ai_attachments_delete_many) | **DELETE** /api/2.0/ai/attachments/delete-many | Delete many |
| [**ai_attachments_get**](AIAttachmentsApi.md#ai_attachments_get) | **POST** /api/2.0/ai/attachments/get | Get |
| [**ai_attachments_get_many**](AIAttachmentsApi.md#ai_attachments_get_many) | **POST** /api/2.0/ai/attachments/get-many | Get many |
| [**ai_attachments_link_to_message**](AIAttachmentsApi.md#ai_attachments_link_to_message) | **POST** /api/2.0/ai/attachments/link-to-message | Link to message |
| [**ai_attachments_save_file**](AIAttachmentsApi.md#ai_attachments_save_file) | **POST** /api/2.0/ai/attachments/save-file | Save file |
| [**ai_attachments_save_files_many**](AIAttachmentsApi.md#ai_attachments_save_files_many) | **POST** /api/2.0/ai/attachments/save-files-many | Save files many |


## ai_attachments_delete

> <AiSuccessResponse> ai_attachments_delete(body)

Delete

Permanently deletes one attachment, whether it is still a draft or already linked to a message.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AttachmentsApi.new
body = 'body_example' # String | 

begin
  # Delete
  result = api_instance.ai_attachments_delete(body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AttachmentsApi->ai_attachments_delete: #{e}"
end
```

#### Using the ai_attachments_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_attachments_delete_with_http_info(body)

```ruby
begin
  # Delete
  data, status_code, headers = api_instance.ai_attachments_delete_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AttachmentsApi->ai_attachments_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_attachments_delete_many

> <AiSuccessResponse> ai_attachments_delete_many(request_body)

Delete many

Permanently deletes a batch of attachments in a single round trip.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete-many/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AttachmentsApi.new
request_body = ['property_example'] # Array<String> | 

begin
  # Delete many
  result = api_instance.ai_attachments_delete_many(request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AttachmentsApi->ai_attachments_delete_many: #{e}"
end
```

#### Using the ai_attachments_delete_many_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_attachments_delete_many_with_http_info(request_body)

```ruby
begin
  # Delete many
  data, status_code, headers = api_instance.ai_attachments_delete_many_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AttachmentsApi->ai_attachments_delete_many_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Array&lt;String&gt;**](String.md) |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_attachments_get

> <AiAttachment> ai_attachments_get(body)

Get

Returns one attachment by identifier.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AttachmentsApi.new
body = 'body_example' # String | 

begin
  # Get
  result = api_instance.ai_attachments_get(body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AttachmentsApi->ai_attachments_get: #{e}"
end
```

#### Using the ai_attachments_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiAttachment>, Integer, Hash)> ai_attachments_get_with_http_info(body)

```ruby
begin
  # Get
  data, status_code, headers = api_instance.ai_attachments_get_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiAttachment>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AttachmentsApi->ai_attachments_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** |  |  |

### Return type

[**AiAttachment**](AiAttachment.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_attachments_get_many

> <Array<AiAttachment>> ai_attachments_get_many(request_body)

Get many

Returns a batch of attachments, preserving the requested order; an identifier that no longer exists comes back empty.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get-many/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AttachmentsApi.new
request_body = ['property_example'] # Array<String> | 

begin
  # Get many
  result = api_instance.ai_attachments_get_many(request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AttachmentsApi->ai_attachments_get_many: #{e}"
end
```

#### Using the ai_attachments_get_many_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AiAttachment>>, Integer, Hash)> ai_attachments_get_many_with_http_info(request_body)

```ruby
begin
  # Get many
  data, status_code, headers = api_instance.ai_attachments_get_many_with_http_info(request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AiAttachment>>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AttachmentsApi->ai_attachments_get_many_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_body** | [**Array&lt;String&gt;**](String.md) |  |  |

### Return type

[**Array&lt;AiAttachment&gt;**](AiAttachment.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_attachments_link_to_message

> <AiSuccessResponse> ai_attachments_link_to_message(ai_attachments_link_to_message_request)

Link to message

Binds draft attachments to the chat message that owns them, once that message has been persisted, so deleting the message removes them too. Identifiers that no longer exist are skipped.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-link-to-message/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AttachmentsApi.new
ai_attachments_link_to_message_request = DocspaceApiSdk::AiAttachmentsLinkToMessageRequest.new({ids: ['ids_example'], message_id: 'message_id_example', thread_id: 'thread_id_example'}) # AiAttachmentsLinkToMessageRequest | 

begin
  # Link to message
  result = api_instance.ai_attachments_link_to_message(ai_attachments_link_to_message_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AttachmentsApi->ai_attachments_link_to_message: #{e}"
end
```

#### Using the ai_attachments_link_to_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_attachments_link_to_message_with_http_info(ai_attachments_link_to_message_request)

```ruby
begin
  # Link to message
  data, status_code, headers = api_instance.ai_attachments_link_to_message_with_http_info(ai_attachments_link_to_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AttachmentsApi->ai_attachments_link_to_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_attachments_link_to_message_request** | [**AiAttachmentsLinkToMessageRequest**](AiAttachmentsLinkToMessageRequest.md) |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_attachments_save_file

> <AiAttachment> ai_attachments_save_file(ai_attachments_save_file_request)

Save file

Stores one file attachment as a draft, carrying the host-extracted text of the file. Prefer `save-files-many` when adding several files at once so they land as one round trip.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-file/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AttachmentsApi.new
ai_attachments_save_file_request = DocspaceApiSdk::AiAttachmentsSaveFileRequest.new({input: DocspaceApiSdk::AiAttachmentsSaveFileRequestInput.new({path: 'path_example', content: 'content_example', type: 3.56})}) # AiAttachmentsSaveFileRequest | 

begin
  # Save file
  result = api_instance.ai_attachments_save_file(ai_attachments_save_file_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AttachmentsApi->ai_attachments_save_file: #{e}"
end
```

#### Using the ai_attachments_save_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiAttachment>, Integer, Hash)> ai_attachments_save_file_with_http_info(ai_attachments_save_file_request)

```ruby
begin
  # Save file
  data, status_code, headers = api_instance.ai_attachments_save_file_with_http_info(ai_attachments_save_file_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiAttachment>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AttachmentsApi->ai_attachments_save_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_attachments_save_file_request** | [**AiAttachmentsSaveFileRequest**](AiAttachmentsSaveFileRequest.md) |  |  |

### Return type

[**AiAttachment**](AiAttachment.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_attachments_save_files_many

> <Array<AiAttachment>> ai_attachments_save_files_many(ai_attachments_save_files_many_request)

Save files many

Stores a batch of file attachments as drafts in a single round trip. The returned records keep the order of the input.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-files-many/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AttachmentsApi.new
ai_attachments_save_files_many_request = DocspaceApiSdk::AiAttachmentsSaveFilesManyRequest.new({inputs: [DocspaceApiSdk::AiAttachmentsSaveFileRequestInput.new({path: 'path_example', content: 'content_example', type: 3.56})]}) # AiAttachmentsSaveFilesManyRequest | 

begin
  # Save files many
  result = api_instance.ai_attachments_save_files_many(ai_attachments_save_files_many_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AttachmentsApi->ai_attachments_save_files_many: #{e}"
end
```

#### Using the ai_attachments_save_files_many_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AiAttachment>>, Integer, Hash)> ai_attachments_save_files_many_with_http_info(ai_attachments_save_files_many_request)

```ruby
begin
  # Save files many
  data, status_code, headers = api_instance.ai_attachments_save_files_many_with_http_info(ai_attachments_save_files_many_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AiAttachment>>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AttachmentsApi->ai_attachments_save_files_many_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_attachments_save_files_many_request** | [**AiAttachmentsSaveFilesManyRequest**](AiAttachmentsSaveFilesManyRequest.md) |  |  |

### Return type

[**Array&lt;AiAttachment&gt;**](AiAttachment.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

