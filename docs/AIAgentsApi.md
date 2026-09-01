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

> <AiFolderIntegerWrapper> ai_agents_create(ai_agents_create_request)

Create an agent

Creates an AI agent room in the .NET AI service and binds the supplied `profileId` to it as a `Chat` assignment. The instruction is stored on the room as a prompt-only chat setting; a failed binding is reported as an error even though the room already exists.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-create/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

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

> <Array(<AiFolderIntegerWrapper>, Integer, Hash)> ai_agents_create_with_http_info(ai_agents_create_request)

```ruby
begin
  # Create an agent
  data, status_code, headers = api_instance.ai_agents_create_with_http_info(ai_agents_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiFolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_agents_create_request** | [**AiAgentsCreateRequest**](AiAgentsCreateRequest.md) |  |  |

### Return type

[**AiFolderIntegerWrapper**](AiFolderIntegerWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_agents_delete

> <AiFileOperationWrapper> ai_agents_delete(id, ai_agents_delete_request)

Delete an agent

Deletes an AI agent room.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-delete/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AgentsApi.new
id = 'id_example' # String | The agent identifier.
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

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_agents_get

> <AiFolderIntegerWrapper> ai_agents_get(id)

Get an agent

Returns one AI agent room, enriched with the `profileId` bound to it so an edit form can prefill the profile selector. A missing assignment simply leaves `profileId` out.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-get/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AgentsApi.new
id = 'id_example' # String | The agent identifier.

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

> <Array(<AiFolderIntegerWrapper>, Integer, Hash)> ai_agents_get_with_http_info(id)

```ruby
begin
  # Get an agent
  data, status_code, headers = api_instance.ai_agents_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiFolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The agent identifier. |  |

### Return type

[**AiFolderIntegerWrapper**](AiFolderIntegerWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_agents_list

> <AiFolderContentIntegerWrapper> ai_agents_list

List agents

Lists the portal's AI agent rooms. Query parameters are forwarded unchanged to the .NET AI service, which answers with its folder-content payload.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-list/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AgentsApi.new

begin
  # List agents
  result = api_instance.ai_agents_list
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_list: #{e}"
end
```

#### Using the ai_agents_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiFolderContentIntegerWrapper>, Integer, Hash)> ai_agents_list_with_http_info

```ruby
begin
  # List agents
  data, status_code, headers = api_instance.ai_agents_list_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiFolderContentIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_list_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AiFolderContentIntegerWrapper**](AiFolderContentIntegerWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_agents_news

> <AiNewItemsAgentNewItemsArrayWrapper> ai_agents_news

List agent news items

Lists the new items across the caller's AI agent rooms.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-news/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_agents_reset_quota

> <AiFolderIntegerArrayWrapper> ai_agents_reset_quota(ai_agents_reset_quota_request)

Reset agents' quota

Resets the storage quota of the given AI agent rooms.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-reset-quota/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

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

> <Array(<AiFolderIntegerArrayWrapper>, Integer, Hash)> ai_agents_reset_quota_with_http_info(ai_agents_reset_quota_request)

```ruby
begin
  # Reset agents' quota
  data, status_code, headers = api_instance.ai_agents_reset_quota_with_http_info(ai_agents_reset_quota_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiFolderIntegerArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_reset_quota_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_agents_reset_quota_request** | [**AiAgentsResetQuotaRequest**](AiAgentsResetQuotaRequest.md) |  |  |

### Return type

[**AiFolderIntegerArrayWrapper**](AiFolderIntegerArrayWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_agents_update

> <AiFolderIntegerWrapper> ai_agents_update(id, ai_agents_update_request)

Update an agent

Updates an AI agent room - title, tags, instruction. `profileId` is not part of the room contract: it is stripped from the forwarded body and re-bound as the agent's assignment afterwards.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::AI::AgentsApi.new
id = 'id_example' # String | The agent identifier.
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

> <Array(<AiFolderIntegerWrapper>, Integer, Hash)> ai_agents_update_with_http_info(id, ai_agents_update_request)

```ruby
begin
  # Update an agent
  data, status_code, headers = api_instance.ai_agents_update_with_http_info(id, ai_agents_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiFolderIntegerWrapper>
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

[**AiFolderIntegerWrapper**](AiFolderIntegerWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## ai_agents_update_quota

> <AiFolderIntegerArrayWrapper> ai_agents_update_quota(ai_agents_update_quota_request)

Update agents' quota

Changes the storage quota of the given AI agent rooms.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-agents-update-quota/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

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

> <Array(<AiFolderIntegerArrayWrapper>, Integer, Hash)> ai_agents_update_quota_with_http_info(ai_agents_update_quota_request)

```ruby
begin
  # Update agents' quota
  data, status_code, headers = api_instance.ai_agents_update_quota_with_http_info(ai_agents_update_quota_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiFolderIntegerArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->ai_agents_update_quota_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ai_agents_update_quota_request** | [**AiAgentsUpdateQuotaRequest**](AiAgentsUpdateQuotaRequest.md) |  |  |

### Return type

[**AiFolderIntegerArrayWrapper**](AiFolderIntegerArrayWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

