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

Creates a group with the given name and, optionally, a manager and a first set of members.  The caller needs the permissions to edit groups and to add and remove users.  The name is required and cannot be blank, and unlike the operations that add members later, this one checks  every listed account upfront and rejects the whole call with 400 if any of them is unusable - a guest, a  disabled account or an ID that matches nobody.  The call is not idempotent: names are not unique, so repeating it creates a second group with the same name.  Creating a group raises a `GroupCreated` webhook, and the answer holds the new group with its members  included.  Members can be changed afterwards through `PUT api/2.0/group/{id}` or the dedicated member operations.

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

Adds the listed accounts to a group, keeping the members it already has.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  Accounts that cannot be group members - a guest, a disabled account or an ID that matches nobody - are  silently skipped instead of failing the call, so compare the members in the answer with what was sent to see  what was actually applied.  The call is idempotent for an account that is already a member, and it does not change who manages the group;  use `PUT api/2.0/group/{id}/manager` for that.  The answer is the group with its members after the addition.  To replace the whole list instead of extending it, use `POST api/2.0/group/{id}/members`.

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
id = '00000000-0000-0000-0000-000000000000' # String | The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.
members_request = DocspaceApiSdk::MembersRequest.new # MembersRequest | The accounts to add, replace with, or remove.

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
| **id** | **String** | The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404. |  |
| **members_request** | [**MembersRequest**](MembersRequest.md) | The accounts to add, replace with, or remove. |  |

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_group

> delete_group(id)

Delete a group

Deletes a group and withdraws the access it had been granted to rooms, folders and files.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  The removal is permanent and cannot be undone, and it affects sharing: everything that was shared with the  group loses that share, so members who had access only through this group lose it too.  The accounts themselves are kept - only their membership disappears.  The call answers 204 with no body and raises a `GroupDeleted` webhook; a second call with the same ID answers  404 rather than succeeding again.  To empty a group without deleting it, move its members away with  `PUT api/2.0/group/{fromId}/members/{toId}` or remove them through `DELETE api/2.0/group/{id}/members`.

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
id = '00000000-0000-0000-0000-000000000000' # String | The ID of the group to delete, taken from the route. It has to be a group that has not been deleted already,  otherwise the operation answers 404.

begin
  # Delete a group
  api_instance.delete_group(id)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->delete_group: #{e}"
end
```

#### Using the delete_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_with_http_info(id)

```ruby
begin
  # Delete a group
  data, status_code, headers = api_instance.delete_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Group::GroupApi->delete_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the group to delete, taken from the route. It has to be a group that has not been deleted already,  otherwise the operation answers 404. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group

> <GroupWrapper> get_group(id, opts)

Get a group

Returns one group by its ID, with its name, its manager and - when asked for - the accounts that belong to  it.  The caller needs the permission to read groups, and the ID has to belong to a group that has not been  deleted, otherwise the operation answers 404.  The call is read-only, and the member list is left out unless `includeMembers` is set to true, so ask for it  only when the members are actually needed.  Use `GET api/2.0/group` to look a group up by name or to page through them all.

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
id = '00000000-0000-0000-0000-000000000000' # String | The ID of the group to read, taken from the route. It has to be a group that has not been deleted, otherwise  the operation answers 404.
opts = {
  include_members: true # Boolean | Whether to fill in the member list of the group. It defaults to true, so set it to false when only the name  and the manager are needed and the group may be large.
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
| **id** | **String** | The ID of the group to read, taken from the route. It has to be a group that has not been deleted, otherwise  the operation answers 404. |  |
| **include_members** | **Boolean** | Whether to fill in the member list of the group. It defaults to true, so set it to false when only the name  and the manager are needed and the group may be large. | [optional] |

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

Returns every group the account with the ID in the route belongs to, as a flat list of ID and name pairs.  The caller needs the permission to read groups.  The call is read-only, is not paged, and answers an empty list both for an account that belongs to no group  and for an ID that matches no account, so an empty answer does not prove the account exists.  The entries are summaries and carry neither the manager nor the members - read `GET api/2.0/group/{id}` for  the full picture of one of them.

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
userid = '00000000-0000-0000-0000-000000000000' # String | The ID of the account whose groups are listed, taken from the route. An ID that matches no account yields an  empty list rather than 404.

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
| **userid** | **String** | The ID of the account whose groups are listed, taken from the route. An ID that matches no account yields an  empty list rather than 404. |  |

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

Returns the groups of the portal, one page at a time, with the summary information about each of them - the  ID, the name and the manager - but without the member list.  The caller needs the permission to read groups.  The call is read-only, and the number of groups that match the filters is reported in the total count of the  response, so a client can page through them with `count` and `startIndex`.  Narrow the result with `filterValue` on the group name, with `userId` to keep only the groups that account  belongs to, and with `manager` set to true to keep only the groups it manages; order it with `sortBy` and  `sortOrder`, and an unknown `sortBy` falls back to sorting by title.  The entries carry no members - read `GET api/2.0/group/{id}` with `includeMembers` for one group, or  `GET api/2.0/group/user/{userid}` to find the groups of a single account.

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
  user_id: '00000000-0000-0000-0000-000000000000', # String | Keeps only the groups the account with this ID takes part in. Omit it to search every group of the portal.
  manager: false, # Boolean | Narrows `userId` down to the groups that account manages, instead of every group it belongs to. It has no  effect on its own and defaults to false.
  count: 25, # Integer | The size of the page. It defaults to 100, which is also the largest value the operation accepts.
  start_index: 0, # Integer | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response.
  sort_by: 'Title', # String | What to order the groups by: `Title`, `Manager` or `MembersCount`, compared without regard to case. Any other  value, and omitting the field, orders by title.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The direction of the ordering: `Ascending`, which is the default, or `Descending`.
  filter_value: 'Marketing' # String | The text to match against the group name. Omit it to get every group.
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
| **user_id** | **String** | Keeps only the groups the account with this ID takes part in. Omit it to search every group of the portal. | [optional] |
| **manager** | **Boolean** | Narrows `userId` down to the groups that account manages, instead of every group it belongs to. It has no  effect on its own and defaults to false. | [optional] |
| **count** | **Integer** | The size of the page. It defaults to 100, which is also the largest value the operation accepts. | [optional] |
| **start_index** | **Integer** | The number of matching groups to skip before the page starts. It defaults to 0, and the total number of  matches is reported in the total count of the response. | [optional] |
| **sort_by** | **String** | What to order the groups by: `Title`, `Manager` or `MembersCount`, compared without regard to case. Any other  value, and omitting the field, orders by title. | [optional] |
| **sort_order** | **SortOrder** | The direction of the ordering: `Ascending`, which is the default, or `Descending`. | [optional] |
| **filter_value** | **String** | The text to match against the group name. Omit it to get every group. | [optional] |

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

Moves every member of one group into another group, emptying the first one.  The caller needs the permissions to edit groups and to add and remove users, and both IDs have to belong to  groups that have not been deleted, otherwise the operation answers 404.  The source group is kept, only without members, so delete it separately through  `DELETE api/2.0/group/{id}` if it is no longer needed.  Members that cannot be group members any more are silently skipped rather than failing the call, and an  account that already belongs to the destination is simply left there.  The answer is the destination group with its members, not the source one.  To move a chosen few instead of everybody, use `PUT api/2.0/group/{id}/members` and  `DELETE api/2.0/group/{id}/members`.

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
from_id = '00000000-0000-0000-0000-000000000000' # String | The ID of the group the members are taken from. It is emptied but not deleted, and it has to be a group that  has not been deleted already.
to_id = '11111111-1111-1111-1111-111111111111' # String | The ID of the group the members are moved into. It is the group the answer describes, and it has to be a  group that has not been deleted already.

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
| **from_id** | **String** | The ID of the group the members are taken from. It is emptied but not deleted, and it has to be a group that  has not been deleted already. |  |
| **to_id** | **String** | The ID of the group the members are moved into. It is the group the answer describes, and it has to be a  group that has not been deleted already. |  |

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

Removes the listed accounts from a group, leaving the rest of its members in place.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  The accounts themselves are kept; only their membership in this group ends, together with the access they had  through it.  The call is idempotent and forgiving: an ID that is not a member, and one that matches no account at all, are  both skipped without an error, and an empty list simply changes nothing.  The answer is the group with the members that remain.  Emptying a group cannot be done through `POST api/2.0/group/{id}/members`, which needs at least one valid  account, so list every member here, or move them away with `PUT api/2.0/group/{fromId}/members/{toId}`.

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
id = '00000000-0000-0000-0000-000000000000' # String | The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.
members_request = DocspaceApiSdk::MembersRequest.new # MembersRequest | The accounts to add, replace with, or remove.

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
| **id** | **String** | The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404. |  |
| **members_request** | [**MembersRequest**](MembersRequest.md) | The accounts to add, replace with, or remove. |  |

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

Makes an account the manager of a group, replacing whoever managed it before.  The caller needs the permissions to edit groups and to add and remove users.  Both the group and the account have to exist: the operation answers 404 when the ID in the route matches no  live group and also when `userId` matches no account, so the message of the error says which of the two was  not found.  The account is added to the group at the same time, so a manager does not have to be a member beforehand, and  the previous manager stays in the group as an ordinary member.  A group has one manager, which makes the call idempotent when it names the account that manages it already.  The answer is the group with its new manager.  To change the members rather than the manager, use `PUT api/2.0/group/{id}/members`.

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
id = '00000000-0000-0000-0000-000000000000' # String | The ID of the group whose manager is set, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.
set_manager_request = DocspaceApiSdk::SetManagerRequest.new({user_id: '00000000-0000-0000-0000-000000000000'}) # SetManagerRequest | The account to make the manager of the group.

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
| **id** | **String** | The ID of the group whose manager is set, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404. |  |
| **set_manager_request** | [**SetManagerRequest**](SetManagerRequest.md) | The account to make the manager of the group. |  |

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

Replaces the whole member list of a group with the accounts given in the request, removing everybody who is  not in that list.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  At least one of the listed accounts has to be usable as a group member, otherwise the call is rejected with  400 and the group is left untouched; the accounts that cannot be members - a guest, a disabled account or an  ID that matches nobody - are then silently skipped while the rest are applied.  The replacement is not atomic: the current members are removed first and the new ones added afterwards, so a  failure in between can leave the group empty.  The answer is the group with the members it ends up with, which is why it should be read instead of assuming  the request was applied verbatim.  To add or remove a few accounts without touching the others, use `PUT api/2.0/group/{id}/members` and  `DELETE api/2.0/group/{id}/members`.

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
id = '00000000-0000-0000-0000-000000000000' # String | The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404.
members_request = DocspaceApiSdk::MembersRequest.new # MembersRequest | The accounts to add, replace with, or remove.

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
| **id** | **String** | The ID of the group whose members are changed, taken from the route. It has to be a group that has not been  deleted, otherwise the operation answers 404. |  |
| **members_request** | [**MembersRequest**](MembersRequest.md) | The accounts to add, replace with, or remove. |  |

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

Changes the name and the manager of a group and adds or removes members, in one call.  The caller needs the permissions to edit groups and to add and remove users, and the ID has to belong to a  group that has not been deleted, otherwise the operation answers 404.  Every field is optional and the ones that are left out are kept: omitting `groupName` keeps the current name,  and omitting `groupManager` keeps the current manager rather than clearing it.  Accounts in `membersToAdd` that cannot be group members - a guest, a disabled account or an ID that matches  nobody - are silently skipped instead of failing the call, so compare the members in the answer with what was  sent to see what was actually applied.  Members are added first and removed afterwards, an account listed in both lists therefore ends up removed,  and removing an account that is not a member changes nothing.  The change raises a `GroupUpdated` webhook, and the answer holds the group as it is after the update.

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
id = '00000000-0000-0000-0000-000000000000' # String | The ID of the group to update, taken from the route. It has to be a group that has not been deleted,  otherwise the operation answers 404.
update_group_request = DocspaceApiSdk::UpdateGroupRequest.new # UpdateGroupRequest | The fields to change. Every field is optional and the ones that are left out keep their current values, so an  empty object changes nothing.

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
| **id** | **String** | The ID of the group to update, taken from the route. It has to be a group that has not been deleted,  otherwise the operation answers 404. |  |
| **update_group_request** | [**UpdateGroupRequest**](UpdateGroupRequest.md) | The fields to change. Every field is optional and the ones that are left out keep their current values, so an  empty object changes nothing. |  |

### Return type

[**GroupWrapper**](GroupWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

