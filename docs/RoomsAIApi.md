# DocspaceApiSdk::RoomsAIApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_project_model**](RoomsAIApi.md#get_project_model) | **GET** /api/2.0/files/rooms/{id}/model | Get the AI project model |
| [**get_project_sources**](RoomsAIApi.md#get_project_sources) | **GET** /api/2.0/files/rooms/{id}/sources | Get the AI project sources |
| [**get_room_skills**](RoomsAIApi.md#get_room_skills) | **GET** /api/2.0/files/rooms/{id}/skills | Get the skills of an AI room |
| [**get_rooms_skills**](RoomsAIApi.md#get_rooms_skills) | **GET** /api/2.0/files/rooms/skills | Get the skills of Instructions rooms |
| [**link_project_sources**](RoomsAIApi.md#link_project_sources) | **POST** /api/2.0/files/rooms/{id}/sources | Link sources to an AI project |
| [**set_project_model**](RoomsAIApi.md#set_project_model) | **PUT** /api/2.0/files/rooms/{id}/model | Set the AI project model |
| [**unlink_project_sources**](RoomsAIApi.md#unlink_project_sources) | **DELETE** /api/2.0/files/rooms/{id}/sources | Unlink sources from an AI project |


## get_project_model

> <AiProjectModelWrapper> get_project_model(id)

Get the AI project model

Returns the AI model selected for the chat of an AI project, as the ID of an AI model profile. Any project member with read access may call it. The call is read-only. The result holds only the project's own choice: `profileId` is null when nobody has selected a model for the project yet, or when the selected profile has been removed from the portal since. In both cases the portal-wide model is used instead, which this operation does not return. To change the model, use `PUT api/2.0/files/rooms/{id}/model`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-project-model/).

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

api_instance = DocspaceApiSdk::Rooms::AIApi.new
id = 1 # Integer | The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.

begin
  # Get the AI project model
  result = api_instance.get_project_model(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::AIApi->get_project_model: #{e}"
end
```

#### Using the get_project_model_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiProjectModelWrapper>, Integer, Hash)> get_project_model_with_http_info(id)

```ruby
begin
  # Get the AI project model
  data, status_code, headers = api_instance.get_project_model_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiProjectModelWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::AIApi->get_project_model_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. |  |

### Return type

[**AiProjectModelWrapper**](AiProjectModelWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_project_sources

> <AiProjectSourcesWrapper> get_project_sources(id)

Get the AI project sources

Returns the Instructions and Knowledge rooms linked to an AI project as its sources.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-project-sources/).

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

api_instance = DocspaceApiSdk::Rooms::AIApi.new
id = 1 # Integer | The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.

begin
  # Get the AI project sources
  result = api_instance.get_project_sources(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::AIApi->get_project_sources: #{e}"
end
```

#### Using the get_project_sources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiProjectSourcesWrapper>, Integer, Hash)> get_project_sources_with_http_info(id)

```ruby
begin
  # Get the AI project sources
  data, status_code, headers = api_instance.get_project_sources_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiProjectSourcesWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::AIApi->get_project_sources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. |  |

### Return type

[**AiProjectSourcesWrapper**](AiProjectSourcesWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_room_skills

> <AiSkillsWrapper> get_room_skills(id)

Get the skills of an AI room

Returns the skills of an Instructions room, or of the Instructions rooms linked to an AI project.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-room-skills/).

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

api_instance = DocspaceApiSdk::Rooms::AIApi.new
id = 1 # Integer | The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing.

begin
  # Get the skills of an AI room
  result = api_instance.get_room_skills(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::AIApi->get_room_skills: #{e}"
end
```

#### Using the get_room_skills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSkillsWrapper>, Integer, Hash)> get_room_skills_with_http_info(id)

```ruby
begin
  # Get the skills of an AI room
  data, status_code, headers = api_instance.get_room_skills_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSkillsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::AIApi->get_room_skills_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The room to act on, named by the identifier that `GET api/2.0/files/rooms` reports for it. Rooms kept in the  portal itself use whole numbers, while a room backed by a connected third-party account uses the string form  of the same listing. |  |

### Return type

[**AiSkillsWrapper**](AiSkillsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rooms_skills

> <AiSkillsWrapper> get_rooms_skills(opts)

Get the skills of Instructions rooms

Returns the skills of several Instructions rooms. Rooms the caller cannot read are left out.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-rooms-skills/).

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

api_instance = DocspaceApiSdk::Rooms::AIApi.new
opts = {
  room_ids: [37] # Array<Integer> | IDs of the Instructions rooms, one `roomIds` query item per room; 1 to 20 items.
}

begin
  # Get the skills of Instructions rooms
  result = api_instance.get_rooms_skills(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::AIApi->get_rooms_skills: #{e}"
end
```

#### Using the get_rooms_skills_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiSkillsWrapper>, Integer, Hash)> get_rooms_skills_with_http_info(opts)

```ruby
begin
  # Get the skills of Instructions rooms
  data, status_code, headers = api_instance.get_rooms_skills_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiSkillsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::AIApi->get_rooms_skills_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **room_ids** | [**Array&lt;Integer&gt;**](Integer.md) | IDs of the Instructions rooms, one `roomIds` query item per room; 1 to 20 items. | [optional] |

### Return type

[**AiSkillsWrapper**](AiSkillsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## link_project_sources

> link_project_sources(id, link_ai_project_sources_request)

Link sources to an AI project

Links Instructions and Knowledge rooms to an AI project as its sources, which gives every project member read access to them. The caller must manage the project and each listed room; rooms that are already linked are skipped.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/link-project-sources/).

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

api_instance = DocspaceApiSdk::Rooms::AIApi.new
id = 1 # Integer | ID of the project.
link_ai_project_sources_request = DocspaceApiSdk::LinkAiProjectSourcesRequest.new({room_ids: [17001,  17020]}) # LinkAiProjectSourcesRequest | The rooms to link.

begin
  # Link sources to an AI project
  api_instance.link_project_sources(id, link_ai_project_sources_request)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::AIApi->link_project_sources: #{e}"
end
```

#### Using the link_project_sources_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> link_project_sources_with_http_info(id, link_ai_project_sources_request)

```ruby
begin
  # Link sources to an AI project
  data, status_code, headers = api_instance.link_project_sources_with_http_info(id, link_ai_project_sources_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::AIApi->link_project_sources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the project. |  |
| **link_ai_project_sources_request** | [**LinkAiProjectSourcesRequest**](LinkAiProjectSourcesRequest.md) | The rooms to link. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_project_model

> <AiProjectModelWrapper> set_project_model(id, update_ai_project_model_request)

Set the AI project model

Selects the AI model that answers in the chat of an AI project, replacing the previous choice, and returns the model now selected. Take `profileId` from the profiles that `GET api/2.0/ai/profiles/list` returns. The caller must be able to edit the project; reading it is not enough. The change applies to every member of the project, is recorded in the audit trail and notifies the project's open clients. Repeating the call with the same profile changes nothing. A model can only be replaced by another one: there is no operation that clears the selection and returns the project to the portal-wide model. The profile must exist on the portal and be able to chat; a profile known to serve only other kinds of tasks, such as image generation, is refused with 400.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-project-model/).

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

api_instance = DocspaceApiSdk::Rooms::AIApi.new
id = 1 # Integer | ID of the project.
update_ai_project_model_request = DocspaceApiSdk::UpdateAiProjectModelRequest.new({profile_id: '0198c3f4-6a2e-7c41-9b8d-2f5e7a1c3d90'}) # UpdateAiProjectModelRequest | The model to set.

begin
  # Set the AI project model
  result = api_instance.set_project_model(id, update_ai_project_model_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::AIApi->set_project_model: #{e}"
end
```

#### Using the set_project_model_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiProjectModelWrapper>, Integer, Hash)> set_project_model_with_http_info(id, update_ai_project_model_request)

```ruby
begin
  # Set the AI project model
  data, status_code, headers = api_instance.set_project_model_with_http_info(id, update_ai_project_model_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiProjectModelWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::AIApi->set_project_model_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the project. |  |
| **update_ai_project_model_request** | [**UpdateAiProjectModelRequest**](UpdateAiProjectModelRequest.md) | The model to set. |  |

### Return type

[**AiProjectModelWrapper**](AiProjectModelWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unlink_project_sources

> unlink_project_sources(id, unlink_ai_project_sources_request)

Unlink sources from an AI project

Unlinks Instructions and Knowledge rooms from an AI project; project members lose the access the link gave them. The caller must manage the project, rights on the rooms are not checked; the rooms themselves are not changed.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-project-sources/).

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

api_instance = DocspaceApiSdk::Rooms::AIApi.new
id = 1 # Integer | ID of the project.
unlink_ai_project_sources_request = DocspaceApiSdk::UnlinkAiProjectSourcesRequest.new({room_ids: [17001,  17020]}) # UnlinkAiProjectSourcesRequest | The rooms to unlink.

begin
  # Unlink sources from an AI project
  api_instance.unlink_project_sources(id, unlink_ai_project_sources_request)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::AIApi->unlink_project_sources: #{e}"
end
```

#### Using the unlink_project_sources_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unlink_project_sources_with_http_info(id, unlink_ai_project_sources_request)

```ruby
begin
  # Unlink sources from an AI project
  data, status_code, headers = api_instance.unlink_project_sources_with_http_info(id, unlink_ai_project_sources_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Rooms::AIApi->unlink_project_sources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the project. |  |
| **unlink_ai_project_sources_request** | [**UnlinkAiProjectSourcesRequest**](UnlinkAiProjectSourcesRequest.md) | The rooms to unlink. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

