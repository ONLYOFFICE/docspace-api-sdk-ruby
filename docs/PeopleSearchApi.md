# DocspaceApiSdk::PeopleSearchApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_accounts_entries_with_files_shared**](PeopleSearchApi.md#get_accounts_entries_with_files_shared) | **GET** /api/2.0/accounts/file/{id}/search | Get account entries with file sharing settings |
| [**get_accounts_entries_with_folders_shared**](PeopleSearchApi.md#get_accounts_entries_with_folders_shared) | **GET** /api/2.0/accounts/folder/{id}/search | Get account entries with folder sharing settings |
| [**get_accounts_entries_with_rooms_shared**](PeopleSearchApi.md#get_accounts_entries_with_rooms_shared) | **GET** /api/2.0/accounts/room/{id}/search | Get account entries |
| [**get_search**](PeopleSearchApi.md#get_search) | **GET** /api/2.0/people/@search/{query} | Search users |
| [**get_simple_by_filter**](PeopleSearchApi.md#get_simple_by_filter) | **GET** /api/2.0/people/simple/filter | Search users by extended filter |
| [**get_users_with_files_shared**](PeopleSearchApi.md#get_users_with_files_shared) | **GET** /api/2.0/people/file/{id} | Get users with file sharing settings |
| [**get_users_with_folders_shared**](PeopleSearchApi.md#get_users_with_folders_shared) | **GET** /api/2.0/people/folder/{id} | Get users with folder sharing settings |
| [**get_users_with_room_shared**](PeopleSearchApi.md#get_users_with_room_shared) | **GET** /api/2.0/people/room/{id} | Get users with room sharing settings |
| [**search_users_by_extended_filter**](PeopleSearchApi.md#search_users_by_extended_filter) | **GET** /api/2.0/people/filter | Search users with detailed information by extended filter |
| [**search_users_by_query**](PeopleSearchApi.md#search_users_by_query) | **GET** /api/2.0/people/search | Search users (using query parameters) |
| [**search_users_by_status**](PeopleSearchApi.md#search_users_by_status) | **GET** /api/2.0/people/status/{status}/search | Search users by status filter |


## get_accounts_entries_with_files_shared

> <ObjectArrayWrapper> get_accounts_entries_with_files_shared(id, opts)

Get account entries with file sharing settings

Returns the account entries with their sharing settings for a file with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-files-shared/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = 00000000-0000-0000-0000-000000000000 # Integer | The user ID.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | The user status.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | The user activation status.
  exclude_shared: false, # Boolean | Specifies whether to exclude the account sharing settings from the response.
  include_shared: false, # Boolean | Specifies whether to include the account sharing settings in the response.
  invited_by_me: false, # Boolean | Specifies whether the user is invited by the current user or not.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | The inviter ID.
  area: DocspaceApiSdk::Area::All, # Area | The area of the account entries.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | The list of the user types.
  count: 25, # Integer | The number of items to retrieve in a request.
  start_index: 0, # Integer | The starting index for the query results.
  filter_separator: ',', # String | Specifies the separator used in filter expressions.
  filter_value: 'John' # String | The text filter applied to the accounts search query.
}

begin
  # Get account entries with file sharing settings
  result = api_instance.get_accounts_entries_with_files_shared(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_files_shared: #{e}"
end
```

#### Using the get_accounts_entries_with_files_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectArrayWrapper>, Integer, Hash)> get_accounts_entries_with_files_shared_with_http_info(id, opts)

```ruby
begin
  # Get account entries with file sharing settings
  data, status_code, headers = api_instance.get_accounts_entries_with_files_shared_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_files_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The user ID. |  |
| **employee_status** | **EmployeeStatus** | The user status. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | The user activation status. | [optional] |
| **exclude_shared** | **Boolean** | Specifies whether to exclude the account sharing settings from the response. | [optional] |
| **include_shared** | **Boolean** | Specifies whether to include the account sharing settings in the response. | [optional] |
| **invited_by_me** | **Boolean** | Specifies whether the user is invited by the current user or not. | [optional] |
| **inviter_id** | **String** | The inviter ID. | [optional] |
| **area** | **Area** | The area of the account entries. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | The list of the user types. | [optional] |
| **count** | **Integer** | The number of items to retrieve in a request. | [optional] |
| **start_index** | **Integer** | The starting index for the query results. | [optional] |
| **filter_separator** | **String** | Specifies the separator used in filter expressions. | [optional] |
| **filter_value** | **String** | The text filter applied to the accounts search query. | [optional] |

### Return type

[**ObjectArrayWrapper**](ObjectArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts_entries_with_folders_shared

> <ObjectArrayWrapper> get_accounts_entries_with_folders_shared(id, opts)

Get account entries with folder sharing settings

Returns the account entries with their sharing settings in a folder with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-folders-shared/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = 00000000-0000-0000-0000-000000000000 # Integer | The user ID.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | The user status.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | The user activation status.
  exclude_shared: false, # Boolean | Specifies whether to exclude the account sharing settings from the response.
  include_shared: false, # Boolean | Specifies whether to include the account sharing settings in the response.
  invited_by_me: false, # Boolean | Specifies whether the user is invited by the current user or not.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | The inviter ID.
  area: DocspaceApiSdk::Area::All, # Area | The area of the account entries.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | The list of the user types.
  count: 25, # Integer | The number of items to retrieve in a request.
  start_index: 0, # Integer | The starting index for the query results.
  filter_separator: ',', # String | Specifies the separator used in filter expressions.
  filter_value: 'John' # String | The text filter applied to the accounts search query.
}

begin
  # Get account entries with folder sharing settings
  result = api_instance.get_accounts_entries_with_folders_shared(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_folders_shared: #{e}"
end
```

#### Using the get_accounts_entries_with_folders_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectArrayWrapper>, Integer, Hash)> get_accounts_entries_with_folders_shared_with_http_info(id, opts)

```ruby
begin
  # Get account entries with folder sharing settings
  data, status_code, headers = api_instance.get_accounts_entries_with_folders_shared_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_folders_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The user ID. |  |
| **employee_status** | **EmployeeStatus** | The user status. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | The user activation status. | [optional] |
| **exclude_shared** | **Boolean** | Specifies whether to exclude the account sharing settings from the response. | [optional] |
| **include_shared** | **Boolean** | Specifies whether to include the account sharing settings in the response. | [optional] |
| **invited_by_me** | **Boolean** | Specifies whether the user is invited by the current user or not. | [optional] |
| **inviter_id** | **String** | The inviter ID. | [optional] |
| **area** | **Area** | The area of the account entries. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | The list of the user types. | [optional] |
| **count** | **Integer** | The number of items to retrieve in a request. | [optional] |
| **start_index** | **Integer** | The starting index for the query results. | [optional] |
| **filter_separator** | **String** | Specifies the separator used in filter expressions. | [optional] |
| **filter_value** | **String** | The text filter applied to the accounts search query. | [optional] |

### Return type

[**ObjectArrayWrapper**](ObjectArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounts_entries_with_rooms_shared

> <ObjectArrayWrapper> get_accounts_entries_with_rooms_shared(id, opts)

Get account entries

Returns the account entries with their sharing settings in a room with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounts-entries-with-rooms-shared/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = 00000000-0000-0000-0000-000000000000 # Integer | The user ID.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | The user status.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | The user activation status.
  exclude_shared: false, # Boolean | Specifies whether to exclude the account sharing settings from the response.
  include_shared: false, # Boolean | Specifies whether to include the account sharing settings in the response.
  invited_by_me: false, # Boolean | Specifies whether the user is invited by the current user or not.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | The inviter ID.
  area: DocspaceApiSdk::Area::All, # Area | The area of the account entries.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | The list of the user types.
  count: 25, # Integer | The number of items to retrieve in a request.
  start_index: 0, # Integer | The starting index for the query results.
  filter_separator: ',', # String | Specifies the separator used in filter expressions.
  filter_value: 'John' # String | The text filter applied to the accounts search query.
}

begin
  # Get account entries
  result = api_instance.get_accounts_entries_with_rooms_shared(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_rooms_shared: #{e}"
end
```

#### Using the get_accounts_entries_with_rooms_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectArrayWrapper>, Integer, Hash)> get_accounts_entries_with_rooms_shared_with_http_info(id, opts)

```ruby
begin
  # Get account entries
  data, status_code, headers = api_instance.get_accounts_entries_with_rooms_shared_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_accounts_entries_with_rooms_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The user ID. |  |
| **employee_status** | **EmployeeStatus** | The user status. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | The user activation status. | [optional] |
| **exclude_shared** | **Boolean** | Specifies whether to exclude the account sharing settings from the response. | [optional] |
| **include_shared** | **Boolean** | Specifies whether to include the account sharing settings in the response. | [optional] |
| **invited_by_me** | **Boolean** | Specifies whether the user is invited by the current user or not. | [optional] |
| **inviter_id** | **String** | The inviter ID. | [optional] |
| **area** | **Area** | The area of the account entries. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | The list of the user types. | [optional] |
| **count** | **Integer** | The number of items to retrieve in a request. | [optional] |
| **start_index** | **Integer** | The starting index for the query results. | [optional] |
| **filter_separator** | **String** | Specifies the separator used in filter expressions. | [optional] |
| **filter_value** | **String** | The text filter applied to the accounts search query. | [optional] |

### Return type

[**ObjectArrayWrapper**](ObjectArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_search

> <EmployeeFullArrayWrapper> get_search(query, opts)

Search users

Returns a list of users matching the search query.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-search/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
query = 'John' # String | The search query.
opts = {
  filter_by: 'displayName', # String | Specifies a filter criteria for the user search query.
  filter_value: 'John' # String | The value used for filtering users, allowing additional constraints for the query.
}

begin
  # Search users
  result = api_instance.get_search(query, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_search: #{e}"
end
```

#### Using the get_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> get_search_with_http_info(query, opts)

```ruby
begin
  # Search users
  data, status_code, headers = api_instance.get_search_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. |  |
| **filter_by** | **String** | Specifies a filter criteria for the user search query. | [optional] |
| **filter_value** | **String** | The value used for filtering users, allowing additional constraints for the query. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_simple_by_filter

> <EmployeeArrayWrapper> get_simple_by_filter(opts)

Search users by extended filter

Returns a list of users matching the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-simple-by-filter/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | The user status.
  group_id: '00000000-0000-0000-0000-000000000000', # String | The group ID.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | The user activation status.
  employee_type: DocspaceApiSdk::EmployeeType::ALL, # EmployeeType | The user type.
  employee_types: [0], # Array<Integer> | The list of user types.
  is_administrator: false, # Boolean | Specifies if the user is an administrator or not.
  payments: DocspaceApiSdk::Payments::Paid, # Payments | The user payment status.
  account_login_type: DocspaceApiSdk::AccountLoginType::SSO, # AccountLoginType | The account login type.
  quota_filter: DocspaceApiSdk::QuotaFilter::All, # QuotaFilter | The quota filter (All - 0, Default - 1, Custom - 2).
  without_group: false, # Boolean | Specifies whether the user should be a member of a group or not.
  exclude_group: false, # Boolean | Specifies whether the user should be a member of the group with the specified ID.
  invited_by_me: false, # Boolean | Specifies whether the user is invited by the current user or not.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | The inviter ID.
  area: DocspaceApiSdk::Area::All, # Area | The filter area.
  count: 25, # Integer | The maximum number of items to be retrieved in the response.
  start_index: 0, # Integer | The zero-based index of the first item to be retrieved in a filtered result set.
  sort_by: 'displayName', # String | Specifies the property or field name by which the results should be sorted.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The order in which the results are sorted.
  filter_separator: ',', # String | Represents the separator used to split filter criteria in query parameters.
  filter_value: 'John' # String | The search text used to filter results based on user input.
}

begin
  # Search users by extended filter
  result = api_instance.get_simple_by_filter(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_simple_by_filter: #{e}"
end
```

#### Using the get_simple_by_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeArrayWrapper>, Integer, Hash)> get_simple_by_filter_with_http_info(opts)

```ruby
begin
  # Search users by extended filter
  data, status_code, headers = api_instance.get_simple_by_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_simple_by_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_status** | **EmployeeStatus** | The user status. | [optional] |
| **group_id** | **String** | The group ID. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | The user activation status. | [optional] |
| **employee_type** | **EmployeeType** | The user type. | [optional] |
| **employee_types** | [**Array&lt;Integer&gt;**](Integer.md) | The list of user types. | [optional] |
| **is_administrator** | **Boolean** | Specifies if the user is an administrator or not. | [optional] |
| **payments** | **Payments** | The user payment status. | [optional] |
| **account_login_type** | **AccountLoginType** | The account login type. | [optional] |
| **quota_filter** | **QuotaFilter** | The quota filter (All - 0, Default - 1, Custom - 2). | [optional] |
| **without_group** | **Boolean** | Specifies whether the user should be a member of a group or not. | [optional] |
| **exclude_group** | **Boolean** | Specifies whether the user should be a member of the group with the specified ID. | [optional] |
| **invited_by_me** | **Boolean** | Specifies whether the user is invited by the current user or not. | [optional] |
| **inviter_id** | **String** | The inviter ID. | [optional] |
| **area** | **Area** | The filter area. | [optional] |
| **count** | **Integer** | The maximum number of items to be retrieved in the response. | [optional] |
| **start_index** | **Integer** | The zero-based index of the first item to be retrieved in a filtered result set. | [optional] |
| **sort_by** | **String** | Specifies the property or field name by which the results should be sorted. | [optional] |
| **sort_order** | **SortOrder** | The order in which the results are sorted. | [optional] |
| **filter_separator** | **String** | Represents the separator used to split filter criteria in query parameters. | [optional] |
| **filter_value** | **String** | The search text used to filter results based on user input. | [optional] |

### Return type

[**EmployeeArrayWrapper**](EmployeeArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users_with_files_shared

> <EmployeeFullArrayWrapper> get_users_with_files_shared(id, opts)

Get users with file sharing settings

Returns the users with the sharing settings in a file with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-files-shared/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = 00000000-0000-0000-0000-000000000000 # Integer | The user ID.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | The user status.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | The user activation status.
  exclude_shared: false, # Boolean | Specifies whether to exclude the user sharing settings or not.
  include_shared: false, # Boolean | Specifies whether to include the user sharing settings or not.
  invited_by_me: false, # Boolean | Specifies whether the user was invited by the current user or not.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | The inviter ID.
  area: DocspaceApiSdk::Area::All, # Area | The user area.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | The list of user types.
  count: 25, # Integer | The maximum number of users to be retrieved in the request.
  start_index: 0, # Integer | The zero-based index of the first record to retrieve in a paged query.
  filter_separator: ',', # String | The character or string used to separate multiple filter values in a filtering query.
  filter_value: 'John' # String | The filter text value used for searching or filtering user results.
}

begin
  # Get users with file sharing settings
  result = api_instance.get_users_with_files_shared(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_files_shared: #{e}"
end
```

#### Using the get_users_with_files_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> get_users_with_files_shared_with_http_info(id, opts)

```ruby
begin
  # Get users with file sharing settings
  data, status_code, headers = api_instance.get_users_with_files_shared_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_files_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The user ID. |  |
| **employee_status** | **EmployeeStatus** | The user status. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | The user activation status. | [optional] |
| **exclude_shared** | **Boolean** | Specifies whether to exclude the user sharing settings or not. | [optional] |
| **include_shared** | **Boolean** | Specifies whether to include the user sharing settings or not. | [optional] |
| **invited_by_me** | **Boolean** | Specifies whether the user was invited by the current user or not. | [optional] |
| **inviter_id** | **String** | The inviter ID. | [optional] |
| **area** | **Area** | The user area. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | The list of user types. | [optional] |
| **count** | **Integer** | The maximum number of users to be retrieved in the request. | [optional] |
| **start_index** | **Integer** | The zero-based index of the first record to retrieve in a paged query. | [optional] |
| **filter_separator** | **String** | The character or string used to separate multiple filter values in a filtering query. | [optional] |
| **filter_value** | **String** | The filter text value used for searching or filtering user results. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users_with_folders_shared

> <EmployeeFullArrayWrapper> get_users_with_folders_shared(id, opts)

Get users with folder sharing settings

Returns the users with the sharing settings in a folder with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-folders-shared/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = 00000000-0000-0000-0000-000000000000 # Integer | The user ID.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | The user status.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | The user activation status.
  exclude_shared: false, # Boolean | Specifies whether to exclude the user sharing settings or not.
  include_shared: false, # Boolean | Specifies whether to include the user sharing settings or not.
  invited_by_me: false, # Boolean | Specifies whether the user was invited by the current user or not.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | The inviter ID.
  area: DocspaceApiSdk::Area::All, # Area | The user area.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | The list of user types.
  count: 25, # Integer | The maximum number of users to be retrieved in the request.
  start_index: 0, # Integer | The zero-based index of the first record to retrieve in a paged query.
  filter_separator: ',', # String | The character or string used to separate multiple filter values in a filtering query.
  filter_value: 'John' # String | The filter text value used for searching or filtering user results.
}

begin
  # Get users with folder sharing settings
  result = api_instance.get_users_with_folders_shared(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_folders_shared: #{e}"
end
```

#### Using the get_users_with_folders_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> get_users_with_folders_shared_with_http_info(id, opts)

```ruby
begin
  # Get users with folder sharing settings
  data, status_code, headers = api_instance.get_users_with_folders_shared_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_folders_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The user ID. |  |
| **employee_status** | **EmployeeStatus** | The user status. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | The user activation status. | [optional] |
| **exclude_shared** | **Boolean** | Specifies whether to exclude the user sharing settings or not. | [optional] |
| **include_shared** | **Boolean** | Specifies whether to include the user sharing settings or not. | [optional] |
| **invited_by_me** | **Boolean** | Specifies whether the user was invited by the current user or not. | [optional] |
| **inviter_id** | **String** | The inviter ID. | [optional] |
| **area** | **Area** | The user area. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | The list of user types. | [optional] |
| **count** | **Integer** | The maximum number of users to be retrieved in the request. | [optional] |
| **start_index** | **Integer** | The zero-based index of the first record to retrieve in a paged query. | [optional] |
| **filter_separator** | **String** | The character or string used to separate multiple filter values in a filtering query. | [optional] |
| **filter_value** | **String** | The filter text value used for searching or filtering user results. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users_with_room_shared

> <EmployeeFullArrayWrapper> get_users_with_room_shared(id, opts)

Get users with room sharing settings

Returns the users with the sharing settings in a room with the ID specified in request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-users-with-room-shared/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
id = 00000000-0000-0000-0000-000000000000 # Integer | The user ID.
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | The user status.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | The user activation status.
  exclude_shared: false, # Boolean | Specifies whether to exclude the user sharing settings or not.
  include_shared: false, # Boolean | Specifies whether to include the user sharing settings or not.
  invited_by_me: false, # Boolean | Specifies whether the user was invited by the current user or not.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | The inviter ID.
  area: DocspaceApiSdk::Area::All, # Area | The user area.
  employee_types: [DocspaceApiSdk::EmployeeType::ALL], # Array<EmployeeType> | The list of user types.
  count: 25, # Integer | The maximum number of users to be retrieved in the request.
  start_index: 0, # Integer | The zero-based index of the first record to retrieve in a paged query.
  filter_separator: ',', # String | The character or string used to separate multiple filter values in a filtering query.
  filter_value: 'John' # String | The filter text value used for searching or filtering user results.
}

begin
  # Get users with room sharing settings
  result = api_instance.get_users_with_room_shared(id, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_room_shared: #{e}"
end
```

#### Using the get_users_with_room_shared_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> get_users_with_room_shared_with_http_info(id, opts)

```ruby
begin
  # Get users with room sharing settings
  data, status_code, headers = api_instance.get_users_with_room_shared_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->get_users_with_room_shared_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The user ID. |  |
| **employee_status** | **EmployeeStatus** | The user status. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | The user activation status. | [optional] |
| **exclude_shared** | **Boolean** | Specifies whether to exclude the user sharing settings or not. | [optional] |
| **include_shared** | **Boolean** | Specifies whether to include the user sharing settings or not. | [optional] |
| **invited_by_me** | **Boolean** | Specifies whether the user was invited by the current user or not. | [optional] |
| **inviter_id** | **String** | The inviter ID. | [optional] |
| **area** | **Area** | The user area. | [optional] |
| **employee_types** | [**Array&lt;EmployeeType&gt;**](EmployeeType.md) | The list of user types. | [optional] |
| **count** | **Integer** | The maximum number of users to be retrieved in the request. | [optional] |
| **start_index** | **Integer** | The zero-based index of the first record to retrieve in a paged query. | [optional] |
| **filter_separator** | **String** | The character or string used to separate multiple filter values in a filtering query. | [optional] |
| **filter_value** | **String** | The filter text value used for searching or filtering user results. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_users_by_extended_filter

> <EmployeeFullArrayWrapper> search_users_by_extended_filter(opts)

Search users with detailed information by extended filter

Returns a list of users with full information about them matching the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-extended-filter/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
opts = {
  employee_status: DocspaceApiSdk::EmployeeStatus::Active, # EmployeeStatus | The user status.
  group_id: '00000000-0000-0000-0000-000000000000', # String | The group ID.
  activation_status: DocspaceApiSdk::EmployeeActivationStatus::NotActivated, # EmployeeActivationStatus | The user activation status.
  employee_type: DocspaceApiSdk::EmployeeType::ALL, # EmployeeType | The user type.
  employee_types: [0], # Array<Integer> | The list of user types.
  is_administrator: false, # Boolean | Specifies if the user is an administrator or not.
  payments: DocspaceApiSdk::Payments::Paid, # Payments | The user payment status.
  account_login_type: DocspaceApiSdk::AccountLoginType::SSO, # AccountLoginType | The account login type.
  quota_filter: DocspaceApiSdk::QuotaFilter::All, # QuotaFilter | The quota filter (All - 0, Default - 1, Custom - 2).
  without_group: false, # Boolean | Specifies whether the user should be a member of a group or not.
  exclude_group: false, # Boolean | Specifies whether the user should be a member of the group with the specified ID.
  invited_by_me: false, # Boolean | Specifies whether the user is invited by the current user or not.
  inviter_id: '00000000-0000-0000-0000-000000000000', # String | The inviter ID.
  area: DocspaceApiSdk::Area::All, # Area | The filter area.
  count: 25, # Integer | The maximum number of items to be retrieved in the response.
  start_index: 0, # Integer | The zero-based index of the first item to be retrieved in a filtered result set.
  sort_by: 'displayName', # String | Specifies the property or field name by which the results should be sorted.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The order in which the results are sorted.
  filter_separator: ',', # String | Represents the separator used to split filter criteria in query parameters.
  filter_value: 'John' # String | The search text used to filter results based on user input.
}

begin
  # Search users with detailed information by extended filter
  result = api_instance.search_users_by_extended_filter(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->search_users_by_extended_filter: #{e}"
end
```

#### Using the search_users_by_extended_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> search_users_by_extended_filter_with_http_info(opts)

```ruby
begin
  # Search users with detailed information by extended filter
  data, status_code, headers = api_instance.search_users_by_extended_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->search_users_by_extended_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_status** | **EmployeeStatus** | The user status. | [optional] |
| **group_id** | **String** | The group ID. | [optional] |
| **activation_status** | **EmployeeActivationStatus** | The user activation status. | [optional] |
| **employee_type** | **EmployeeType** | The user type. | [optional] |
| **employee_types** | [**Array&lt;Integer&gt;**](Integer.md) | The list of user types. | [optional] |
| **is_administrator** | **Boolean** | Specifies if the user is an administrator or not. | [optional] |
| **payments** | **Payments** | The user payment status. | [optional] |
| **account_login_type** | **AccountLoginType** | The account login type. | [optional] |
| **quota_filter** | **QuotaFilter** | The quota filter (All - 0, Default - 1, Custom - 2). | [optional] |
| **without_group** | **Boolean** | Specifies whether the user should be a member of a group or not. | [optional] |
| **exclude_group** | **Boolean** | Specifies whether the user should be a member of the group with the specified ID. | [optional] |
| **invited_by_me** | **Boolean** | Specifies whether the user is invited by the current user or not. | [optional] |
| **inviter_id** | **String** | The inviter ID. | [optional] |
| **area** | **Area** | The filter area. | [optional] |
| **count** | **Integer** | The maximum number of items to be retrieved in the response. | [optional] |
| **start_index** | **Integer** | The zero-based index of the first item to be retrieved in a filtered result set. | [optional] |
| **sort_by** | **String** | Specifies the property or field name by which the results should be sorted. | [optional] |
| **sort_order** | **SortOrder** | The order in which the results are sorted. | [optional] |
| **filter_separator** | **String** | Represents the separator used to split filter criteria in query parameters. | [optional] |
| **filter_value** | **String** | The search text used to filter results based on user input. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_users_by_query

> <EmployeeArrayWrapper> search_users_by_query(opts)

Search users (using query parameters)

Returns a list of users matching the search query. This method uses the query parameters.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-query/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
opts = {
  query: 'John' # String | The search query.
}

begin
  # Search users (using query parameters)
  result = api_instance.search_users_by_query(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->search_users_by_query: #{e}"
end
```

#### Using the search_users_by_query_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeArrayWrapper>, Integer, Hash)> search_users_by_query_with_http_info(opts)

```ruby
begin
  # Search users (using query parameters)
  data, status_code, headers = api_instance.search_users_by_query_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->search_users_by_query_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. | [optional] |

### Return type

[**EmployeeArrayWrapper**](EmployeeArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_users_by_status

> <EmployeeFullArrayWrapper> search_users_by_status(status, opts)

Search users by status filter

Returns a list of users matching the status filter and search query.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/search-users-by-status/).

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

api_instance = DocspaceApiSdk::People::SearchApi.new
status = DocspaceApiSdk::EmployeeStatus::Active # EmployeeStatus | The user status.
opts = {
  query: 'John', # String | The advanced search query.
  filter_by: 'displayName', # String | Specifies the criteria used to filter search results in advanced queries.
  filter_value: 'John' # String | The value used to filter the search query.
}

begin
  # Search users by status filter
  result = api_instance.search_users_by_status(status, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->search_users_by_status: #{e}"
end
```

#### Using the search_users_by_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> search_users_by_status_with_http_info(status, opts)

```ruby
begin
  # Search users by status filter
  data, status_code, headers = api_instance.search_users_by_status_with_http_info(status, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::SearchApi->search_users_by_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **EmployeeStatus** | The user status. |  |
| **query** | **String** | The advanced search query. | [optional] |
| **filter_by** | **String** | Specifies the criteria used to filter search results in advanced queries. | [optional] |
| **filter_value** | **String** | The value used to filter the search query. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

