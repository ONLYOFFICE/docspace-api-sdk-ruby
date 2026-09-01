# DocspaceApiSdk::AIAIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_ai_approve_tool_call**](AIAIApi.md#ai_ai_approve_tool_call) | **POST** /api/2.0/ai/ai/approve-tool-call | Approve tool call |
| [**ai_ai_deny_tool_call**](AIAIApi.md#ai_ai_deny_tool_call) | **POST** /api/2.0/ai/ai/deny-tool-call | Deny tool call |
| [**ai_ai_regenerate_stream**](AIAIApi.md#ai_ai_regenerate_stream) | **POST** /api/2.0/ai/ai/regenerate-stream | Regenerate stream |
| [**ai_ai_send**](AIAIApi.md#ai_ai_send) | **POST** /api/2.0/ai/ai/send | Send |
| [**ai_ai_send_custom**](AIAIApi.md#ai_ai_send_custom) | **POST** /api/2.0/ai/ai/send-custom | Send custom |
| [**ai_ai_send_with_stream**](AIAIApi.md#ai_ai_send_with_stream) | **POST** /api/2.0/ai/ai/send-with-stream | Send with stream |
| [**ai_ai_send_with_stream_open_ai**](AIAIApi.md#ai_ai_send_with_stream_open_ai) | **POST** /api/2.0/ai/ai/send-with-stream-openai | Send with stream open ai |


## ai_ai_approve_tool_call

> <AiChatEvent> ai_ai_approve_tool_call(ai_ai_approve_tool_call_request)

Approve tool call

Resumes a chat round paused on a tool call. The supplied result is persisted onto the assistant message that issued the call and the stream continues with the augmented history.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-approve-tool-call/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AIApi.new
ai_ai_approve_tool_call_request = DocspaceApiSdk::AiAiApproveToolCallRequest.new({result: 3.56, thread_id: 'thread_id_example', message_id: 'message_id_example', idx: 3.56, message: DocspaceApiSdk::AiThreadMessageLike.new({role: 'user', content: DocspaceApiSdk::AiThreadMessageLikeContent.new})}) # AiAiApproveToolCallRequest | 

begin
  # Approve tool call
  result = api_instance.ai_ai_approve_tool_call(ai_ai_approve_tool_call_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AIApi->ai_ai_approve_tool_call: #{e}"
end
```

#### Using the ai_ai_approve_tool_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiChatEvent>, Integer, Hash)> ai_ai_approve_tool_call_with_http_info(ai_ai_approve_tool_call_request)

```ruby
begin
  # Approve tool call
  data, status_code, headers = api_instance.ai_ai_approve_tool_call_with_http_info(ai_ai_approve_tool_call_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiChatEvent>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AIApi->ai_ai_approve_tool_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_ai_approve_tool_call_request** | [**AiAiApproveToolCallRequest**](AiAiApproveToolCallRequest.md) |  |  |

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/x-ndjson, application/json


## ai_ai_deny_tool_call

> <AiChatEvent> ai_ai_deny_tool_call(ai_ai_tool_call_data)

Deny tool call

Denies the pending tool call and resumes the chat immediately, with `User deny tool call` standing in for the tool result.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-deny-tool-call/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AIApi.new
ai_ai_tool_call_data = DocspaceApiSdk::AiAiToolCallData.new({thread_id: 'thread_id_example', message_id: 'message_id_example', idx: 3.56, message: DocspaceApiSdk::AiThreadMessageLike.new({role: 'user', content: DocspaceApiSdk::AiThreadMessageLikeContent.new})}) # AiAiToolCallData | 

begin
  # Deny tool call
  result = api_instance.ai_ai_deny_tool_call(ai_ai_tool_call_data)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AIApi->ai_ai_deny_tool_call: #{e}"
end
```

#### Using the ai_ai_deny_tool_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiChatEvent>, Integer, Hash)> ai_ai_deny_tool_call_with_http_info(ai_ai_tool_call_data)

```ruby
begin
  # Deny tool call
  data, status_code, headers = api_instance.ai_ai_deny_tool_call_with_http_info(ai_ai_tool_call_data)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiChatEvent>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AIApi->ai_ai_deny_tool_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_ai_tool_call_data** | [**AiAiToolCallData**](AiAiToolCallData.md) |  |  |

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/x-ndjson, application/json


## ai_ai_regenerate_stream

> <AiChatEvent> ai_ai_regenerate_stream(ai_ai_regenerate_stream_request)

Regenerate stream

Re-rolls the last assistant reply in an existing thread: every message after the last user message (the previous reply plus any tool-call hops) is dropped and a fresh reply is streamed against the unchanged prompt. The thread must already exist and no title is generated.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-regenerate-stream/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AIApi.new
ai_ai_regenerate_stream_request = DocspaceApiSdk::AiAiRegenerateStreamRequest.new({thread_id: 'thread_id_example'}) # AiAiRegenerateStreamRequest | 

begin
  # Regenerate stream
  result = api_instance.ai_ai_regenerate_stream(ai_ai_regenerate_stream_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AIApi->ai_ai_regenerate_stream: #{e}"
end
```

#### Using the ai_ai_regenerate_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiChatEvent>, Integer, Hash)> ai_ai_regenerate_stream_with_http_info(ai_ai_regenerate_stream_request)

```ruby
begin
  # Regenerate stream
  data, status_code, headers = api_instance.ai_ai_regenerate_stream_with_http_info(ai_ai_regenerate_stream_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiChatEvent>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AIApi->ai_ai_regenerate_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_ai_regenerate_stream_request** | [**AiAiRegenerateStreamRequest**](AiAiRegenerateStreamRequest.md) |  |  |

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/x-ndjson, application/json


## ai_ai_send

> <AiThreadMessageLike> ai_ai_send(ai_ai_send_request)

Send

Runs one AI action: the profile bound to `actionType` (falling back to the `Default` slot) is dispatched against a single-message history. Nothing is persisted - no thread, no title generation, no storage writes.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AIApi.new
ai_ai_send_request = DocspaceApiSdk::AiAiSendRequest.new({action_type: DocspaceApiSdk::AiActionType::DEFAULT, user_message: DocspaceApiSdk::AiThreadMessageLike.new({role: 'user', content: DocspaceApiSdk::AiThreadMessageLikeContent.new})}) # AiAiSendRequest | 

begin
  # Send
  result = api_instance.ai_ai_send(ai_ai_send_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AIApi->ai_ai_send: #{e}"
end
```

#### Using the ai_ai_send_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiThreadMessageLike>, Integer, Hash)> ai_ai_send_with_http_info(ai_ai_send_request)

```ruby
begin
  # Send
  data, status_code, headers = api_instance.ai_ai_send_with_http_info(ai_ai_send_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiThreadMessageLike>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AIApi->ai_ai_send_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_ai_send_request** | [**AiAiSendRequest**](AiAiSendRequest.md) |  |  |

### Return type

[**AiThreadMessageLike**](AiThreadMessageLike.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_ai_send_custom

> <AiThreadMessageLike> ai_ai_send_custom(ai_ai_send_custom_request)

Send custom

Runs a free-form one-turn call against a caller-supplied system prompt. No thread, no history and no persistence. The profile is the explicit `profileId` when it resolves, otherwise the `Default` assignment slot.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-custom/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AIApi.new
ai_ai_send_custom_request = DocspaceApiSdk::AiAiSendCustomRequest.new({is_stream: false, system_prompt: 'system_prompt_example', user_message: DocspaceApiSdk::AiThreadMessageLike.new({role: 'user', content: DocspaceApiSdk::AiThreadMessageLikeContent.new})}) # AiAiSendCustomRequest | 

begin
  # Send custom
  result = api_instance.ai_ai_send_custom(ai_ai_send_custom_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AIApi->ai_ai_send_custom: #{e}"
end
```

#### Using the ai_ai_send_custom_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiThreadMessageLike>, Integer, Hash)> ai_ai_send_custom_with_http_info(ai_ai_send_custom_request)

```ruby
begin
  # Send custom
  data, status_code, headers = api_instance.ai_ai_send_custom_with_http_info(ai_ai_send_custom_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiThreadMessageLike>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AIApi->ai_ai_send_custom_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_ai_send_custom_request** | [**AiAiSendCustomRequest**](AiAiSendCustomRequest.md) |  |  |

### Return type

[**AiThreadMessageLike**](AiThreadMessageLike.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_ai_send_with_stream

> <AiChatEvent> ai_ai_send_with_stream(ai_ai_send_stream_body)

Send with stream

Starts a chat round and streams it back as newline-delimited `ChatEvent` objects. The thread is opened or created, the user message and the reply are persisted, a new thread gets a generated title, and a tool call pauses the round until it is approved or denied.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AIApi.new
ai_ai_send_stream_body = DocspaceApiSdk::AiAiSendStreamBody.new({user_message: DocspaceApiSdk::AiThreadMessageLike.new({role: 'user', content: DocspaceApiSdk::AiThreadMessageLikeContent.new})}) # AiAiSendStreamBody | 

begin
  # Send with stream
  result = api_instance.ai_ai_send_with_stream(ai_ai_send_stream_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AIApi->ai_ai_send_with_stream: #{e}"
end
```

#### Using the ai_ai_send_with_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiChatEvent>, Integer, Hash)> ai_ai_send_with_stream_with_http_info(ai_ai_send_stream_body)

```ruby
begin
  # Send with stream
  data, status_code, headers = api_instance.ai_ai_send_with_stream_with_http_info(ai_ai_send_stream_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiChatEvent>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AIApi->ai_ai_send_with_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_ai_send_stream_body** | [**AiAiSendStreamBody**](AiAiSendStreamBody.md) |  |  |

### Return type

[**AiChatEvent**](AiChatEvent.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/x-ndjson, application/json


## ai_ai_send_with_stream_open_ai

> <AiOpenAIStreamChunk> ai_ai_send_with_stream_open_ai(ai_ai_send_stream_body)

Send with stream open ai

The same chat round as `send-with-stream`, re-encoded as an OpenAI Chat Completions stream of `chat.completion.chunk` objects. Storage, title generation and tool-call pauses are identical - only the wire shape differs; a tool call ends the stream with `finish_reason: tool_calls`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream-open-ai/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AIApi.new
ai_ai_send_stream_body = DocspaceApiSdk::AiAiSendStreamBody.new({user_message: DocspaceApiSdk::AiThreadMessageLike.new({role: 'user', content: DocspaceApiSdk::AiThreadMessageLikeContent.new})}) # AiAiSendStreamBody | 

begin
  # Send with stream open ai
  result = api_instance.ai_ai_send_with_stream_open_ai(ai_ai_send_stream_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AIApi->ai_ai_send_with_stream_open_ai: #{e}"
end
```

#### Using the ai_ai_send_with_stream_open_ai_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiOpenAIStreamChunk>, Integer, Hash)> ai_ai_send_with_stream_open_ai_with_http_info(ai_ai_send_stream_body)

```ruby
begin
  # Send with stream open ai
  data, status_code, headers = api_instance.ai_ai_send_with_stream_open_ai_with_http_info(ai_ai_send_stream_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiOpenAIStreamChunk>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AIApi->ai_ai_send_with_stream_open_ai_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_ai_send_stream_body** | [**AiAiSendStreamBody**](AiAiSendStreamBody.md) |  |  |

### Return type

[**AiOpenAIStreamChunk**](AiOpenAIStreamChunk.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/event-stream, application/json

