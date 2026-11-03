# DocspaceApiSdk::AIContextApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ai_context_get_context_folders**](AIContextApi.md#ai_context_get_context_folders) | **GET** /api/2.0/ai/context/get-context-folders | Get context folders |
| [**ai_context_get_knowledge_folders**](AIContextApi.md#ai_context_get_knowledge_folders) | **GET** /api/2.0/ai/context/get-knowledge-folders | Get knowledge folders |
| [**ai_context_get_room_skill**](AIContextApi.md#ai_context_get_room_skill) | **GET** /api/2.0/ai/context/get-room-skill | Get room skill |
| [**ai_context_get_room_skills**](AIContextApi.md#ai_context_get_room_skills) | **GET** /api/2.0/ai/context/get-room-skills | Get room skills |


## ai_context_get_context_folders

> <Array<AiContextFolder>> ai_context_get_context_folders

Get context folders

Lists the Instructions rooms the caller can connect to a chat as context, grouped under the account they belong to (`docspace` for this portal). Only a room the caller can read that holds at least one skill is listed: one without skills would connect nothing. An empty list means there is nothing to connect. At most 1000 Instructions rooms are read; any beyond them are left out without a signal. Read the skills of one room with `GET api/2.0/ai/context/get-room-skills`. This is a read-only operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-context-folders/).

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

api_instance = DocspaceApiSdk::AI::ContextApi.new

begin
  # Get context folders
  result = api_instance.ai_context_get_context_folders
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ContextApi->ai_context_get_context_folders: #{e}"
end
```

#### Using the ai_context_get_context_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AiContextFolder>>, Integer, Hash)> ai_context_get_context_folders_with_http_info

```ruby
begin
  # Get context folders
  data, status_code, headers = api_instance.ai_context_get_context_folders_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AiContextFolder>>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ContextApi->ai_context_get_context_folders_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;AiContextFolder&gt;**](AiContextFolder.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_context_get_knowledge_folders

> <Array<AiContextFolder>> ai_context_get_knowledge_folders

Get knowledge folders

Lists the Knowledge rooms the caller can connect to a chat as its knowledge base, grouped under the account they belong to (`docspace` for this portal). A connected Knowledge room limits the knowledge search of a round to it (`actionArgs.knowledgeRooms`). An empty list means there is none the caller can read. At most 1000 Knowledge rooms are listed; any beyond them are left out without a signal. This is a read-only operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-knowledge-folders/).

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

api_instance = DocspaceApiSdk::AI::ContextApi.new

begin
  # Get knowledge folders
  result = api_instance.ai_context_get_knowledge_folders
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ContextApi->ai_context_get_knowledge_folders: #{e}"
end
```

#### Using the ai_context_get_knowledge_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AiContextFolder>>, Integer, Hash)> ai_context_get_knowledge_folders_with_http_info

```ruby
begin
  # Get knowledge folders
  data, status_code, headers = api_instance.ai_context_get_knowledge_folders_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AiContextFolder>>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ContextApi->ai_context_get_knowledge_folders_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;AiContextFolder&gt;**](AiContextFolder.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_context_get_room_skill

> String ai_context_get_room_skill(room_id, skill_id, opts)

Get room skill

Returns the Markdown file of one skill of an Instructions room as a JSON string. `roomId` and `skillId` are required, and the skill has to be one of that room's skills: the ID of any other file, readable or not, answers 404, as does a room that is not an Instructions room the caller can read. Only the first 256 KiB of the file are read, which covers the 64 K characters a chat passes to the model; a longer file comes back cut there without a signal. This is a read-only operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skill/).

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

api_instance = DocspaceApiSdk::AI::ContextApi.new
room_id = 'room_id_example' # String | The Instructions room identifier.
skill_id = 'skill_id_example' # String | The skill identifier, as `GET api/2.0/ai/context/get-room-skills` lists it.
opts = {
  cloud: 'cloud_example' # String | The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it.
}

begin
  # Get room skill
  result = api_instance.ai_context_get_room_skill(room_id, skill_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ContextApi->ai_context_get_room_skill: #{e}"
end
```

#### Using the ai_context_get_room_skill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> ai_context_get_room_skill_with_http_info(room_id, skill_id, opts)

```ruby
begin
  # Get room skill
  data, status_code, headers = api_instance.ai_context_get_room_skill_with_http_info(room_id, skill_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ContextApi->ai_context_get_room_skill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **String** | The Instructions room identifier. |  |
| **skill_id** | **String** | The skill identifier, as `GET api/2.0/ai/context/get-room-skills` lists it. |  |
| **cloud** | **String** | The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it. | [optional] |

### Return type

**String**

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## ai_context_get_room_skills

> <Array<AiRoomSkill>> ai_context_get_room_skills(room_id, opts)

Get room skills

Lists the skills of one Instructions room: the ID, name and description from the frontmatter of each skill file, not its body. `roomId` is required; `cloud` is accepted and not read. A room that is not an Instructions room the caller can read answers 404. Read the body of one skill with `GET api/2.0/ai/context/get-room-skill`. This is a read-only operation.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/ai-context-get-room-skills/).

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

api_instance = DocspaceApiSdk::AI::ContextApi.new
room_id = 'room_id_example' # String | The Instructions room identifier.
opts = {
  cloud: 'cloud_example' # String | The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it.
}

begin
  # Get room skills
  result = api_instance.ai_context_get_room_skills(room_id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ContextApi->ai_context_get_room_skills: #{e}"
end
```

#### Using the ai_context_get_room_skills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AiRoomSkill>>, Integer, Hash)> ai_context_get_room_skills_with_http_info(room_id, opts)

```ruby
begin
  # Get room skills
  data, status_code, headers = api_instance.ai_context_get_room_skills_with_http_info(room_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AiRoomSkill>>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling AI::ContextApi->ai_context_get_room_skills_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_id** | **String** | The Instructions room identifier. |  |
| **cloud** | **String** | The account the room belongs to. Only `docspace`, this portal, exists, and the value is not read; omit it. | [optional] |

### Return type

[**Array&lt;AiRoomSkill&gt;**](AiRoomSkill.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

