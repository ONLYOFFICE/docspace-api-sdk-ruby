# DocspaceApiSdk::PeopleUserTypeApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_user_type_update_progress**](PeopleUserTypeApi.md#get_user_type_update_progress) | **GET** /api/2.0/people/type/progress/{userid} | Get the user type change progress |
| [**start_user_type_update**](PeopleUserTypeApi.md#start_user_type_update) | **POST** /api/2.0/people/type | Start updating user type |
| [**terminate_user_type_update**](PeopleUserTypeApi.md#terminate_user_type_update) | **PUT** /api/2.0/people/type/terminate | Terminate updating user type |
| [**update_user_type**](PeopleUserTypeApi.md#update_user_type) | **PUT** /api/2.0/people/type/{type} | Change a user type |


## get_user_type_update_progress

> <TaskProgressResponseWrapper> get_user_type_update_progress(userid)

Get the user type change progress

Returns the current state of the user type change queued for the user with the ID specified in the request.  A conversion must have been queued by `POST api/2.0/people/type` first: when nothing is queued for that user  the operation answers 200 with an empty body.  The caller needs the permission to add and remove users.  The call is read-only and is the polling operation of this flow - repeat it until `isCompleted` is true,  reading `percentage` for the 0 to 100 progress and `error` for the message left by a failed job.  Use `PUT api/2.0/people/type/terminate` to cancel a conversion that is still running.

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
userid = '00000000-0000-0000-0000-000000000000' # String | The ID of the user the operation applies to, taken from the route. For a progress operation it has to be the  same ID that was passed when the job was started.

begin
  # Get the user type change progress
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
  # Get the user type change progress
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
| **userid** | **String** | The ID of the user the operation applies to, taken from the route. For a progress operation it has to be the  same ID that was passed when the job was started. |  |

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

Queues an asynchronous job that converts one account to `Guest` or `User` and, in the same job, hands the  rooms and the shared files of that account over to another administrator.  Only `Guest` and `User` are accepted here, because they are the types that cannot own rooms; for any other  type use `PUT api/2.0/people/type/{type}`, which converts immediately and transfers nothing.  The caller needs the permission to add and remove users of the requested type, has to be the portal owner to  convert a DocSpace administrator, and converting to `Guest` also requires the portal to allow inviting guests.  The account being converted has to be active and cannot be the caller, and the recipient - `reassignUserId`,  or the caller when it is omitted - has to be an active room admin or DocSpace admin other than that account.  The conversion does not finish within this call: poll `GET api/2.0/people/type/progress/{userid}` with the  converted user ID until `isCompleted` is true, and cancel it through `PUT api/2.0/people/type/terminate`.  A failure inside the running job is reported in the `error` field of the progress, not as a status code here.

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

Cancels the user type change queued for the user with the ID specified in the request.  The caller needs the permission to add and remove users.  The operation is idempotent: when nothing is queued for that user it answers 200 with an empty body, and  repeating it on an already cancelled job changes nothing.  Cancelling removes the job from the queue and does not undo the type change or the transfers it has already  made, and a cancelled job cannot be resumed - start a new one through `POST api/2.0/people/type`.  The returned progress reports `status` as `Canceled` and `isCompleted` as true.

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

Changes the type of the existing portal users listed in `userIds` to the type given in the route, in one call.  The caller needs the permission to add and remove users of the requested type, cannot change their own type or  the type of the portal owner, and cannot use this operation at all while being a guest; changing somebody to  `Guest` additionally requires the portal to allow inviting guests.  Every listed account has to be visible to the caller and must not be disabled.  The change is applied immediately: each converted user gets a notification email and raises a `UserUpdated`  webhook, and the accounts are processed one by one, so a rejection in the middle leaves the users before it  already converted - re-read them before retrying.  The answer streams the converted users with their detailed information, in the order they were processed.  Converting somebody to a paid type takes a paid seat, so the operation answers 402 when the tariff or the  paid-user quota does not allow one more.  This operation only moves the type and leaves the rooms and the shared files of the account where they are -  to hand them over to another admin in the same step, use `POST api/2.0/people/type` instead.

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
type = DocspaceApiSdk::EmployeeType::ALL # EmployeeType | The type to convert the listed accounts to, taken from the route: `User`, `Guest`, `RoomAdmin` or  `DocSpaceAdmin`. `RoomAdmin` and `DocSpaceAdmin` take a paid seat.
update_members_request_dto = DocspaceApiSdk::UpdateMembersRequestDto.new # UpdateMembersRequestDto | The accounts to convert. Only `userIds` is read by this operation; `resendAll` belongs to the invitation  operations and is ignored here.

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
| **type** | **EmployeeType** | The type to convert the listed accounts to, taken from the route: `User`, `Guest`, `RoomAdmin` or  `DocSpaceAdmin`. `RoomAdmin` and `DocSpaceAdmin` take a paid seat. |  |
| **update_members_request_dto** | [**UpdateMembersRequestDto**](UpdateMembersRequestDto.md) | The accounts to convert. Only `userIds` is read by this operation; `resendAll` belongs to the invitation  operations and is ignored here. |  |

### Return type

[**EmployeeFullArrayWrapper**](EmployeeFullArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

