# DocspaceApiSdk::PeopleUserTypeApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_user_type_update_progress**](PeopleUserTypeApi.md#get_user_type_update_progress) | **GET** /api/2.0/people/type/progress/{userid} | Get the progress of updating user type |
| [**start_user_type_update**](PeopleUserTypeApi.md#start_user_type_update) | **POST** /api/2.0/people/type | Start updating user type |
| [**terminate_user_type_update**](PeopleUserTypeApi.md#terminate_user_type_update) | **PUT** /api/2.0/people/type/terminate | Terminate updating user type |
| [**update_user_type**](PeopleUserTypeApi.md#update_user_type) | **PUT** /api/2.0/people/type/{type} | Change a user type |


## get_user_type_update_progress

> <TaskProgressResponseWrapper> get_user_type_update_progress(userid)

Get the progress of updating user type

Returns the progress of updating the user type.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-type-update-progress/).

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

api_instance = DocspaceApiSdk::People::UserTypeApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID.

begin
  # Get the progress of updating user type
  result = api_instance.get_user_type_update_progress(userid)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserTypeApi->get_user_type_update_progress: #{e}"
end
```

#### Using the get_user_type_update_progress_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskProgressResponseWrapper>, Integer, Hash)> get_user_type_update_progress_with_http_info(userid)

```ruby
begin
  # Get the progress of updating user type
  data, status_code, headers = api_instance.get_user_type_update_progress_with_http_info(userid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskProgressResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserTypeApi->get_user_type_update_progress_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **userid** | **String** | The user ID. |  |

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_user_type_update

> <TaskProgressResponseWrapper> start_user_type_update(opts)

Start updating user type

Starts updating the type of the user or guest when reassigning rooms and shared files.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-user-type-update/).

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

api_instance = DocspaceApiSdk::People::UserTypeApi.new
opts = {
  start_update_user_type_dto: DocspaceApiSdk::StartUpdateUserTypeDto.new # StartUpdateUserTypeDto | 
}

begin
  # Start updating user type
  result = api_instance.start_user_type_update(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserTypeApi->start_user_type_update: #{e}"
end
```

#### Using the start_user_type_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskProgressResponseWrapper>, Integer, Hash)> start_user_type_update_with_http_info(opts)

```ruby
begin
  # Start updating user type
  data, status_code, headers = api_instance.start_user_type_update_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskProgressResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserTypeApi->start_user_type_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_update_user_type_dto** | [**StartUpdateUserTypeDto**](StartUpdateUserTypeDto.md) |  | [optional] |

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## terminate_user_type_update

> <TaskProgressResponseWrapper> terminate_user_type_update(opts)

Terminate updating user type

Terminates the process of updating the type of the user or guest.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-user-type-update/).

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

api_instance = DocspaceApiSdk::People::UserTypeApi.new
opts = {
  terminate_request_dto: DocspaceApiSdk::TerminateRequestDto.new({user_id: '00000000-0000-0000-0000-000000000000'}) # TerminateRequestDto | 
}

begin
  # Terminate updating user type
  result = api_instance.terminate_user_type_update(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserTypeApi->terminate_user_type_update: #{e}"
end
```

#### Using the terminate_user_type_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskProgressResponseWrapper>, Integer, Hash)> terminate_user_type_update_with_http_info(opts)

```ruby
begin
  # Terminate updating user type
  data, status_code, headers = api_instance.terminate_user_type_update_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskProgressResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserTypeApi->terminate_user_type_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **terminate_request_dto** | [**TerminateRequestDto**](TerminateRequestDto.md) |  | [optional] |

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user_type

> <EmployeeFullArrayWrapper> update_user_type(type, update_members_request_dto)

Change a user type

Changes a type of the users with the IDs specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-user-type/).

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

api_instance = DocspaceApiSdk::People::UserTypeApi.new
type = DocspaceApiSdk::EmployeeType::ALL # EmployeeType | The new user type.
update_members_request_dto = DocspaceApiSdk::UpdateMembersRequestDto.new # UpdateMembersRequestDto | The request parameters for updating the user information.

begin
  # Change a user type
  result = api_instance.update_user_type(type, update_members_request_dto)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserTypeApi->update_user_type: #{e}"
end
```

#### Using the update_user_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullArrayWrapper>, Integer, Hash)> update_user_type_with_http_info(type, update_members_request_dto)

```ruby
begin
  # Change a user type
  data, status_code, headers = api_instance.update_user_type_with_http_info(type, update_members_request_dto)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserTypeApi->update_user_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **EmployeeType** | The new user type. |  |
| **update_members_request_dto** | [**UpdateMembersRequestDto**](UpdateMembersRequestDto.md) | The request parameters for updating the user information. |  |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

