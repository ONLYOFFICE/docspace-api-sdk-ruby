# DocspaceApiSdk::AIAttachmentsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_attachments_delete**](AIAttachmentsApi.md#ai_attachments_delete) | **DELETE** /api/2.0/ai/attachments/delete | Delete one attachment |
| [**ai_attachments_delete_many**](AIAttachmentsApi.md#ai_attachments_delete_many) | **DELETE** /api/2.0/ai/attachments/delete-many | Delete many |
| [**ai_attachments_get**](AIAttachmentsApi.md#ai_attachments_get) | **POST** /api/2.0/ai/attachments/get | Get one attachment |
| [**ai_attachments_get_many**](AIAttachmentsApi.md#ai_attachments_get_many) | **POST** /api/2.0/ai/attachments/get-many | Get many |
| [**ai_attachments_link_to_message**](AIAttachmentsApi.md#ai_attachments_link_to_message) | **POST** /api/2.0/ai/attachments/link-to-message | Link to message |
| [**ai_attachments_save_file**](AIAttachmentsApi.md#ai_attachments_save_file) | **POST** /api/2.0/ai/attachments/save-file | Save file |
| [**ai_attachments_save_files_many**](AIAttachmentsApi.md#ai_attachments_save_files_many) | **POST** /api/2.0/ai/attachments/save-files-many | Save files many |


## ai_attachments_delete

> <AiSuccessResponse> ai_attachments_delete(body)

Delete one attachment

Permanently deletes one attachment, whether it is still a draft or already bound to a message. The ID is not validated here, so a malformed one surfaces as an error relayed from storage rather than as a 400, and an ID that does not exist answers success without deleting anything. Deleting a bound attachment leaves the message in place without it. The deletion cannot be undone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete/).

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

api_instance = DocspaceApiSdk::AI::AttachmentsApi.new
body = 'body_example' # String | The ID of the attachment to delete, as a bare JSON string.

begin
  # Delete one attachment
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
  # Delete one attachment
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
| **body** | **String** | The ID of the attachment to delete, as a bare JSON string. |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_attachments_delete_many

> <AiSuccessResponse> ai_attachments_delete_many(request_body)

Delete many

Permanently deletes several attachments in one round trip. `ids` is optional and an absent value is treated as an empty list, so a malformed request quietly deletes nothing instead of failing. IDs that do not exist are skipped without being reported, so the answer confirms only that the call was accepted. The deletions cannot be undone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-delete-many/).

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

api_instance = DocspaceApiSdk::AI::AttachmentsApi.new
request_body = ['property_example'] # Array<String> | The IDs of the attachments to delete, as a bare JSON array of strings.

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
| **request_body** | [**Array&lt;String&gt;**](String.md) | The IDs of the attachments to delete, as a bare JSON array of strings. |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_attachments_get

> <AiAttachment> ai_attachments_get(body)

Get one attachment

Returns one attachment by its ID, whether it is still a draft or already bound to a message. The ID is required and has to be a non-empty string. An ID that no longer exists is not reported as 404: the answer is a null body with status 200, so treat a missing payload as no such attachment. Use `POST api/2.0/ai/attachments/get-many` to read several at once.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get/).

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

api_instance = DocspaceApiSdk::AI::AttachmentsApi.new
body = 'body_example' # String | The ID of the attachment to read, as a bare JSON string.

begin
  # Get one attachment
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
  # Get one attachment
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
| **body** | **String** | The ID of the attachment to read, as a bare JSON string. |  |

### Return type

[**AiAttachment**](AiAttachment.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_attachments_get_many

> <Array<AiAttachment>> ai_attachments_get_many(request_body)

Get many

Returns several attachments in one call, aligned by position with the `ids` that were sent, so the answer can be zipped straight onto the request. An ID that no longer exists leaves its slot empty rather than shortening the list, which is how a caller tells which of them are gone. `ids` has to be present and non-empty - an empty batch is rejected rather than answered with an empty list. Nothing is changed by the call.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-get-many/).

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

api_instance = DocspaceApiSdk::AI::AttachmentsApi.new
request_body = ['property_example'] # Array<String> | The IDs of the attachments to read, as a bare JSON array of strings. The answer is aligned with this array by position.

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
| **request_body** | [**Array&lt;String&gt;**](String.md) | The IDs of the attachments to read, as a bare JSON array of strings. The answer is aligned with this array by position. |  |

### Return type

[**Array&lt;AiAttachment&gt;**](AiAttachment.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_attachments_link_to_message

> <AiSuccessResponse> ai_attachments_link_to_message(ai_attachments_link_to_message_request)

Link to message

Binds draft attachments to the chat message that owns them, after that message has been persisted, so that deleting the message removes them too. All three of `ids`, `messageId` and `threadId` are required, and the references are verified rather than trusted: an unknown message answers 404, a message that belongs to a different thread answers 400, and attachments that no longer exist answer 404 naming each missing ID. That verification exists because the underlying binding call skips unknown IDs silently, which used to report success for a link that had not happened. Drafts stay unbound until this succeeds.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-link-to-message/).

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_attachments_save_file

> <AiAttachment> ai_attachments_save_file(ai_attachments_save_file_request)

Save file

Stores one file attachment as a draft and returns it, so its ID can be attached to a message later. `input` carries the host `path` - the DocSpace entry ID the AI backend resolves server-side - the text `content` already extracted from that file, the ONLYOFFICE numeric file `type`, and optionally a `title`; the text is what the model reads, so this operation does not open the file itself. Archives are refused outright, whatever their declared name says. Drafts are not bound to a conversation until `POST api/2.0/ai/attachments/link-to-message` is called, so an unlinked draft outlives the round that created it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-file/).

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_attachments_save_files_many

> <Array<AiAttachment>> ai_attachments_save_files_many(ai_attachments_save_files_many_request)

Save files many

Stores several file attachments as drafts in one round trip and returns them in the order they were sent. Each entry is validated exactly as the single-file operation validates its `input`, and the first bad one rejects the whole batch with its index named in the message - nothing is stored. `inputs` has to be present and an array: an absent or null value is a malformed request rather than an empty batch, and only an explicit empty array means no files. Follow up with `POST api/2.0/ai/attachments/link-to-message` to bind the drafts to a message.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-attachments-save-files-many/).

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

