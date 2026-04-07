# DocspaceApiSdk::AIChatApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**continue_chat**](AIChatApi.md#continue_chat) | **POST** /api/2.0/ai/chats/{chatId}/messages | Send a message to an existing AI chat |
| [**delete_chat**](AIChatApi.md#delete_chat) | **DELETE** /api/2.0/ai/chats/{chatId} | Delete an AI chat |
| [**export_chat**](AIChatApi.md#export_chat) | **POST** /api/2.0/ai/chats/{chatId}/messages/export | Export AI chat messages to a file |
| [**get_chat**](AIChatApi.md#get_chat) | **GET** /api/2.0/ai/chats/{chatId} | Get an AI chat by ID |
| [**get_chat_models**](AIChatApi.md#get_chat_models) | **GET** /api/2.0/ai/chats/models | Get available AI models |
| [**get_chats**](AIChatApi.md#get_chats) | **GET** /api/2.0/ai/rooms/{roomId}/chats | Get AI chats in a room |
| [**get_messages**](AIChatApi.md#get_messages) | **GET** /api/2.0/ai/chats/{chatId}/messages | Get messages of an AI chat |
| [**get_user_chats_settings**](AIChatApi.md#get_user_chats_settings) | **GET** /api/2.0/ai/rooms/{roomId}/chats/config | Get user chat settings for a room |
| [**provide_permission**](AIChatApi.md#provide_permission) | **POST** /api/2.0/ai/chats/tool-permissions/{callId}/decision | Submit a tool execution permission decision |
| [**rename_chat**](AIChatApi.md#rename_chat) | **PUT** /api/2.0/ai/chats/{chatId} | Rename an AI chat |
| [**set_user_chats_settings**](AIChatApi.md#set_user_chats_settings) | **PUT** /api/2.0/ai/rooms/{roomId}/chats/config | Update user chat settings for a room |
| [**start_new_chat**](AIChatApi.md#start_new_chat) | **POST** /api/2.0/ai/rooms/{roomId}/chats | Start a new AI chat |


## continue_chat

> continue_chat(chat_id, continue_chat_body)

Send a message to an existing AI chat

Appends a new user message to an existing chat session and streams the AI assistant's response.  The full conversation history of the chat is sent to the AI provider to maintain context.  The response is delivered as a Server-Sent Events (SSE) stream with periodic keep-alive pings.  File references can optionally be attached to provide additional context.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/continue-chat/).

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

api_instance = DocspaceApiSdk::AI::ChatApi.new
chat_id = '00000000-0000-0000-0000-000000000000' # String | The unique identifier of the existing AI chat session to continue.
continue_chat_body = DocspaceApiSdk::ContinueChatBody.new({message: 'Summarize this document for me'}) # ContinueChatBody | The message and optional file attachments.

begin
  # Send a message to an existing AI chat
  api_instance.continue_chat(chat_id, continue_chat_body)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->continue_chat: #{e}"
end
```

#### Using the continue_chat_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> continue_chat_with_http_info(chat_id, continue_chat_body)

```ruby
begin
  # Send a message to an existing AI chat
  data, status_code, headers = api_instance.continue_chat_with_http_info(chat_id, continue_chat_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->continue_chat_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chat_id** | **String** | The unique identifier of the existing AI chat session to continue. |  |
| **continue_chat_body** | [**ContinueChatBody**](ContinueChatBody.md) | The message and optional file attachments. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## delete_chat

> delete_chat(chat_id)

Delete an AI chat

Permanently deletes an AI chat session along with all of its messages.  Only the chat owner can delete their own chat sessions. This action cannot be undone.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-chat/).

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

api_instance = DocspaceApiSdk::AI::ChatApi.new
chat_id = '00000000-0000-0000-0000-000000000000' # String | The unique identifier of the AI chat session to delete.

begin
  # Delete an AI chat
  api_instance.delete_chat(chat_id)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->delete_chat: #{e}"
end
```

#### Using the delete_chat_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_chat_with_http_info(chat_id)

```ruby
begin
  # Delete an AI chat
  data, status_code, headers = api_instance.delete_chat_with_http_info(chat_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->delete_chat_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chat_id** | **String** | The unique identifier of the AI chat session to delete. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## export_chat

> export_chat(chat_id, export_chat_request_body_integer)

Export AI chat messages to a file

Exports the entire message history of an AI chat session and saves it as a document in the specified folder.  The exported file is created with the provided title. Only the chat owner can export their own chat sessions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/export-chat/).

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

api_instance = DocspaceApiSdk::AI::ChatApi.new
chat_id = '00000000-0000-0000-0000-000000000000' # String | The unique identifier of the AI chat session to export.
export_chat_request_body_integer = DocspaceApiSdk::ExportChatRequestBodyInteger.new({folder_id: 123, title: 'Chat Export'}) # ExportChatRequestBodyInteger | The export parameters including destination folder and file title.

begin
  # Export AI chat messages to a file
  api_instance.export_chat(chat_id, export_chat_request_body_integer)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->export_chat: #{e}"
end
```

#### Using the export_chat_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> export_chat_with_http_info(chat_id, export_chat_request_body_integer)

```ruby
begin
  # Export AI chat messages to a file
  data, status_code, headers = api_instance.export_chat_with_http_info(chat_id, export_chat_request_body_integer)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->export_chat_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chat_id** | **String** | The unique identifier of the AI chat session to export. |  |
| **export_chat_request_body_integer** | [**ExportChatRequestBodyInteger**](ExportChatRequestBodyInteger.md) | The export parameters including destination folder and file title. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_chat

> <ChatWrapper> get_chat(chat_id)

Get an AI chat by ID

Retrieves the metadata of a single AI chat session, including its title, creation date, and the user who created it.  Only the chat owner can access their own chat sessions.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chat/).

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

api_instance = DocspaceApiSdk::AI::ChatApi.new
chat_id = '00000000-0000-0000-0000-000000000000' # String | The unique identifier of the AI chat session to retrieve.

begin
  # Get an AI chat by ID
  result = api_instance.get_chat(chat_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->get_chat: #{e}"
end
```

#### Using the get_chat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChatWrapper>, Integer, Hash)> get_chat_with_http_info(chat_id)

```ruby
begin
  # Get an AI chat by ID
  data, status_code, headers = api_instance.get_chat_with_http_info(chat_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChatWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->get_chat_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chat_id** | **String** | The unique identifier of the AI chat session to retrieve. |  |

### Return type

[**ChatWrapper**](ChatWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_chat_models

> <ModelArrayWrapper> get_chat_models(opts)

Get available AI models

Returns the list of AI models available for chat conversations.  Optionally filters the results to models from a specific provider when the provider query parameter is specified.  Each model entry includes the provider ID, provider display name, and the model identifier.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chat-models/).

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

api_instance = DocspaceApiSdk::AI::ChatApi.new
opts = {
  provider: 1 # Integer | The optional AI provider identifier to filter models by. When set to 0, models from all providers are returned.
}

begin
  # Get available AI models
  result = api_instance.get_chat_models(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->get_chat_models: #{e}"
end
```

#### Using the get_chat_models_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelArrayWrapper>, Integer, Hash)> get_chat_models_with_http_info(opts)

```ruby
begin
  # Get available AI models
  data, status_code, headers = api_instance.get_chat_models_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->get_chat_models_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **Integer** | The optional AI provider identifier to filter models by. When set to 0, models from all providers are returned. | [optional] |

### Return type

[**ModelArrayWrapper**](ModelArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_chats

> <ChatArrayWrapper> get_chats(room_id, opts)

Get AI chats in a room

Returns a paginated list of AI chat sessions that belong to the current user within the specified room.  Supports pagination via the startIndex and count query parameters. The total number of chats is included in the response metadata.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-chats/).

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

api_instance = DocspaceApiSdk::AI::ChatApi.new
room_id = 42 # Integer | The identifier of the room whose AI chat sessions are to be listed.
opts = {
  start_index: 0, # Integer | The number of items to skip before returning results (zero-based offset). Defaults to 0.
  count: 100 # Integer | The maximum number of items to return per page. Defaults to 100.
}

begin
  # Get AI chats in a room
  result = api_instance.get_chats(room_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->get_chats: #{e}"
end
```

#### Using the get_chats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChatArrayWrapper>, Integer, Hash)> get_chats_with_http_info(room_id, opts)

```ruby
begin
  # Get AI chats in a room
  data, status_code, headers = api_instance.get_chats_with_http_info(room_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChatArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->get_chats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | The identifier of the room whose AI chat sessions are to be listed. |  |
| **start_index** | **Integer** | The number of items to skip before returning results (zero-based offset). Defaults to 0. | [optional] |
| **count** | **Integer** | The maximum number of items to return per page. Defaults to 100. | [optional] |

### Return type

[**ChatArrayWrapper**](ChatArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_messages

> <MessageArrayWrapper> get_messages(chat_id, opts)

Get messages of an AI chat

Returns a paginated list of messages from an AI chat session owned by the current user.  Each message includes its role (user or assistant), content blocks (text, tool calls, attachments), and timestamp.  Supports pagination via the startIndex and count query parameters. The total number of messages is included in the response metadata.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-messages/).

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

api_instance = DocspaceApiSdk::AI::ChatApi.new
chat_id = '00000000-0000-0000-0000-000000000000' # String | The unique identifier of the AI chat session whose messages are to be listed.
opts = {
  start_index: 0, # Integer | The number of items to skip before returning results (zero-based offset). Defaults to 0.
  count: 100 # Integer | The maximum number of items to return per page. Defaults to 100.
}

begin
  # Get messages of an AI chat
  result = api_instance.get_messages(chat_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->get_messages: #{e}"
end
```

#### Using the get_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageArrayWrapper>, Integer, Hash)> get_messages_with_http_info(chat_id, opts)

```ruby
begin
  # Get messages of an AI chat
  data, status_code, headers = api_instance.get_messages_with_http_info(chat_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->get_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chat_id** | **String** | The unique identifier of the AI chat session whose messages are to be listed. |  |
| **start_index** | **Integer** | The number of items to skip before returning results (zero-based offset). Defaults to 0. | [optional] |
| **count** | **Integer** | The maximum number of items to return per page. Defaults to 100. | [optional] |

### Return type

[**MessageArrayWrapper**](MessageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_chats_settings

> <UserChatSettingsWrapper> get_user_chats_settings(room_id)

Get user chat settings for a room

Retrieves the current user's personal AI chat preferences for the specified room,  including whether web search is enabled for AI-assisted responses.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-chats-settings/).

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

api_instance = DocspaceApiSdk::AI::ChatApi.new
room_id = 42 # Integer | The identifier of the room whose chat settings are to be retrieved.

begin
  # Get user chat settings for a room
  result = api_instance.get_user_chats_settings(room_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->get_user_chats_settings: #{e}"
end
```

#### Using the get_user_chats_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserChatSettingsWrapper>, Integer, Hash)> get_user_chats_settings_with_http_info(room_id)

```ruby
begin
  # Get user chat settings for a room
  data, status_code, headers = api_instance.get_user_chats_settings_with_http_info(room_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserChatSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->get_user_chats_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | The identifier of the room whose chat settings are to be retrieved. |  |

### Return type

[**UserChatSettingsWrapper**](UserChatSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## provide_permission

> provide_permission(call_id, tool_decision_request_body)

Submit a tool execution permission decision

Provides the user's approval or denial decision for a pending MCP (Model Context Protocol) tool execution request.  When an AI assistant attempts to invoke an external tool that requires explicit user consent,  the client receives a permission prompt via the SSE stream. This endpoint is used to submit the user's decision  so that the AI chat session can proceed accordingly.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/provide-permission/).

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

api_instance = DocspaceApiSdk::AI::ChatApi.new
call_id = 'call_abc123' # String | The unique identifier of the pending tool execution call awaiting a permission decision.
tool_decision_request_body = DocspaceApiSdk::ToolDecisionRequestBody.new # ToolDecisionRequestBody | The permission decision parameters.

begin
  # Submit a tool execution permission decision
  api_instance.provide_permission(call_id, tool_decision_request_body)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->provide_permission: #{e}"
end
```

#### Using the provide_permission_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> provide_permission_with_http_info(call_id, tool_decision_request_body)

```ruby
begin
  # Submit a tool execution permission decision
  data, status_code, headers = api_instance.provide_permission_with_http_info(call_id, tool_decision_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->provide_permission_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_id** | **String** | The unique identifier of the pending tool execution call awaiting a permission decision. |  |
| **tool_decision_request_body** | [**ToolDecisionRequestBody**](ToolDecisionRequestBody.md) | The permission decision parameters. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## rename_chat

> <ChatWrapper> rename_chat(chat_id, rename_chat_body)

Rename an AI chat

Updates the display title of an existing AI chat session owned by the current user.  The new name must not exceed 255 characters.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/rename-chat/).

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

api_instance = DocspaceApiSdk::AI::ChatApi.new
chat_id = '00000000-0000-0000-0000-000000000000' # String | The unique identifier of the AI chat session to rename.
rename_chat_body = DocspaceApiSdk::RenameChatBody.new({name: 'Project Discussion'}) # RenameChatBody | The new chat name.

begin
  # Rename an AI chat
  result = api_instance.rename_chat(chat_id, rename_chat_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->rename_chat: #{e}"
end
```

#### Using the rename_chat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChatWrapper>, Integer, Hash)> rename_chat_with_http_info(chat_id, rename_chat_body)

```ruby
begin
  # Rename an AI chat
  data, status_code, headers = api_instance.rename_chat_with_http_info(chat_id, rename_chat_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChatWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->rename_chat_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chat_id** | **String** | The unique identifier of the AI chat session to rename. |  |
| **rename_chat_body** | [**RenameChatBody**](RenameChatBody.md) | The new chat name. |  |

### Return type

[**ChatWrapper**](ChatWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_user_chats_settings

> <UserChatSettingsWrapper> set_user_chats_settings(room_id, set_user_chat_settings_request_body)

Update user chat settings for a room

Saves the current user's personal AI chat preferences for the specified room.  Currently supports toggling the web search capability, which allows the AI assistant to search the internet when generating responses.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-user-chats-settings/).

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

api_instance = DocspaceApiSdk::AI::ChatApi.new
room_id = 42 # Integer | The identifier of the room whose chat settings are to be updated.
set_user_chat_settings_request_body = DocspaceApiSdk::SetUserChatSettingsRequestBody.new # SetUserChatSettingsRequestBody | The chat settings to apply.

begin
  # Update user chat settings for a room
  result = api_instance.set_user_chats_settings(room_id, set_user_chat_settings_request_body)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->set_user_chats_settings: #{e}"
end
```

#### Using the set_user_chats_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserChatSettingsWrapper>, Integer, Hash)> set_user_chats_settings_with_http_info(room_id, set_user_chat_settings_request_body)

```ruby
begin
  # Update user chat settings for a room
  data, status_code, headers = api_instance.set_user_chats_settings_with_http_info(room_id, set_user_chat_settings_request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserChatSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->set_user_chats_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | The identifier of the room whose chat settings are to be updated. |  |
| **set_user_chat_settings_request_body** | [**SetUserChatSettingsRequestBody**](SetUserChatSettingsRequestBody.md) | The chat settings to apply. |  |

### Return type

[**UserChatSettingsWrapper**](UserChatSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_new_chat

> start_new_chat(room_id, start_new_chat_body)

Start a new AI chat

Creates a new AI chat session within the specified room and sends the initial message to the configured AI provider.  The response is delivered as a Server-Sent Events (SSE) stream containing completion chunks (text deltas, tool calls, tool results, and message lifecycle events)  with periodic keep-alive pings every 5 seconds. File references can be included as context for the AI model.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-new-chat/).

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

api_instance = DocspaceApiSdk::AI::ChatApi.new
room_id = 42 # Integer | The identifier of the room in which to create the new AI chat session.
start_new_chat_body = DocspaceApiSdk::StartNewChatBody.new({message: 'Hello, can you help me with this document?'}) # StartNewChatBody | The initial message and optional file attachments.

begin
  # Start a new AI chat
  api_instance.start_new_chat(room_id, start_new_chat_body)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->start_new_chat: #{e}"
end
```

#### Using the start_new_chat_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> start_new_chat_with_http_info(room_id, start_new_chat_body)

```ruby
begin
  # Start a new AI chat
  data, status_code, headers = api_instance.start_new_chat_with_http_info(room_id, start_new_chat_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ChatApi->start_new_chat_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **Integer** | The identifier of the room in which to create the new AI chat session. |  |
| **start_new_chat_body** | [**StartNewChatBody**](StartNewChatBody.md) | The initial message and optional file attachments. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

