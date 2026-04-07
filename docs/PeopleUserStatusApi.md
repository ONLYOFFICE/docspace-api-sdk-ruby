# DocspaceApiSdk::PeopleUserStatusApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_by_status**](PeopleUserStatusApi.md#get_by_status) | **GET** /api/2.0/people/status/{status} | Get profiles by status |
| [**update_user_activation_status**](PeopleUserStatusApi.md#update_user_activation_status) | **PUT** /api/2.0/people/activationstatus/{activationstatus} | Set an activation status to the users |
| [**update_user_status**](PeopleUserStatusApi.md#update_user_status) | **PUT** /api/2.0/people/status/{status} | Change a user status |


## get_by_status

> <EmployeeFullArrayWrapper> get_by_status(status, opts)

Get profiles by status

Returns a list of profiles filtered by the user status.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-by-status/).

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

api_instance = DocspaceApiSdk::People::UserStatusApi.new
status = DocspaceApiSdk::EmployeeStatus::Active # EmployeeStatus | The user status.
opts = {
  filter_by: 'displayName', # String | Specifies the criteria used to filter the profiles in the request.
  count: 25, # Integer | The maximum number of user profiles to retrieve.
  start_index: 0, # Integer | The starting index for retrieving data in a paginated request.
  sort_by: 'displayName', # String | Specifies the property or field name by which the results should be sorted.
  sort_order: DocspaceApiSdk::SortOrder::Ascending, # SortOrder | The order in which the results are sorted.
  filter_separator: ',', # String | Represents the separator used to split multiple filter criteria in a query string.
  filter_value: 'John' # String | A string value representing additional filter criteria used in query parameters.
}

begin
  # Get profiles by status
  result = api_instance.get_by_status(status, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserStatusApi->get_by_status: #{e}"
end
```

#### Using the get_by_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> get_by_status_with_http_info(status, opts)

```ruby
begin
  # Get profiles by status
  data, status_code, headers = api_instance.get_by_status_with_http_info(status, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserStatusApi->get_by_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **EmployeeStatus** | The user status. |  |
| **filter_by** | **String** | Specifies the criteria used to filter the profiles in the request. | [optional] |
| **count** | **Integer** | The maximum number of user profiles to retrieve. | [optional] |
| **start_index** | **Integer** | The starting index for retrieving data in a paginated request. | [optional] |
| **sort_by** | **String** | Specifies the property or field name by which the results should be sorted. | [optional] |
| **sort_order** | **SortOrder** | The order in which the results are sorted. | [optional] |
| **filter_separator** | **String** | Represents the separator used to split multiple filter criteria in a query string. | [optional] |
| **filter_value** | **String** | A string value representing additional filter criteria used in query parameters. | [optional] |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user_activation_status

> <EmployeeFullArrayWrapper> update_user_activation_status(activationstatus, update_members_request_dto)

Set an activation status to the users

Sets the required activation status to the list of users with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-activation-status/).

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

api_instance = DocspaceApiSdk::People::UserStatusApi.new
activationstatus = DocspaceApiSdk::EmployeeActivationStatus::NotActivated # EmployeeActivationStatus | The new user activation status.
update_members_request_dto = DocspaceApiSdk::UpdateMembersRequestDto.new # UpdateMembersRequestDto | The request parameters for updating the user information.

begin
  # Set an activation status to the users
  result = api_instance.update_user_activation_status(activationstatus, update_members_request_dto)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserStatusApi->update_user_activation_status: #{e}"
end
```

#### Using the update_user_activation_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> update_user_activation_status_with_http_info(activationstatus, update_members_request_dto)

```ruby
begin
  # Set an activation status to the users
  data, status_code, headers = api_instance.update_user_activation_status_with_http_info(activationstatus, update_members_request_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserStatusApi->update_user_activation_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activationstatus** | **EmployeeActivationStatus** | The new user activation status. |  |
| **update_members_request_dto** | [**UpdateMembersRequestDto**](UpdateMembersRequestDto.md) | The request parameters for updating the user information. |  |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user_status

> <EmployeeFullArrayWrapper> update_user_status(status, update_members_request_dto)

Change a user status

Changes a status of the users with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-status/).

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

api_instance = DocspaceApiSdk::People::UserStatusApi.new
status = DocspaceApiSdk::EmployeeStatus::Active # EmployeeStatus | The new user status.
update_members_request_dto = DocspaceApiSdk::UpdateMembersRequestDto.new # UpdateMembersRequestDto | The request parameters for updating the user information.

begin
  # Change a user status
  result = api_instance.update_user_status(status, update_members_request_dto)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserStatusApi->update_user_status: #{e}"
end
```

#### Using the update_user_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> update_user_status_with_http_info(status, update_members_request_dto)

```ruby
begin
  # Change a user status
  data, status_code, headers = api_instance.update_user_status_with_http_info(status, update_members_request_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserStatusApi->update_user_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **EmployeeStatus** | The new user status. |  |
| **update_members_request_dto** | [**UpdateMembersRequestDto**](UpdateMembersRequestDto.md) | The request parameters for updating the user information. |  |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

