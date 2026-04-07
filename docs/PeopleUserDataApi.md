# DocspaceApiSdk::PeopleUserDataApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_delete_personal_folder_progress**](PeopleUserDataApi.md#get_delete_personal_folder_progress) | **GET** /api/2.0/people/delete/personal/progress | Get the progress of deleting the personal folder |
| [**get_reassign_progress**](PeopleUserDataApi.md#get_reassign_progress) | **GET** /api/2.0/people/reassign/progress/{userid} | Get the reassignment progress |
| [**get_remove_progress**](PeopleUserDataApi.md#get_remove_progress) | **GET** /api/2.0/people/remove/progress/{userid} | Get the deletion progress |
| [**necessary_reassign**](PeopleUserDataApi.md#necessary_reassign) | **GET** /api/2.0/people/reassign/necessary | Check data for reassignment need |
| [**send_instructions_to_delete**](PeopleUserDataApi.md#send_instructions_to_delete) | **PUT** /api/2.0/people/self/delete | Send the deletion instructions |
| [**start_delete_personal_folder**](PeopleUserDataApi.md#start_delete_personal_folder) | **POST** /api/2.0/people/delete/personal/start | Delete the personal folder |
| [**start_reassign**](PeopleUserDataApi.md#start_reassign) | **POST** /api/2.0/people/reassign/start | Start the data reassignment |
| [**start_remove**](PeopleUserDataApi.md#start_remove) | **POST** /api/2.0/people/remove/start | Start the data deletion |
| [**terminate_reassign**](PeopleUserDataApi.md#terminate_reassign) | **PUT** /api/2.0/people/reassign/terminate | Terminate the data reassignment |
| [**terminate_remove**](PeopleUserDataApi.md#terminate_remove) | **PUT** /api/2.0/people/remove/terminate | Terminate the data deletion |


## get_delete_personal_folder_progress

> <TaskProgressResponseWrapper> get_delete_personal_folder_progress

Get the progress of deleting the personal folder

Returns the progress of deleting the personal folder.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-delete-personal-folder-progress/).

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

api_instance = DocspaceApiSdk::People::UserDataApi.new

begin
  # Get the progress of deleting the personal folder
  result = api_instance.get_delete_personal_folder_progress
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->get_delete_personal_folder_progress: #{e}"
end
```

#### Using the get_delete_personal_folder_progress_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskProgressResponseWrapper>, Integer, Hash)> get_delete_personal_folder_progress_with_http_info

```ruby
begin
  # Get the progress of deleting the personal folder
  data, status_code, headers = api_instance.get_delete_personal_folder_progress_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskProgressResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->get_delete_personal_folder_progress_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reassign_progress

> <TaskProgressResponseWrapper> get_reassign_progress(userid)

Get the reassignment progress

Returns the progress of the started data reassignment for the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-reassign-progress/).

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

api_instance = DocspaceApiSdk::People::UserDataApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID.

begin
  # Get the reassignment progress
  result = api_instance.get_reassign_progress(userid)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->get_reassign_progress: #{e}"
end
```

#### Using the get_reassign_progress_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskProgressResponseWrapper>, Integer, Hash)> get_reassign_progress_with_http_info(userid)

```ruby
begin
  # Get the reassignment progress
  data, status_code, headers = api_instance.get_reassign_progress_with_http_info(userid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskProgressResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->get_reassign_progress_with_http_info: #{e}"
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


## get_remove_progress

> <TaskProgressResponseWrapper> get_remove_progress(userid)

Get the deletion progress

Returns the progress of the started data deletion for the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-remove-progress/).

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

api_instance = DocspaceApiSdk::People::UserDataApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID.

begin
  # Get the deletion progress
  result = api_instance.get_remove_progress(userid)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->get_remove_progress: #{e}"
end
```

#### Using the get_remove_progress_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskProgressResponseWrapper>, Integer, Hash)> get_remove_progress_with_http_info(userid)

```ruby
begin
  # Get the deletion progress
  data, status_code, headers = api_instance.get_remove_progress_with_http_info(userid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskProgressResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->get_remove_progress_with_http_info: #{e}"
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


## necessary_reassign

> <BooleanWrapper> necessary_reassign(opts)

Check data for reassignment need

Checks whether the reassignment of rooms and shared files is required.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/necessary-reassign/).

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

api_instance = DocspaceApiSdk::People::UserDataApi.new
opts = {
  user_id: '00000000-0000-0000-0000-000000000000', # String | The user ID.
  type: DocspaceApiSdk::EmployeeType::ALL # EmployeeType | The expected user type.
}

begin
  # Check data for reassignment need
  result = api_instance.necessary_reassign(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->necessary_reassign: #{e}"
end
```

#### Using the necessary_reassign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> necessary_reassign_with_http_info(opts)

```ruby
begin
  # Check data for reassignment need
  data, status_code, headers = api_instance.necessary_reassign_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->necessary_reassign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The user ID. | [optional] |
| **type** | **EmployeeType** | The expected user type. | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_instructions_to_delete

> <StringWrapper> send_instructions_to_delete

Send the deletion instructions

Sends the instructions for deleting a user profile.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-instructions-to-delete/).

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

api_instance = DocspaceApiSdk::People::UserDataApi.new

begin
  # Send the deletion instructions
  result = api_instance.send_instructions_to_delete
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->send_instructions_to_delete: #{e}"
end
```

#### Using the send_instructions_to_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> send_instructions_to_delete_with_http_info

```ruby
begin
  # Send the deletion instructions
  data, status_code, headers = api_instance.send_instructions_to_delete_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->send_instructions_to_delete_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_delete_personal_folder

> <TaskProgressResponseWrapper> start_delete_personal_folder

Delete the personal folder

Starts deleting the personal folder.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-delete-personal-folder/).

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

api_instance = DocspaceApiSdk::People::UserDataApi.new

begin
  # Delete the personal folder
  result = api_instance.start_delete_personal_folder
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->start_delete_personal_folder: #{e}"
end
```

#### Using the start_delete_personal_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskProgressResponseWrapper>, Integer, Hash)> start_delete_personal_folder_with_http_info

```ruby
begin
  # Delete the personal folder
  data, status_code, headers = api_instance.start_delete_personal_folder_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskProgressResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->start_delete_personal_folder_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_reassign

> <TaskProgressResponseWrapper> start_reassign(opts)

Start the data reassignment

Starts the data reassignment for the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-reassign/).

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

api_instance = DocspaceApiSdk::People::UserDataApi.new
opts = {
  start_reassign_request_dto: DocspaceApiSdk::StartReassignRequestDto.new({from_user_id: '00000000-0000-0000-0000-000000000000', to_user_id: '11111111-1111-1111-1111-111111111111'}) # StartReassignRequestDto | 
}

begin
  # Start the data reassignment
  result = api_instance.start_reassign(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->start_reassign: #{e}"
end
```

#### Using the start_reassign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskProgressResponseWrapper>, Integer, Hash)> start_reassign_with_http_info(opts)

```ruby
begin
  # Start the data reassignment
  data, status_code, headers = api_instance.start_reassign_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskProgressResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->start_reassign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_reassign_request_dto** | [**StartReassignRequestDto**](StartReassignRequestDto.md) |  | [optional] |

### Return type

[**TaskProgressResponseWrapper**](TaskProgressResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start_remove

> <TaskProgressResponseWrapper> start_remove(opts)

Start the data deletion

Starts the data deletion for the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-remove/).

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

api_instance = DocspaceApiSdk::People::UserDataApi.new
opts = {
  terminate_request_dto: DocspaceApiSdk::TerminateRequestDto.new({user_id: '00000000-0000-0000-0000-000000000000'}) # TerminateRequestDto | 
}

begin
  # Start the data deletion
  result = api_instance.start_remove(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->start_remove: #{e}"
end
```

#### Using the start_remove_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskProgressResponseWrapper>, Integer, Hash)> start_remove_with_http_info(opts)

```ruby
begin
  # Start the data deletion
  data, status_code, headers = api_instance.start_remove_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskProgressResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->start_remove_with_http_info: #{e}"
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


## terminate_reassign

> <TaskProgressResponseWrapper> terminate_reassign(opts)

Terminate the data reassignment

Terminates the data reassignment for the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-reassign/).

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

api_instance = DocspaceApiSdk::People::UserDataApi.new
opts = {
  terminate_request_dto: DocspaceApiSdk::TerminateRequestDto.new({user_id: '00000000-0000-0000-0000-000000000000'}) # TerminateRequestDto | 
}

begin
  # Terminate the data reassignment
  result = api_instance.terminate_reassign(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->terminate_reassign: #{e}"
end
```

#### Using the terminate_reassign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskProgressResponseWrapper>, Integer, Hash)> terminate_reassign_with_http_info(opts)

```ruby
begin
  # Terminate the data reassignment
  data, status_code, headers = api_instance.terminate_reassign_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskProgressResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->terminate_reassign_with_http_info: #{e}"
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


## terminate_remove

> terminate_remove(opts)

Terminate the data deletion

Terminates the data deletion for the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-remove/).

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

api_instance = DocspaceApiSdk::People::UserDataApi.new
opts = {
  terminate_request_dto: DocspaceApiSdk::TerminateRequestDto.new({user_id: '00000000-0000-0000-0000-000000000000'}) # TerminateRequestDto | 
}

begin
  # Terminate the data deletion
  api_instance.terminate_remove(opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->terminate_remove: #{e}"
end
```

#### Using the terminate_remove_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> terminate_remove_with_http_info(opts)

```ruby
begin
  # Terminate the data deletion
  data, status_code, headers = api_instance.terminate_remove_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::UserDataApi->terminate_remove_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **terminate_request_dto** | [**TerminateRequestDto**](TerminateRequestDto.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

