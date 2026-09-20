# DocspaceApiSdk::AIThreadsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_threads_append_user_message**](AIThreadsApi.md#ai_threads_append_user_message) | **POST** /api/2.0/ai/threads/append-user-message | Append user message |
| [**ai_threads_clear_messages**](AIThreadsApi.md#ai_threads_clear_messages) | **DELETE** /api/2.0/ai/threads/clear-messages | Clear messages |
| [**ai_threads_create**](AIThreadsApi.md#ai_threads_create) | **POST** /api/2.0/ai/threads/create | Create a chat thread |
| [**ai_threads_delete**](AIThreadsApi.md#ai_threads_delete) | **DELETE** /api/2.0/ai/threads/delete | Delete a chat thread |
| [**ai_threads_delete_message**](AIThreadsApi.md#ai_threads_delete_message) | **DELETE** /api/2.0/ai/threads/delete-message | Delete message |
| [**ai_threads_get_by_id**](AIThreadsApi.md#ai_threads_get_by_id) | **GET** /api/2.0/ai/threads/get-by-id | Get a chat thread |
| [**ai_threads_get_message_by_id**](AIThreadsApi.md#ai_threads_get_message_by_id) | **GET** /api/2.0/ai/threads/get-message-by-id | Get one chat message |
| [**ai_threads_list**](AIThreadsApi.md#ai_threads_list) | **GET** /api/2.0/ai/threads/list | List chat threads |
| [**ai_threads_open_or_create**](AIThreadsApi.md#ai_threads_open_or_create) | **POST** /api/2.0/ai/threads/open-or-create | Open or create |
| [**ai_threads_read_messages**](AIThreadsApi.md#ai_threads_read_messages) | **GET** /api/2.0/ai/threads/read-messages | Read messages |
| [**ai_threads_regenerate_title**](AIThreadsApi.md#ai_threads_regenerate_title) | **POST** /api/2.0/ai/threads/regenerate-title | Regenerate title |
| [**ai_threads_rename**](AIThreadsApi.md#ai_threads_rename) | **PUT** /api/2.0/ai/threads/rename | Rename a chat thread |
| [**ai_threads_touch**](AIThreadsApi.md#ai_threads_touch) | **POST** /api/2.0/ai/threads/touch | Bump a thread's activity |
| [**ai_threads_update_message**](AIThreadsApi.md#ai_threads_update_message) | **PUT** /api/2.0/ai/threads/update-message | Update message |


## ai_threads_append_user_message

> <AiThreadsAppendUserMessage200Response> ai_threads_append_user_message(ai_threads_append_user_message_request)

Append user message

Stores a user message in a thread and bumps its last-edit date so the thread resurfaces at the top of the list. The per-kind attachment cap of the composer is enforced here as well, so a direct API call cannot exceed what the UI allows. Passing `profileId` rebinds the thread to another model, which is how a mid-conversation model switch is recorded. The answer carries the new message's ID; the message is stored as sent and no reply is generated - run a round with `POST api/2.0/ai/ai/send-with-stream` for that.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-append-user-message/).

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

> <Array(<AiThreadsAppendUserMessage200Response>, Integer, Hash)> ai_threads_append_user_message_with_http_info(ai_threads_append_user_message_request)

```ruby
begin
  # Append user message
  data, status_code, headers = api_instance.ai_threads_append_user_message_with_http_info(ai_threads_append_user_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiThreadsAppendUserMessage200Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_append_user_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_threads_append_user_message_request** | [**AiThreadsAppendUserMessageRequest**](AiThreadsAppendUserMessageRequest.md) |  |  |

### Return type

[**AiThreadsAppendUserMessage200Response**](AiThreadsAppendUserMessage200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_threads_clear_messages

> <AiSuccessResponse> ai_threads_clear_messages(body)

Clear messages

Removes every message of a thread while keeping the thread, its title and its model binding, and bumps its last-edit date. The messages are gone for good. Unlike `delete` this does not verify that the thread exists, so clearing an unknown `threadId` reports success rather than 404. The answer only confirms the write.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-clear-messages/).

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

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
body = 'body_example' # String | The ID of the thread to empty, as a bare JSON string.

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
| **body** | **String** | The ID of the thread to empty, as a bare JSON string. |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_threads_create

> <AiThread> ai_threads_create(ai_threads_create_request)

Create a chat thread

Creates a chat thread with a title supplied by the caller and returns it. A scoped thread requires that `entityId` names a room the caller can open, and a model has to resolve for the scope - an explicit `profileId`, or the room's `Chat` assignment - otherwise there is nothing to run the thread against and the call answers 404. In an agent room the agent's own assignment overrides any `profileId` sent with the request, so a thread there always starts on the agent's model. Use `POST api/2.0/ai/threads/open-or-create` instead when the title should be generated from the first user message.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-create/).

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

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
ai_threads_create_request = DocspaceApiSdk::AiThreadsCreateRequest.new({title: 'title_example'}) # AiThreadsCreateRequest | 

begin
  # Create a chat thread
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
  # Create a chat thread
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_threads_delete

> <AiSuccessResponse> ai_threads_delete(body)

Delete a chat thread

Deletes a thread together with every message in it. The thread has to exist: unlike the other operations that take a `threadId`, this one checks first and answers 404 for an unknown or already-deleted thread rather than reporting success. The deletion is permanent and the messages cannot be recovered. To empty a thread but keep it, use `DELETE api/2.0/ai/threads/clear-messages`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete/).

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

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
body = 'body_example' # String | The ID of the thread to delete, as a bare JSON string.

begin
  # Delete a chat thread
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
  # Delete a chat thread
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
| **body** | **String** | The ID of the thread to delete, as a bare JSON string. |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_threads_delete_message

> <AiSuccessResponse> ai_threads_delete_message(body)

Delete message

Deletes one message and leaves the rest of the thread untouched. `messageId` is required and may be sent either in the body or as a query parameter. An unknown ID is not reported: the call answers success without having deleted anything, so verify with `GET api/2.0/ai/threads/read-messages` when it matters. The deletion is permanent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-delete-message/).

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

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
body = 'body_example' # String | The ID of the message to delete, as a bare JSON string.

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
| **body** | **String** | The ID of the message to delete, as a bare JSON string. |  |

### Return type

[**AiSuccessResponse**](AiSuccessResponse.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_threads_get_by_id

> <AiThread> ai_threads_get_by_id(thread_id)

Get a chat thread

Returns one thread by its ID, without its messages - read those with `GET api/2.0/ai/threads/read-messages`. `threadId` is required and an unknown one answers 404, so the result is never an empty body. The answer carries the thread's title, its model binding and its last-edit date. This is a read-only operation and does not bump that date.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-by-id/).

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

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
thread_id = '11111111-1111-1111-1111-111111111111' # String | The chat thread identifier.

begin
  # Get a chat thread
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
  # Get a chat thread
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_threads_get_message_by_id

> <AiThreadMessageLike> ai_threads_get_message_by_id(message_id)

Get one chat message

Returns one message by its ID, wherever it sits, without needing the thread it belongs to. `messageId` is required. Unlike `GET api/2.0/ai/threads/get-by-id` an unknown ID is not reported as 404: the answer is an empty body with status 200, so a client has to treat a missing payload as no such message. Message IDs come from the thread history or from the answer of `POST api/2.0/ai/threads/append-user-message`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-get-message-by-id/).

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

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
message_id = '22222222-2222-2222-2222-222222222222' # String | The globally unique chat message identifier.

begin
  # Get one chat message
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
  # Get one chat message
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_threads_list

> <Array<AiThread>> ai_threads_list(opts)

List chat threads

Lists the threads of a scope, most recently edited first, and searches their titles case-insensitively when `query` is given. Every parameter is optional: omitting `entityId` lists the global scope, and omitting `count` lets the engine apply its own page size. Pagination is by cursor, and the cursor is a JSON object passed as a string in the query - `{id: <last thread id>, lastEditDate: <its date>}` - taken from the last entry of the previous page. A cursor that is not valid JSON, or that lacks an `id`, is ignored rather than rejected, and the read silently starts from the first page again.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-list/).

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

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
opts = {
  entity_id: '1234', # String | The DocSpace entity the request is scoped to - the room, folder or agent workspace the chat is invoked from. Omit for the portal-wide scope.
  count: 20, # Integer | The maximum number of items to return in one page.
  cursor: '{"id":"11111111-1111-1111-1111-111111111111","lastEditDate":1767225600000}', # String | The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page.
  query: 'contract' # String | The full-text query the thread list is filtered by.
}

begin
  # List chat threads
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
  # List chat threads
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
| **count** | **Integer** | The maximum number of items to return in one page. | [optional] |
| **cursor** | **String** | The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. | [optional] |
| **query** | **String** | The full-text query the thread list is filtered by. | [optional] |

### Return type

[**Array&lt;AiThread&gt;**](AiThread.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_threads_open_or_create

> <AiOpenOrCreateResult> ai_threads_open_or_create(ai_threads_open_or_create_request)

Open or create

Opens a chat thread and returns it with its history, or creates one whose title is generated from the first message supplied in the request. That first message is not persisted: follow up with `POST api/2.0/ai/threads/append-user-message` to store it, or start the round directly with `POST api/2.0/ai/ai/send-with-stream`. Unlike `create` this takes a whole resolved `profile` object rather than an ID, and a request without one answers 404 because no model could be bound. A supplied `entityId` has to be a room the caller can open; anything that is not an agent room folds to the global scope instead of being rejected.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-open-or-create/).

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

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
ai_threads_open_or_create_request = DocspaceApiSdk::AiThreadsOpenOrCreateRequest.new({profile: DocspaceApiSdk::AiProfile.new({id: '00000000-0000-0000-0000-000000000000', name: 'OpenAI GPT-4o', provider_type: DocspaceApiSdk::AiProviderType.new, base_url: 'https://api.openai.com/v1', model_id: 'gpt-4o'}), profile_id: 'profile_id_example', first_message: DocspaceApiSdk::AiThreadMessageLike.new({role: 'user', content: DocspaceApiSdk::AiThreadMessageLikeContent.new})}) # AiThreadsOpenOrCreateRequest | 

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_threads_read_messages

> <Array<AiThreadMessageLike>> ai_threads_read_messages(thread_id, opts)

Read messages

Reads the messages of one thread, oldest first, with the same string-encoded JSON cursor as the thread list. `direction` turns the read around, and only the exact value `desc` does so - anything else, including a misspelling, reads forward. Omitting `threadId` is not an error: the call answers 200 with an empty list, so an empty result does not distinguish a thread with no messages from a request that forgot the ID. A malformed cursor is ignored and the read starts from the beginning.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-read-messages/).

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

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
thread_id = '11111111-1111-1111-1111-111111111111' # String | The chat thread identifier.
opts = {
  count: 20, # Integer | The maximum number of items to return in one page.
  cursor: '{"id":"11111111-1111-1111-1111-111111111111","lastEditDate":1767225600000}', # String | The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page.
  direction: 'desc' # String | The order the message page is read in. Only desc turns the read around and pages back from the newest message; omit for the forward read.
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
| **count** | **Integer** | The maximum number of items to return in one page. | [optional] |
| **cursor** | **String** | The keyset pagination cursor: the JSON-encoded sort key of the last item already received. Omit for the first page. | [optional] |
| **direction** | **String** | The order the message page is read in. Only desc turns the read around and pages back from the newest message; omit for the forward read. | [optional] |

### Return type

[**Array&lt;AiThreadMessageLike&gt;**](AiThreadMessageLike.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_threads_regenerate_title

> <AiThreadsRegenerateTitle200Response> ai_threads_regenerate_title(ai_threads_regenerate_title_request)

Regenerate title

Asks the model to produce a title from the thread's first user message, stores it, and returns the new title. Both `threadId` and a resolved `profile` object are required; a thread with no user message yet has nothing to title and fails. This costs a model call, unlike `POST api/2.0/ai/threads/rename`, which just stores the string it is given. An `entityMeta` sent with the request is only read for its `entityId` hint - the source itself is resolved server-side under the caller's credentials, so a client cannot attribute the call to somebody else's room.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-regenerate-title/).

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

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
ai_threads_regenerate_title_request = DocspaceApiSdk::AiThreadsRegenerateTitleRequest.new({thread_id: 'thread_id_example', profile: DocspaceApiSdk::AiProfile.new({id: '00000000-0000-0000-0000-000000000000', name: 'OpenAI GPT-4o', provider_type: DocspaceApiSdk::AiProviderType.new, base_url: 'https://api.openai.com/v1', model_id: 'gpt-4o'})}) # AiThreadsRegenerateTitleRequest | 

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

> <Array(<AiThreadsRegenerateTitle200Response>, Integer, Hash)> ai_threads_regenerate_title_with_http_info(ai_threads_regenerate_title_request)

```ruby
begin
  # Regenerate title
  data, status_code, headers = api_instance.ai_threads_regenerate_title_with_http_info(ai_threads_regenerate_title_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiThreadsRegenerateTitle200Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ThreadsApi->ai_threads_regenerate_title_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_threads_regenerate_title_request** | [**AiThreadsRegenerateTitleRequest**](AiThreadsRegenerateTitleRequest.md) |  |  |

### Return type

[**AiThreadsRegenerateTitle200Response**](AiThreadsRegenerateTitle200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_threads_rename

> <AiSuccessResponse> ai_threads_rename(ai_threads_rename_request)

Rename a chat thread

Replaces a thread's title with the one supplied and bumps its last-edit date. Both `threadId` and a title with at least one non-whitespace character are required - a blank title is rejected rather than silently stored, so a thread cannot end up nameless. The answer only confirms the write. To have the model produce a title instead of supplying one, use `POST api/2.0/ai/threads/regenerate-title`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-rename/).

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

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
ai_threads_rename_request = DocspaceApiSdk::AiThreadsRenameRequest.new({thread_id: 'thread_id_example', title: 'title_example'}) # AiThreadsRenameRequest | 

begin
  # Rename a chat thread
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
  # Rename a chat thread
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_threads_touch

> <AiSuccessResponse> ai_threads_touch(ai_threads_touch_request)

Bump a thread's activity

Bumps a thread's last-edit date without adding a message, which resurfaces it in the list. Passing `profileId` also rebinds the thread to another model, so this is the operation to call when a model switch alone should count as activity. Nothing else about the thread changes and the answer only confirms the write. It is idempotent: repeating it simply moves the date forward again.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-touch/).

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

api_instance = DocspaceApiSdk::AI::ThreadsApi.new
ai_threads_touch_request = DocspaceApiSdk::AiThreadsTouchRequest.new({thread_id: 'thread_id_example'}) # AiThreadsTouchRequest | 

begin
  # Bump a thread's activity
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
  # Bump a thread's activity
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_threads_update_message

> <AiSuccessResponse> ai_threads_update_message(ai_threads_update_message_request)

Update message

Replaces the content of one stored message, which is how the edit and regenerate flows change a message outside the streaming lifecycle. The whole message is overwritten by the one supplied rather than merged, so send a complete object. Neither the ID nor the payload is validated here, so a malformed request surfaces as an error relayed from storage rather than as a 400. The answer only confirms the write.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-threads-update-message/).

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

