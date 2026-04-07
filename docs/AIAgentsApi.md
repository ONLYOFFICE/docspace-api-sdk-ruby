# DocspaceApiSdk::AIAgentsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_agent**](AIAgentsApi.md#create_agent) | **POST** /api/2.0/ai/agents | Create an ai agent |
| [**delete_agent**](AIAgentsApi.md#delete_agent) | **DELETE** /api/2.0/ai/agents/{id} | Remove an ai agent |
| [**get_agent_info**](AIAgentsApi.md#get_agent_info) | **GET** /api/2.0/ai/agents/{id} | Return an ai agent |
| [**get_agents**](AIAgentsApi.md#get_agents) | **GET** /api/2.0/ai/agents | Get ai agents |
| [**get_agents_new_items**](AIAgentsApi.md#get_agents_new_items) | **GET** /api/2.0/ai/agents/news | Get the room new items |
| [**reset_agents_quota**](AIAgentsApi.md#reset_agents_quota) | **PUT** /api/2.0/ai/agents/resetquota | Reset the AI agents quota limit |
| [**update_agent**](AIAgentsApi.md#update_agent) | **PUT** /api/2.0/ai/agents/{id} | Update an ai agent |
| [**update_agents_quota**](AIAgentsApi.md#update_agents_quota) | **PUT** /api/2.0/ai/agents/agentquota | Change the AI agent quota limit |


## create_agent

> <FolderIntegerWrapper> create_agent(opts)

Create an ai agent

Creates an ai agent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-agent/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new
opts = {
  create_agent_request_dto: DocspaceApiSdk::CreateAgentRequestDto.new({title: 'My AI Agent Room', chat_settings: DocspaceApiSdk::ChatSettings.new}) # CreateAgentRequestDto | 
}

begin
  # Create an ai agent
  result = api_instance.create_agent(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->create_agent: #{e}"
end
```

#### Using the create_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> create_agent_with_http_info(opts)

```ruby
begin
  # Create an ai agent
  data, status_code, headers = api_instance.create_agent_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->create_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_agent_request_dto** | [**CreateAgentRequestDto**](CreateAgentRequestDto.md) |  | [optional] |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_agent

> <FileOperationWrapper> delete_agent(id, delete_room_request)

Remove an ai agent

Removes an ai agent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-agent/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new
id = 10 # Integer | The room ID.
delete_room_request = DocspaceApiSdk::DeleteRoomRequest.new # DeleteRoomRequest | The parameters for deleting a room.

begin
  # Remove an ai agent
  result = api_instance.delete_agent(id, delete_room_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->delete_agent: #{e}"
end
```

#### Using the delete_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileOperationWrapper>, Integer, Hash)> delete_agent_with_http_info(id, delete_room_request)

```ruby
begin
  # Remove an ai agent
  data, status_code, headers = api_instance.delete_agent_with_http_info(id, delete_room_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileOperationWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->delete_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |
| **delete_room_request** | [**DeleteRoomRequest**](DeleteRoomRequest.md) | The parameters for deleting a room. |  |

### Return type

[**FileOperationWrapper**](FileOperationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_agent_info

> <FolderIntegerWrapper> get_agent_info(id)

Return an ai agent

Returns an ai agent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agent-info/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new
id = 1 # Integer | The room ID.

begin
  # Return an ai agent
  result = api_instance.get_agent_info(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->get_agent_info: #{e}"
end
```

#### Using the get_agent_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> get_agent_info_with_http_info(id)

```ruby
begin
  # Return an ai agent
  data, status_code, headers = api_instance.get_agent_info_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->get_agent_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_agents

> <FolderContentIntegerWrapper> get_agents(opts)

Get ai agents

Get ai agents

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agents/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new
opts = {
  subject_id: '00000000-0000-0000-0000-000000000000', # String | The filter by user ID.
  subject_owner_id: '00000000-0000-0000-0000-000000000000', # String | The filter by room owner ID.
  without_tags: false, # Boolean | Specifies whether to search by tags or not.
  tags: 'ai,assistant', # String | The tags in the serialized format.
  exclude_subject: false, # Boolean | Specifies whether to exclude search by user or group ID.
  subject_filter: DocspaceApiSdk::SubjectFilter::Owner, # SubjectFilter | The filter by user (Owner - 0, Member - 1).
  quota_filter: DocspaceApiSdk::QuotaFilter::All, # QuotaFilter | The filter by quota (All - 0, Default - 1, Custom - 2).
  count: 25, # Integer | Specifies the maximum number of items to retrieve.
  start_index: 0, # Integer | The index from which to start retrieving the room content.
  sort_by: 'DateAndTime', # String | Specifies the field by which the room content should be sorted.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The order in which the results are sorted.
  filter_value: 'my agent' # String | The text filter value used to refine search or query operations.
}

begin
  # Get ai agents
  result = api_instance.get_agents(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->get_agents: #{e}"
end
```

#### Using the get_agents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderContentIntegerWrapper>, Integer, Hash)> get_agents_with_http_info(opts)

```ruby
begin
  # Get ai agents
  data, status_code, headers = api_instance.get_agents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderContentIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->get_agents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_id** | **String** | The filter by user ID. | [optional] |
| **subject_owner_id** | **String** | The filter by room owner ID. | [optional] |
| **without_tags** | **Boolean** | Specifies whether to search by tags or not. | [optional] |
| **tags** | **String** | The tags in the serialized format. | [optional] |
| **exclude_subject** | **Boolean** | Specifies whether to exclude search by user or group ID. | [optional] |
| **subject_filter** | **SubjectFilter** | The filter by user (Owner - 0, Member - 1). | [optional] |
| **quota_filter** | **QuotaFilter** | The filter by quota (All - 0, Default - 1, Custom - 2). | [optional] |
| **count** | **Integer** | Specifies the maximum number of items to retrieve. | [optional] |
| **start_index** | **Integer** | The index from which to start retrieving the room content. | [optional] |
| **sort_by** | **String** | Specifies the field by which the room content should be sorted. | [optional] |
| **sort_order** | **SortOrder** | The order in which the results are sorted. | [optional] |
| **filter_value** | **String** | The text filter value used to refine search or query operations. | [optional] |

### Return type

[**FolderContentIntegerWrapper**](FolderContentIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_agents_new_items

> <NewItemsAgentNewItemsArrayWrapper> get_agents_new_items

Get the room new items

Returns the room new items.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-agents-new-items/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new

begin
  # Get the room new items
  result = api_instance.get_agents_new_items
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->get_agents_new_items: #{e}"
end
```

#### Using the get_agents_new_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NewItemsAgentNewItemsArrayWrapper>, Integer, Hash)> get_agents_new_items_with_http_info

```ruby
begin
  # Get the room new items
  data, status_code, headers = api_instance.get_agents_new_items_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NewItemsAgentNewItemsArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->get_agents_new_items_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**NewItemsAgentNewItemsArrayWrapper**](NewItemsAgentNewItemsArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_agents_quota

> <FolderIntegerArrayWrapper> reset_agents_quota(opts)

Reset the AI agents quota limit

Resets the quota limit for the AI agents with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-agents-quota/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new
opts = {
  update_rooms_room_ids_request_dto_integer: DocspaceApiSdk::UpdateRoomsRoomIdsRequestDtoInteger.new # UpdateRoomsRoomIdsRequestDtoInteger | 
}

begin
  # Reset the AI agents quota limit
  result = api_instance.reset_agents_quota(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->reset_agents_quota: #{e}"
end
```

#### Using the reset_agents_quota_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerArrayWrapper>, Integer, Hash)> reset_agents_quota_with_http_info(opts)

```ruby
begin
  # Reset the AI agents quota limit
  data, status_code, headers = api_instance.reset_agents_quota_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->reset_agents_quota_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_rooms_room_ids_request_dto_integer** | [**UpdateRoomsRoomIdsRequestDtoInteger**](UpdateRoomsRoomIdsRequestDtoInteger.md) |  | [optional] |

### Return type

[**FolderIntegerArrayWrapper**](FolderIntegerArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_agent

> <FolderIntegerWrapper> update_agent(id, update_room_request)

Update an ai agent

Updates an ai agent.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-agent/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new
id = 56 # Integer | The room ID.
update_room_request = DocspaceApiSdk::UpdateRoomRequest.new # UpdateRoomRequest | The request parameters for updating a room.

begin
  # Update an ai agent
  result = api_instance.update_agent(id, update_room_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->update_agent: #{e}"
end
```

#### Using the update_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerWrapper>, Integer, Hash)> update_agent_with_http_info(id, update_room_request)

```ruby
begin
  # Update an ai agent
  data, status_code, headers = api_instance.update_agent_with_http_info(id, update_room_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->update_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room ID. |  |
| **update_room_request** | [**UpdateRoomRequest**](UpdateRoomRequest.md) | The request parameters for updating a room. |  |

### Return type

[**FolderIntegerWrapper**](FolderIntegerWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_agents_quota

> <FolderIntegerArrayWrapper> update_agents_quota(opts)

Change the AI agent quota limit

Changes the quota limit for the AI agents with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-agents-quota/).

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

api_instance = DocspaceApiSdk::AI::AgentsApi.new
opts = {
  update_rooms_quota_request_dto_integer: DocspaceApiSdk::UpdateRoomsQuotaRequestDtoInteger.new # UpdateRoomsQuotaRequestDtoInteger | 
}

begin
  # Change the AI agent quota limit
  result = api_instance.update_agents_quota(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->update_agents_quota: #{e}"
end
```

#### Using the update_agents_quota_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FolderIntegerArrayWrapper>, Integer, Hash)> update_agents_quota_with_http_info(opts)

```ruby
begin
  # Change the AI agent quota limit
  data, status_code, headers = api_instance.update_agents_quota_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FolderIntegerArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::AgentsApi->update_agents_quota_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_rooms_quota_request_dto_integer** | [**UpdateRoomsQuotaRequestDtoInteger**](UpdateRoomsQuotaRequestDtoInteger.md) |  | [optional] |

### Return type

[**FolderIntegerArrayWrapper**](FolderIntegerArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

