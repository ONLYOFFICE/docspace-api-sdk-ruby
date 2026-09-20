# DocspaceApiSdk::AIAgentsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_agents_create**](AIAgentsApi.md#ai_agents_create) | **POST** /api/2.0/ai/agents | Create an agent |
| [**ai_agents_delete**](AIAgentsApi.md#ai_agents_delete) | **DELETE** /api/2.0/ai/agents/{id} | Delete an agent |
| [**ai_agents_get**](AIAgentsApi.md#ai_agents_get) | **GET** /api/2.0/ai/agents/{id} | Get an agent |
| [**ai_agents_list**](AIAgentsApi.md#ai_agents_list) | **GET** /api/2.0/ai/agents | List agents |
| [**ai_agents_news**](AIAgentsApi.md#ai_agents_news) | **GET** /api/2.0/ai/agents/news | List agent news items |
| [**ai_agents_reset_quota**](AIAgentsApi.md#ai_agents_reset_quota) | **PUT** /api/2.0/ai/agents/resetquota | Reset agents' quota |
| [**ai_agents_update**](AIAgentsApi.md#ai_agents_update) | **PUT** /api/2.0/ai/agents/{id} | Update an agent |
| [**ai_agents_update_quota**](AIAgentsApi.md#ai_agents_update_quota) | **PUT** /api/2.0/ai/agents/agentquota | Update agents' quota |


## ai_agents_create

> <AiFolderWrapper> ai_agents_create(ai_agents_create_request)

Create an agent

Creates an AI agent room and binds a model to it, in that order. `profileId` is required, has to be a UUID, has to name an existing profile, and that profile has to support chat - an image-only model is refused here rather than failing on every later request. `prompt` is required and is stored on the room as its standing instruction with any markup stripped, so it cannot round-trip HTML into another user's reply. The two steps are not atomic: when the room is created but the model binding fails, the call reports an error and the room is left behind, so re-bind it with `PUT api/2.0/ai/agents/{id}` rather than creating a second one.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-create/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new
ai_agents_create_request = DocspaceApiSdk::AiAgentsCreateRequest.new({profile_id: 'profile_id_example', prompt: 'prompt_example'}) # AiAgentsCreateRequest | 

begin
  # Create an agent
  result = api_instance.ai_agents_create(ai_agents_create_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_create: #{e}"
end
```

#### Using the ai_agents_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiFolderWrapper>, Integer, Hash)> ai_agents_create_with_http_info(ai_agents_create_request)

```ruby
begin
  # Create an agent
  data, status_code, headers = api_instance.ai_agents_create_with_http_info(ai_agents_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiFolderWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_agents_create_request** | [**AiAgentsCreateRequest**](AiAgentsCreateRequest.md) |  |  |

### Return type

[**AiFolderWrapper**](AiFolderWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_agents_delete

> <AiFileOperationWrapper> ai_agents_delete(id, ai_agents_delete_request)

Delete an agent

Deletes an AI agent room. The ID has to be the room's integer identifier, and the body is forwarded to the DocSpace AI service unchanged, so it accepts the same options as deleting an ordinary room - `deleteAfter` among them. Deletion is asynchronous there: the answer is a file-operation payload to poll, not a completed result. The agent's model binding is deliberately left behind, because the upstream assignment API has no per-entry delete, so an orphaned assignment row survives the room.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-delete/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new
id = '1234' # String | The agent identifier.
ai_agents_delete_request = DocspaceApiSdk::AiAgentsDeleteRequest.new # AiAgentsDeleteRequest | 

begin
  # Delete an agent
  result = api_instance.ai_agents_delete(id, ai_agents_delete_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_delete: #{e}"
end
```

#### Using the ai_agents_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiFileOperationWrapper>, Integer, Hash)> ai_agents_delete_with_http_info(id, ai_agents_delete_request)

```ruby
begin
  # Delete an agent
  data, status_code, headers = api_instance.ai_agents_delete_with_http_info(id, ai_agents_delete_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiFileOperationWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The agent identifier. |  |
| **ai_agents_delete_request** | [**AiAgentsDeleteRequest**](AiAgentsDeleteRequest.md) |  |  |

### Return type

[**AiFileOperationWrapper**](AiFileOperationWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_agents_get

> <AiAgentsGet200Response> ai_agents_get(id)

Get an agent

Returns one AI agent room, enriched with the `profileId` currently bound to it so an edit form can prefill its model selector. The ID is the room's integer identifier, and a non-integer value is refused rather than passed on to fail opaquely upstream. The binding lives in an assignment rather than on the room, so it is looked up separately: a missing or unreadable assignment simply leaves `profileId` out of the answer instead of failing the call. The standing instruction comes back on the room as `chatSettings.prompt`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-get/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new
id = '1234' # String | The agent identifier.

begin
  # Get an agent
  result = api_instance.ai_agents_get(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_get: #{e}"
end
```

#### Using the ai_agents_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiAgentsGet200Response>, Integer, Hash)> ai_agents_get_with_http_info(id)

```ruby
begin
  # Get an agent
  data, status_code, headers = api_instance.ai_agents_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiAgentsGet200Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The agent identifier. |  |

### Return type

[**AiAgentsGet200Response**](AiAgentsGet200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_agents_list

> <AiFolderContentWrapper> ai_agents_list(opts)

List agents

Lists the portal's AI agent rooms. The query is forwarded unchanged to the DocSpace AI service, so it takes the same paging, sorting and filtering parameters as an ordinary room listing, and the answer is that service's folder-content payload rather than a shape of this API's own. Array and object query values are dropped rather than guessed at, so send flat strings. The profile bound to each agent is not included here - read one agent with `GET api/2.0/ai/agents/{id}` for that.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-list/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new
opts = {
  subject_id: '00000000-0000-0000-0000-000000000000', # String | Show only the agent rooms this user takes part in.
  subject_owner_id: '00000000-0000-0000-0000-000000000000', # String | Show only the agent rooms owned by this user.
  exclude_subject: false, # Boolean | Invert the user filter: leave out what `subjectId` selects instead of keeping it.
  tags: 'ai,assistant', # String | Show only the agent rooms carrying these tags, comma-separated.
  without_tags: false, # Boolean | Show only the agent rooms that carry no tags at all.
  quota_filter: 0, # Integer | Filter by quota kind: 0 for all, 1 for the default quota, 2 for a custom one.
  filter_value: 'assistant', # String | Show only the agent rooms whose title matches this text.
  sort_by: 'DateAndTime', # String | Field to sort by, for example `DateAndTime`.
  sort_order: 'descending', # String | Sort direction, `ascending` or `descending`.
  start_index: 0, # Integer | Index of the first entry to return; 0 starts at the beginning.
  count: 25 # Integer | How many entries to return. The internal service applies its own default.
}

begin
  # List agents
  result = api_instance.ai_agents_list(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_list: #{e}"
end
```

#### Using the ai_agents_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiFolderContentWrapper>, Integer, Hash)> ai_agents_list_with_http_info(opts)

```ruby
begin
  # List agents
  data, status_code, headers = api_instance.ai_agents_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiFolderContentWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** | Show only the agent rooms this user takes part in. | [optional] |
| **subject_owner_id** | **String** | Show only the agent rooms owned by this user. | [optional] |
| **exclude_subject** | **Boolean** | Invert the user filter: leave out what `subjectId` selects instead of keeping it. | [optional] |
| **tags** | **String** | Show only the agent rooms carrying these tags, comma-separated. | [optional] |
| **without_tags** | **Boolean** | Show only the agent rooms that carry no tags at all. | [optional] |
| **quota_filter** | **Integer** | Filter by quota kind: 0 for all, 1 for the default quota, 2 for a custom one. | [optional] |
| **filter_value** | **String** | Show only the agent rooms whose title matches this text. | [optional] |
| **sort_by** | **String** | Field to sort by, for example `DateAndTime`. | [optional] |
| **sort_order** | **String** | Sort direction, `ascending` or `descending`. | [optional] |
| **start_index** | **Integer** | Index of the first entry to return; 0 starts at the beginning. | [optional] |
| **count** | **Integer** | How many entries to return. The internal service applies its own default. | [optional] |

### Return type

[**AiFolderContentWrapper**](AiFolderContentWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_agents_news

> <AiNewItemsAgentNewItemsArrayWrapper> ai_agents_news

List agent news items

Lists the unread items across the caller's AI agent rooms, so a badge can be rendered without walking each room. It takes no parameters and is scoped to the caller by the DocSpace AI service. The answer is that service's new-items payload. This is a read-only operation and does not mark anything as seen.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-news/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new

begin
  # List agent news items
  result = api_instance.ai_agents_news
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_news: #{e}"
end
```

#### Using the ai_agents_news_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiNewItemsAgentNewItemsArrayWrapper>, Integer, Hash)> ai_agents_news_with_http_info

```ruby
begin
  # List agent news items
  data, status_code, headers = api_instance.ai_agents_news_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiNewItemsAgentNewItemsArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_news_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AiNewItemsAgentNewItemsArrayWrapper**](AiNewItemsAgentNewItemsArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_agents_reset_quota

> <AiFolderArrayWrapper> ai_agents_reset_quota(ai_agents_reset_quota_request)

Reset agents' quota

Returns the listed AI agent rooms to the portal's default storage quota, forwarding `roomIds` to the DocSpace AI service unchanged. The answer is that service's payload, one updated room per entry. This is the counterpart of `PUT api/2.0/ai/agents/agentquota` and takes no quota value of its own. Rooms already on the default are unaffected.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-reset-quota/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new
ai_agents_reset_quota_request = DocspaceApiSdk::AiAgentsResetQuotaRequest.new({room_ids: [DocspaceApiSdk::AiAgentsUpdateQuotaRequestRoomIdsInner.new]}) # AiAgentsResetQuotaRequest | 

begin
  # Reset agents' quota
  result = api_instance.ai_agents_reset_quota(ai_agents_reset_quota_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_reset_quota: #{e}"
end
```

#### Using the ai_agents_reset_quota_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiFolderArrayWrapper>, Integer, Hash)> ai_agents_reset_quota_with_http_info(ai_agents_reset_quota_request)

```ruby
begin
  # Reset agents' quota
  data, status_code, headers = api_instance.ai_agents_reset_quota_with_http_info(ai_agents_reset_quota_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiFolderArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_reset_quota_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_agents_reset_quota_request** | [**AiAgentsResetQuotaRequest**](AiAgentsResetQuotaRequest.md) |  |  |

### Return type

[**AiFolderArrayWrapper**](AiFolderArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_agents_update

> <AiFolderWrapper> ai_agents_update(id, ai_agents_update_request)

Update an agent

Changes an AI agent room - its title, tags or standing instruction - and optionally rebinds its model. The ID has to be the room's integer identifier. `profileId` is not part of the room contract: it is taken out of the forwarded body and applied afterwards as the agent's assignment, and it has to be a UUID naming an existing chat-capable profile. An instruction sent as `chatSettings.prompt` has its markup stripped, as on create; note that when `chatSettings` is present the upstream service still requires the rest of that object to be valid, so send it whole.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new
id = '1234' # String | The agent identifier.
ai_agents_update_request = DocspaceApiSdk::AiAgentsUpdateRequest.new # AiAgentsUpdateRequest | 

begin
  # Update an agent
  result = api_instance.ai_agents_update(id, ai_agents_update_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_update: #{e}"
end
```

#### Using the ai_agents_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiFolderWrapper>, Integer, Hash)> ai_agents_update_with_http_info(id, ai_agents_update_request)

```ruby
begin
  # Update an agent
  data, status_code, headers = api_instance.ai_agents_update_with_http_info(id, ai_agents_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiFolderWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The agent identifier. |  |
| **ai_agents_update_request** | [**AiAgentsUpdateRequest**](AiAgentsUpdateRequest.md) |  |  |

### Return type

[**AiFolderWrapper**](AiFolderWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_agents_update_quota

> <AiFolderArrayWrapper> ai_agents_update_quota(ai_agents_update_quota_request)

Update agents' quota

Sets the storage quota of the listed AI agent rooms in one call, forwarding `roomIds` and `quota` to the DocSpace AI service unchanged. The answer is that service's payload, one updated room per entry. A quota applies to the room's stored files, not to the model usage of its chats. Use `PUT api/2.0/ai/agents/resetquota` to return rooms to the portal default instead of naming a number.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update-quota/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new
ai_agents_update_quota_request = DocspaceApiSdk::AiAgentsUpdateQuotaRequest.new({room_ids: [DocspaceApiSdk::AiAgentsUpdateQuotaRequestRoomIdsInner.new], quota: 3.56}) # AiAgentsUpdateQuotaRequest | 

begin
  # Update agents' quota
  result = api_instance.ai_agents_update_quota(ai_agents_update_quota_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_update_quota: #{e}"
end
```

#### Using the ai_agents_update_quota_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiFolderArrayWrapper>, Integer, Hash)> ai_agents_update_quota_with_http_info(ai_agents_update_quota_request)

```ruby
begin
  # Update agents' quota
  data, status_code, headers = api_instance.ai_agents_update_quota_with_http_info(ai_agents_update_quota_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiFolderArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_update_quota_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_agents_update_quota_request** | [**AiAgentsUpdateQuotaRequest**](AiAgentsUpdateQuotaRequest.md) |  |  |

### Return type

[**AiFolderArrayWrapper**](AiFolderArrayWrapper.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

