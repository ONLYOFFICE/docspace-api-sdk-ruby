# DocspaceApiSdk::AIAIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_ai_approve_tool_call**](AIAIApi.md#ai_ai_approve_tool_call) | **POST** /api/2.0/ai/ai/approve-tool-call | Approve tool call |
| [**ai_ai_deny_tool_call**](AIAIApi.md#ai_ai_deny_tool_call) | **POST** /api/2.0/ai/ai/deny-tool-call | Deny tool call |
| [**ai_ai_regenerate_stream**](AIAIApi.md#ai_ai_regenerate_stream) | **POST** /api/2.0/ai/ai/regenerate-stream | Regenerate stream |
| [**ai_ai_send**](AIAIApi.md#ai_ai_send) | **POST** /api/2.0/ai/ai/send | Run an AI action |
| [**ai_ai_send_custom**](AIAIApi.md#ai_ai_send_custom) | **POST** /api/2.0/ai/ai/send-custom | Send custom |
| [**ai_ai_send_with_stream**](AIAIApi.md#ai_ai_send_with_stream) | **POST** /api/2.0/ai/ai/send-with-stream | Send with stream |
| [**ai_ai_send_with_stream_open_ai**](AIAIApi.md#ai_ai_send_with_stream_open_ai) | **POST** /api/2.0/ai/ai/send-with-stream-openai | Stream a chat in OpenAI format |


## ai_ai_approve_tool_call

> <AiChatEvent> ai_ai_approve_tool_call(ai_ai_approve_tool_call_request)

Approve tool call

Resumes a chat round that a tool call has paused, and streams the continuation as newline-delimited `ChatEvent` objects. The result supplied in the request is persisted onto the assistant message that issued the call, so the tool is not executed here - the caller runs it and reports the outcome. The round continues against the augmented history and may pause again on a further tool call. Call `POST api/2.0/ai/ai/deny-tool-call` instead to refuse the call and let the model answer without it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-approve-tool-call/).

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/x-ndjson, application/json


## ai_ai_deny_tool_call

> <AiChatEvent> ai_ai_deny_tool_call(ai_ai_tool_call_data)

Deny tool call

Refuses the tool call a chat round is paused on and resumes it immediately, streaming the continuation as newline-delimited `ChatEvent` objects. The literal `User deny tool call` is persisted in place of the tool result, so the model sees an explicit refusal rather than a missing answer and may reply without the tool or ask for something else. Nothing is executed and no result is accepted from the caller. Use `POST api/2.0/ai/ai/approve-tool-call` to supply a result instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-deny-tool-call/).

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

api_instance = DocspaceApiSdk::AI::AIApi.new
ai_ai_tool_call_data = DocspaceApiSdk::AiAiToolCallData.new({thread_id: '11111111-1111-1111-1111-111111111111', message_id: '22222222-2222-2222-2222-222222222222', idx: 0, message: DocspaceApiSdk::AiThreadMessageLike.new({role: 'user', content: DocspaceApiSdk::AiThreadMessageLikeContent.new})}) # AiAiToolCallData | 

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/x-ndjson, application/json


## ai_ai_regenerate_stream

> <AiChatEvent> ai_ai_regenerate_stream(ai_ai_regenerate_stream_request)

Regenerate stream

Re-rolls the last assistant reply of an existing thread: every message after the last user message - the previous reply and any tool-call hops - is dropped, and a fresh reply is streamed as newline-delimited `ChatEvent` objects against the unchanged prompt. The thread has to exist already, `threadId` is required, and no title is generated. The dropped messages are gone for good, so this is a destructive operation on the thread's tail rather than a retry that keeps both answers. Unlike `send-with-stream` the profile is not verified before the stream opens, so an unusable model surfaces as an error frame inside the 200 rather than as a 4xx.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-regenerate-stream/).

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/x-ndjson, application/json


## ai_ai_send

> <AiThreadMessageLike> ai_ai_send(ai_ai_send_request)

Run an AI action

Runs one AI action and returns the whole answer as a single JSON document. The model is the profile bound to `actionType`, falling back to the `Default` assignment slot, so this operation accepts no `profileId` of its own. Nothing is persisted - no thread is opened, no message is stored and no title is generated - which makes it the one to use for a stand-alone completion rather than for a conversation. `entityId` and `contextEntityId` set the scope of the round, which decides the workspace context and the custom MCP servers it may reach. For a conversation that keeps its history, use `POST api/2.0/ai/ai/send-with-stream` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send/).

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

api_instance = DocspaceApiSdk::AI::AIApi.new
ai_ai_send_request = DocspaceApiSdk::AiAiSendRequest.new({action_type: DocspaceApiSdk::AiActionType::DEFAULT, user_message: DocspaceApiSdk::AiThreadMessageLike.new({role: 'user', content: DocspaceApiSdk::AiThreadMessageLikeContent.new})}) # AiAiSendRequest | 

begin
  # Run an AI action
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
  # Run an AI action
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_ai_send_custom

> <AiThreadMessageLike> ai_ai_send_custom(ai_ai_send_custom_request)

Send custom

Runs a free-form one-turn call against a system prompt supplied in the request, with no thread, no history and nothing persisted. The model is the explicit `profileId` when it resolves, otherwise the `Default` assignment slot. The shape of the answer depends on the body rather than on the route: with `isStream` set it arrives as a newline-delimited stream of chat events, and without it as a single JSON document, so a client has to handle both. Use `POST api/2.0/ai/ai/send` when the prompt should come from the portal's own action configuration instead of from the caller.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-custom/).

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_ai_send_with_stream

> <AiChatEvent> ai_ai_send_with_stream(ai_ai_send_stream_body)

Send with stream

Runs one chat round and streams it back as newline-delimited `ChatEvent` objects. Omitting `threadId` opens a new thread, which requires that `entityId` names a room the caller can open and that a profile resolves for it; the user message and the reply are persisted either way, and a new thread also gets a generated title. The model is settled in a fixed order - an agent's assignment in scope overrides everything, then the explicit `profileId`, then the one stored on the thread, then the `Chat` assignment - and the effective profile is checked before the stream opens, so an unknown one fails with 400 rather than as an error buried in a 200. A tool call pauses the round and ends the stream; resume it with `POST api/2.0/ai/ai/approve-tool-call` or `POST api/2.0/ai/ai/deny-tool-call`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream/).

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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/x-ndjson, application/json


## ai_ai_send_with_stream_open_ai

> <AiOpenAIStreamChunk> ai_ai_send_with_stream_open_ai(ai_ai_send_stream_body)

Stream a chat in OpenAI format

The same chat round as `send-with-stream`, re-encoded as a server-sent-events stream of OpenAI `chat.completion.chunk` objects terminated by a `[DONE]` sentinel. Thread handling, persistence, title generation and the profile pre-flight are identical, and a tool call ends the stream with `finish_reason: tool_calls` instead of a pause event - resume it through the same approve and deny operations. Unlike `send-with-stream` it does not reject an empty user message and does not enforce the per-kind attachment cap, so validate both before calling. Choose this route only for a client that already speaks the OpenAI wire format; `POST api/2.0/ai/ai/send-with-stream` is the native one.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-ai-send-with-stream-open-ai/).

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

api_instance = DocspaceApiSdk::AI::AIApi.new
ai_ai_send_stream_body = DocspaceApiSdk::AiAiSendStreamBody.new({user_message: DocspaceApiSdk::AiThreadMessageLike.new({role: 'user', content: DocspaceApiSdk::AiThreadMessageLikeContent.new})}) # AiAiSendStreamBody | 

begin
  # Stream a chat in OpenAI format
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
  # Stream a chat in OpenAI format
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

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/event-stream, application/json

