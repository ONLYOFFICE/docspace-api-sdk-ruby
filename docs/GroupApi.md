# DocspaceApiSdk::GroupApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_group**](GroupApi.md#add_group) | **POST** /api/2.0/group | Add a new group |
| [**add_members_to**](GroupApi.md#add_members_to) | **PUT** /api/2.0/group/{id}/members | Add group members |
| [**delete_group**](GroupApi.md#delete_group) | **DELETE** /api/2.0/group/{id} | Delete a group |
| [**get_group**](GroupApi.md#get_group) | **GET** /api/2.0/group/{id} | Get a group |
| [**get_group_by_user_id**](GroupApi.md#get_group_by_user_id) | **GET** /api/2.0/group/user/{userid} | Get user groups |
| [**get_groups**](GroupApi.md#get_groups) | **GET** /api/2.0/group | Get groups |
| [**move_members_to**](GroupApi.md#move_members_to) | **PUT** /api/2.0/group/{fromId}/members/{toId} | Move group members |
| [**remove_members_from**](GroupApi.md#remove_members_from) | **DELETE** /api/2.0/group/{id}/members | Remove group members |
| [**set_group_manager**](GroupApi.md#set_group_manager) | **PUT** /api/2.0/group/{id}/manager | Set a group manager |
| [**set_members_to**](GroupApi.md#set_members_to) | **POST** /api/2.0/group/{id}/members | Replace group members |
| [**update_group**](GroupApi.md#update_group) | **PUT** /api/2.0/group/{id} | Update a group |


## add_group

> <GroupWrapper> add_group(opts)

Add a new group

Adds a new group with the group manager, name, and members specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-group/).

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

api_instance = DocspaceApiSdk::Group::GroupApi.new
opts = {
  group_request_dto: DocspaceApiSdk::GroupRequestDto.new({group_name: 'Marketing Team'}) # GroupRequestDto | 
}

begin
  # Add a new group
  result = api_instance.add_group(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->add_group: #{e}"
end
```

#### Using the add_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupWrapper>, Integer, Hash)> add_group_with_http_info(opts)

```ruby
begin
  # Add a new group
  data, status_code, headers = api_instance.add_group_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->add_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_request_dto** | [**GroupRequestDto**](GroupRequestDto.md) |  | [optional] |

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_members_to

> <GroupWrapper> add_members_to(id, members_request)

Add group members

Adds new group members to the group with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/add-members-to/).

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

api_instance = DocspaceApiSdk::Group::GroupApi.new
id = '00000000-0000-0000-0000-000000000000' # String | The group ID.
members_request = DocspaceApiSdk::MembersRequest.new # MembersRequest | The member request.

begin
  # Add group members
  result = api_instance.add_members_to(id, members_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->add_members_to: #{e}"
end
```

#### Using the add_members_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupWrapper>, Integer, Hash)> add_members_to_with_http_info(id, members_request)

```ruby
begin
  # Add group members
  data, status_code, headers = api_instance.add_members_to_with_http_info(id, members_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->add_members_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The group ID. |  |
| **members_request** | [**MembersRequest**](MembersRequest.md) | The member request. |  |

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_group

> <NoContentResultWrapper> delete_group(id)

Delete a group

Deletes a group with the ID specified in the request from the list of groups on the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/delete-group/).

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

api_instance = DocspaceApiSdk::Group::GroupApi.new
id = '00000000-0000-0000-0000-000000000000' # String | The group ID.

begin
  # Delete a group
  result = api_instance.delete_group(id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->delete_group: #{e}"
end
```

#### Using the delete_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoContentResultWrapper>, Integer, Hash)> delete_group_with_http_info(id)

```ruby
begin
  # Delete a group
  data, status_code, headers = api_instance.delete_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoContentResultWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->delete_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The group ID. |  |

### Return type

[**NoContentResultWrapper**](NoContentResultWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group

> <GroupWrapper> get_group(id, opts)

Get a group

Returns the detailed information about the selected group.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group/).

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

api_instance = DocspaceApiSdk::Group::GroupApi.new
id = '00000000-0000-0000-0000-000000000000' # String | The group ID.
opts = {
  include_members: true # Boolean | Specifies whether to include the group members or not.
}

begin
  # Get a group
  result = api_instance.get_group(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->get_group: #{e}"
end
```

#### Using the get_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupWrapper>, Integer, Hash)> get_group_with_http_info(id, opts)

```ruby
begin
  # Get a group
  data, status_code, headers = api_instance.get_group_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->get_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The group ID. |  |
| **include_members** | **Boolean** | Specifies whether to include the group members or not. | [optional] |

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group_by_user_id

> <GroupSummaryArrayWrapper> get_group_by_user_id(userid)

Get user groups

Returns a list of groups for the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-group-by-user-id/).

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

api_instance = DocspaceApiSdk::Group::GroupApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID.

begin
  # Get user groups
  result = api_instance.get_group_by_user_id(userid)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->get_group_by_user_id: #{e}"
end
```

#### Using the get_group_by_user_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupSummaryArrayWrapper>, Integer, Hash)> get_group_by_user_id_with_http_info(userid)

```ruby
begin
  # Get user groups
  data, status_code, headers = api_instance.get_group_by_user_id_with_http_info(userid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupSummaryArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->get_group_by_user_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **userid** | **String** | The user ID. |  |

### Return type

[**GroupSummaryArrayWrapper**](GroupSummaryArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_groups

> <GroupArrayWrapper> get_groups(opts)

Get groups

Returns the general information about all the groups, such as group ID and group manager.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-groups/).

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

api_instance = DocspaceApiSdk::Group::GroupApi.new
opts = {
  user_id: '00000000-0000-0000-0000-000000000000', # String | The user ID.
  manager: false, # Boolean | Specifies if the user is a manager or not.
  count: 25, # Integer | The number of records to retrieve.
  start_index: 0, # Integer | The starting index for paginated results.
  sort_by: 'displayName', # String | Specifies the property used to sort the query results.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The order in which the results are sorted.
  filter_value: 'John' # String | The text used for filtering or searching group data.
}

begin
  # Get groups
  result = api_instance.get_groups(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->get_groups: #{e}"
end
```

#### Using the get_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupArrayWrapper>, Integer, Hash)> get_groups_with_http_info(opts)

```ruby
begin
  # Get groups
  data, status_code, headers = api_instance.get_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->get_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The user ID. | [optional] |
| **manager** | **Boolean** | Specifies if the user is a manager or not. | [optional] |
| **count** | **Integer** | The number of records to retrieve. | [optional] |
| **start_index** | **Integer** | The starting index for paginated results. | [optional] |
| **sort_by** | **String** | Specifies the property used to sort the query results. | [optional] |
| **sort_order** | **SortOrder** | The order in which the results are sorted. | [optional] |
| **filter_value** | **String** | The text used for filtering or searching group data. | [optional] |

### Return type

[**GroupArrayWrapper**](GroupArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## move_members_to

> <GroupWrapper> move_members_to(from_id, to_id)

Move group members

Moves all the members from the selected group to another one specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/move-members-to/).

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

api_instance = DocspaceApiSdk::Group::GroupApi.new
from_id = '00000000-0000-0000-0000-000000000000' # String | The group ID to move from.
to_id = '11111111-1111-1111-1111-111111111111' # String | The group ID to move to.

begin
  # Move group members
  result = api_instance.move_members_to(from_id, to_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->move_members_to: #{e}"
end
```

#### Using the move_members_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupWrapper>, Integer, Hash)> move_members_to_with_http_info(from_id, to_id)

```ruby
begin
  # Move group members
  data, status_code, headers = api_instance.move_members_to_with_http_info(from_id, to_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->move_members_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_id** | **String** | The group ID to move from. |  |
| **to_id** | **String** | The group ID to move to. |  |

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_members_from

> <GroupWrapper> remove_members_from(id, members_request)

Remove group members

Removes the group members specified in the request from the selected group.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/remove-members-from/).

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

api_instance = DocspaceApiSdk::Group::GroupApi.new
id = '00000000-0000-0000-0000-000000000000' # String | The group ID.
members_request = DocspaceApiSdk::MembersRequest.new # MembersRequest | The member request.

begin
  # Remove group members
  result = api_instance.remove_members_from(id, members_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->remove_members_from: #{e}"
end
```

#### Using the remove_members_from_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupWrapper>, Integer, Hash)> remove_members_from_with_http_info(id, members_request)

```ruby
begin
  # Remove group members
  data, status_code, headers = api_instance.remove_members_from_with_http_info(id, members_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->remove_members_from_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The group ID. |  |
| **members_request** | [**MembersRequest**](MembersRequest.md) | The member request. |  |

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_group_manager

> <GroupWrapper> set_group_manager(id, set_manager_request)

Set a group manager

Sets a user with the ID specified in the request as a group manager.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-group-manager/).

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

api_instance = DocspaceApiSdk::Group::GroupApi.new
id = '00000000-0000-0000-0000-000000000000' # String | The group ID.
set_manager_request = DocspaceApiSdk::SetManagerRequest.new({user_id: '00000000-0000-0000-0000-000000000000'}) # SetManagerRequest | The request for setting a group manager.

begin
  # Set a group manager
  result = api_instance.set_group_manager(id, set_manager_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->set_group_manager: #{e}"
end
```

#### Using the set_group_manager_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupWrapper>, Integer, Hash)> set_group_manager_with_http_info(id, set_manager_request)

```ruby
begin
  # Set a group manager
  data, status_code, headers = api_instance.set_group_manager_with_http_info(id, set_manager_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->set_group_manager_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The group ID. |  |
| **set_manager_request** | [**SetManagerRequest**](SetManagerRequest.md) | The request for setting a group manager. |  |

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_members_to

> <GroupWrapper> set_members_to(id, members_request)

Replace group members

Replaces the group members with those specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-members-to/).

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

api_instance = DocspaceApiSdk::Group::GroupApi.new
id = '00000000-0000-0000-0000-000000000000' # String | The group ID.
members_request = DocspaceApiSdk::MembersRequest.new # MembersRequest | The member request.

begin
  # Replace group members
  result = api_instance.set_members_to(id, members_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->set_members_to: #{e}"
end
```

#### Using the set_members_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupWrapper>, Integer, Hash)> set_members_to_with_http_info(id, members_request)

```ruby
begin
  # Replace group members
  data, status_code, headers = api_instance.set_members_to_with_http_info(id, members_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->set_members_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The group ID. |  |
| **members_request** | [**MembersRequest**](MembersRequest.md) | The member request. |  |

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_group

> <GroupWrapper> update_group(id, update_group_request)

Update a group

Updates the existing group changing the group manager, name, and/or members.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-group/).

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

api_instance = DocspaceApiSdk::Group::GroupApi.new
id = '00000000-0000-0000-0000-000000000000' # String | The group ID.
update_group_request = DocspaceApiSdk::UpdateGroupRequest.new # UpdateGroupRequest | The request for updating a group.

begin
  # Update a group
  result = api_instance.update_group(id, update_group_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->update_group: #{e}"
end
```

#### Using the update_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupWrapper>, Integer, Hash)> update_group_with_http_info(id, update_group_request)

```ruby
begin
  # Update a group
  data, status_code, headers = api_instance.update_group_with_http_info(id, update_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->update_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The group ID. |  |
| **update_group_request** | [**UpdateGroupRequest**](UpdateGroupRequest.md) | The request for updating a group. |  |

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

