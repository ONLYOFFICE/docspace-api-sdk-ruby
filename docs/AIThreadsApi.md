# DocspaceApiSdk::AIThreadsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_threads_append_user_message**](AIThreadsApi.md#ai_threads_append_user_message) | **POST** /api/2.0/ai/threads/append-user-message | Append user message |
| [**ai_threads_clear_messages**](AIThreadsApi.md#ai_threads_clear_messages) | **DELETE** /api/2.0/ai/threads/clear-messages | Clear messages |
| [**ai_threads_create**](AIThreadsApi.md#ai_threads_create) | **POST** /api/2.0/ai/threads/create | Create |
| [**ai_threads_delete**](AIThreadsApi.md#ai_threads_delete) | **DELETE** /api/2.0/ai/threads/delete | Delete |
| [**ai_threads_delete_message**](AIThreadsApi.md#ai_threads_delete_message) | **DELETE** /api/2.0/ai/threads/delete-message | Delete message |
| [**ai_threads_get_by_id**](AIThreadsApi.md#ai_threads_get_by_id) | **GET** /api/2.0/ai/threads/get-by-id | Get by id |
| [**ai_threads_get_message_by_id**](AIThreadsApi.md#ai_threads_get_message_by_id) | **GET** /api/2.0/ai/threads/get-message-by-id | Get message by id |
| [**ai_threads_list**](AIThreadsApi.md#ai_threads_list) | **GET** /api/2.0/ai/threads/list | List |
| [**ai_threads_open_or_create**](AIThreadsApi.md#ai_threads_open_or_create) | **POST** /api/2.0/ai/threads/open-or-create | Open or create |
| [**ai_threads_read_messages**](AIThreadsApi.md#ai_threads_read_messages) | **GET** /api/2.0/ai/threads/read-messages | Read messages |
| [**ai_threads_regenerate_title**](AIThreadsApi.md#ai_threads_regenerate_title) | **POST** /api/2.0/ai/threads/regenerate-title | Regenerate title |
| [**ai_threads_rename**](AIThreadsApi.md#ai_threads_rename) | **PUT** /api/2.0/ai/threads/rename | Rename |
| [**ai_threads_touch**](AIThreadsApi.md#ai_threads_touch) | **POST** /api/2.0/ai/threads/touch | Touch |
| [**ai_threads_update_message**](AIThreadsApi.md#ai_threads_update_message) | **PUT** /api/2.0/ai/threads/update-message | Update message |


## ai_threads_append_user_message

> <AiThreadMessageLike> ai_threads_append_user_message(ai_threads_append_user_message_request)

Append user message

Persists a user message in a thread and bumps the thread's last-edit date so it resurfaces in the sidebar. Optionally rebinds the thread to another profile when the model changed mid-conversation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-append-user-message/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
ai_threads_append_user_message_request = DocspaceApiSdk::AiThreadsAppendUserMessageRequest.new({thread_id: 'thread_id_example', message: DocspaceApiSdk::AiThreadMessageLike.new({role: 'user', content: DocspaceApiSdk::AiThreadMessageLikeContent.new})}) # AiThreadsAppendUserMessageRequest | 

begin
  # Append user message
  result = api_instance.ai_threads_append_user_message(ai_threads_append_user_message_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_append_user_message: #{e}"
end
```

#### Using the ai_threads_append_user_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiThreadMessageLike>, Integer, Hash)> ai_threads_append_user_message_with_http_info(ai_threads_append_user_message_request)

```ruby
begin
  # Append user message
  data, status_code, headers = api_instance.ai_threads_append_user_message_with_http_info(ai_threads_append_user_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiThreadMessageLike>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_append_user_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_threads_append_user_message_request** | [**AiThreadsAppendUserMessageRequest**](AiThreadsAppendUserMessageRequest.md) |  |  |

### Return type

[**AiThreadMessageLike**](AiThreadMessageLike.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_threads_clear_messages

> <AiSuccessResponse> ai_threads_clear_messages(body)

Clear messages

Drops every message of a thread while keeping the thread itself, and bumps its last-edit date.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-clear-messages/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
body = 'body_example' # String | 

begin
  # Clear messages
  result = api_instance.ai_threads_clear_messages(body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_clear_messages: #{e}"
end
```

#### Using the ai_threads_clear_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_threads_clear_messages_with_http_info(body)

```ruby
begin
  # Clear messages
  data, status_code, headers = api_instance.ai_threads_clear_messages_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_clear_messages_with_http_info: #{e}"
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


## ai_threads_create

> <AiThread> ai_threads_create(ai_threads_create_request)

Create

Creates a chat thread with a caller-supplied title. Use `open-or-create` instead when the title should be generated from the first user message.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-create/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
ai_threads_create_request = DocspaceApiSdk::AiThreadsCreateRequest.new({title: 'title_example'}) # AiThreadsCreateRequest | 

begin
  # Create
  result = api_instance.ai_threads_create(ai_threads_create_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_create: #{e}"
end
```

#### Using the ai_threads_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiThread>, Integer, Hash)> ai_threads_create_with_http_info(ai_threads_create_request)

```ruby
begin
  # Create
  data, status_code, headers = api_instance.ai_threads_create_with_http_info(ai_threads_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiThread>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_threads_create_request** | [**AiThreadsCreateRequest**](AiThreadsCreateRequest.md) |  |  |

### Return type

[**AiThread**](AiThread.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_threads_delete

> <AiSuccessResponse> ai_threads_delete(body)

Delete

Deletes a chat thread together with its messages.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
body = 'body_example' # String | 

begin
  # Delete
  result = api_instance.ai_threads_delete(body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_delete: #{e}"
end
```

#### Using the ai_threads_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_threads_delete_with_http_info(body)

```ruby
begin
  # Delete
  data, status_code, headers = api_instance.ai_threads_delete_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_delete_with_http_info: #{e}"
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


## ai_threads_delete_message

> <AiSuccessResponse> ai_threads_delete_message(body)

Delete message

Deletes one chat message, leaving the rest of the thread untouched.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete-message/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
body = 'body_example' # String | 

begin
  # Delete message
  result = api_instance.ai_threads_delete_message(body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_delete_message: #{e}"
end
```

#### Using the ai_threads_delete_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_threads_delete_message_with_http_info(body)

```ruby
begin
  # Delete message
  data, status_code, headers = api_instance.ai_threads_delete_message_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_delete_message_with_http_info: #{e}"
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


## ai_threads_get_by_id

> <AiThread> ai_threads_get_by_id(thread_id)

Get by id

Returns one chat thread, or an empty result when the identifier is unknown.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-by-id/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
thread_id = 'thread_id_example' # String | The chat thread identifier.

begin
  # Get by id
  result = api_instance.ai_threads_get_by_id(thread_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_get_by_id: #{e}"
end
```

#### Using the ai_threads_get_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiThread>, Integer, Hash)> ai_threads_get_by_id_with_http_info(thread_id)

```ruby
begin
  # Get by id
  data, status_code, headers = api_instance.ai_threads_get_by_id_with_http_info(thread_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiThread>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_get_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The chat thread identifier. |  |

### Return type

[**AiThread**](AiThread.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_threads_get_message_by_id

> <AiThreadMessageLike> ai_threads_get_message_by_id(message_id)

Get message by id

Returns one chat message by its globally unique identifier.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-message-by-id/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
message_id = 'message_id_example' # String | The globally unique chat message identifier.

begin
  # Get message by id
  result = api_instance.ai_threads_get_message_by_id(message_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_get_message_by_id: #{e}"
end
```

#### Using the ai_threads_get_message_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiThreadMessageLike>, Integer, Hash)> ai_threads_get_message_by_id_with_http_info(message_id)

```ruby
begin
  # Get message by id
  data, status_code, headers = api_instance.ai_threads_get_message_by_id_with_http_info(message_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiThreadMessageLike>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_get_message_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | The globally unique chat message identifier. |  |

### Return type

[**AiThreadMessageLike**](AiThreadMessageLike.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_threads_list

> <Array<AiThread>> ai_threads_list(opts)

List

Lists the chat threads of the scope, most recently edited first. Supports cursor pagination and a server-side case-insensitive title search.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-list/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
opts = {
  entity_id: 'entity_id_example', # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
  count: 'count_example', # String | The maximum number of items to return in one page.
  cursor: 'cursor_example', # String | The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page.
  query: 'query_example' # String | The full-text query the thread list is filtered by.
}

begin
  # List
  result = api_instance.ai_threads_list(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_list: #{e}"
end
```

#### Using the ai_threads_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AiThread>>, Integer, Hash)> ai_threads_list_with_http_info(opts)

```ruby
begin
  # List
  data, status_code, headers = api_instance.ai_threads_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AiThread>>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **String** | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope. | [optional] |
| **count** | **String** | The maximum number of items to return in one page. | [optional] |
| **cursor** | **String** | The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. | [optional] |
| **query** | **String** | The full-text query the thread list is filtered by. | [optional] |

### Return type

[**Array&lt;AiThread&gt;**](AiThread.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_threads_open_or_create

> <AiOpenOrCreateResult> ai_threads_open_or_create(ai_threads_open_or_create_request)

Open or create

Opens a chat thread and returns its history, or creates one with a title generated from the supplied first message. That first message is not persisted - the caller decides whether to follow up with `append-user-message`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-open-or-create/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
ai_threads_open_or_create_request = DocspaceApiSdk::AiThreadsOpenOrCreateRequest.new({profile: DocspaceApiSdk::AiProfile.new({id: 'id_example', name: 'name_example', provider_type: DocspaceApiSdk::AiProviderType.new, base_url: 'base_url_example', model_id: 'model_id_example'}), profile_id: 'profile_id_example', first_message: DocspaceApiSdk::AiThreadMessageLike.new({role: 'user', content: DocspaceApiSdk::AiThreadMessageLikeContent.new})}) # AiThreadsOpenOrCreateRequest | 

begin
  # Open or create
  result = api_instance.ai_threads_open_or_create(ai_threads_open_or_create_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_open_or_create: #{e}"
end
```

#### Using the ai_threads_open_or_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiOpenOrCreateResult>, Integer, Hash)> ai_threads_open_or_create_with_http_info(ai_threads_open_or_create_request)

```ruby
begin
  # Open or create
  data, status_code, headers = api_instance.ai_threads_open_or_create_with_http_info(ai_threads_open_or_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiOpenOrCreateResult>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_open_or_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_threads_open_or_create_request** | [**AiThreadsOpenOrCreateRequest**](AiThreadsOpenOrCreateRequest.md) |  |  |

### Return type

[**AiOpenOrCreateResult**](AiOpenOrCreateResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_threads_read_messages

> <Array<AiThreadMessageLike>> ai_threads_read_messages(thread_id, opts)

Read messages

Reads the messages of a thread, with the same cursor pagination as the thread list.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-read-messages/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
thread_id = 'thread_id_example' # String | The chat thread identifier.
opts = {
  count: 'count_example', # String | The maximum number of items to return in one page.
  cursor: 'cursor_example', # String | The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page.
  direction: 'direction_example' # String | The order the message page is read in. Only desc turns the read around and pages back from the newest message; omit for the forward read.
}

begin
  # Read messages
  result = api_instance.ai_threads_read_messages(thread_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_read_messages: #{e}"
end
```

#### Using the ai_threads_read_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AiThreadMessageLike>>, Integer, Hash)> ai_threads_read_messages_with_http_info(thread_id, opts)

```ruby
begin
  # Read messages
  data, status_code, headers = api_instance.ai_threads_read_messages_with_http_info(thread_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AiThreadMessageLike>>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_read_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The chat thread identifier. |  |
| **count** | **String** | The maximum number of items to return in one page. | [optional] |
| **cursor** | **String** | The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. | [optional] |
| **direction** | **String** | The order the message page is read in. Only desc turns the read around and pages back from the newest message; omit for the forward read. | [optional] |

### Return type

[**Array&lt;AiThreadMessageLike&gt;**](AiThreadMessageLike.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_threads_regenerate_title

> String ai_threads_regenerate_title(ai_threads_regenerate_title_request)

Regenerate title

Generates a fresh title from the thread's first user message and persists it. Fails when the thread has no user message yet.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-regenerate-title/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
ai_threads_regenerate_title_request = DocspaceApiSdk::AiThreadsRegenerateTitleRequest.new({thread_id: 'thread_id_example', profile: DocspaceApiSdk::AiProfile.new({id: 'id_example', name: 'name_example', provider_type: DocspaceApiSdk::AiProviderType.new, base_url: 'base_url_example', model_id: 'model_id_example'})}) # AiThreadsRegenerateTitleRequest | 

begin
  # Regenerate title
  result = api_instance.ai_threads_regenerate_title(ai_threads_regenerate_title_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_regenerate_title: #{e}"
end
```

#### Using the ai_threads_regenerate_title_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> ai_threads_regenerate_title_with_http_info(ai_threads_regenerate_title_request)

```ruby
begin
  # Regenerate title
  data, status_code, headers = api_instance.ai_threads_regenerate_title_with_http_info(ai_threads_regenerate_title_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_regenerate_title_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_threads_regenerate_title_request** | [**AiThreadsRegenerateTitleRequest**](AiThreadsRegenerateTitleRequest.md) |  |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_threads_rename

> <AiSuccessResponse> ai_threads_rename(ai_threads_rename_request)

Rename

Renames a chat thread and bumps its last-edit date so the new title shows up in the sidebar.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-rename/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
ai_threads_rename_request = DocspaceApiSdk::AiThreadsRenameRequest.new({thread_id: 'thread_id_example', title: 'title_example'}) # AiThreadsRenameRequest | 

begin
  # Rename
  result = api_instance.ai_threads_rename(ai_threads_rename_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_rename: #{e}"
end
```

#### Using the ai_threads_rename_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_threads_rename_with_http_info(ai_threads_rename_request)

```ruby
begin
  # Rename
  data, status_code, headers = api_instance.ai_threads_rename_with_http_info(ai_threads_rename_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_rename_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_threads_rename_request** | [**AiThreadsRenameRequest**](AiThreadsRenameRequest.md) |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_threads_touch

> <AiSuccessResponse> ai_threads_touch(ai_threads_touch_request)

Touch

Bumps a thread's last-edit date, and optionally rebinds it to another profile, when something other than a new message - a model switch, say - should resurface it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-touch/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
ai_threads_touch_request = DocspaceApiSdk::AiThreadsTouchRequest.new({thread_id: 'thread_id_example'}) # AiThreadsTouchRequest | 

begin
  # Touch
  result = api_instance.ai_threads_touch(ai_threads_touch_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_touch: #{e}"
end
```

#### Using the ai_threads_touch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_threads_touch_with_http_info(ai_threads_touch_request)

```ruby
begin
  # Touch
  data, status_code, headers = api_instance.ai_threads_touch_with_http_info(ai_threads_touch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_touch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_threads_touch_request** | [**AiThreadsTouchRequest**](AiThreadsTouchRequest.md) |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_threads_update_message

> <AiSuccessResponse> ai_threads_update_message(ai_threads_update_message_request)

Update message

Replaces the content of a chat message - used by the edit and regenerate flows that change a message outside the streaming lifecycle.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-update-message/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
ai_threads_update_message_request = DocspaceApiSdk::AiThreadsUpdateMessageRequest.new({message_id: 'message_id_example', message: DocspaceApiSdk::AiThreadMessageLike.new({role: 'user', content: DocspaceApiSdk::AiThreadMessageLikeContent.new})}) # AiThreadsUpdateMessageRequest | 

begin
  # Update message
  result = api_instance.ai_threads_update_message(ai_threads_update_message_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_update_message: #{e}"
end
```

#### Using the ai_threads_update_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSuccessResponse>, Integer, Hash)> ai_threads_update_message_with_http_info(ai_threads_update_message_request)

```ruby
begin
  # Update message
  data, status_code, headers = api_instance.ai_threads_update_message_with_http_info(ai_threads_update_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSuccessResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_update_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_threads_update_message_request** | [**AiThreadsUpdateMessageRequest**](AiThreadsUpdateMessageRequest.md) |  |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

