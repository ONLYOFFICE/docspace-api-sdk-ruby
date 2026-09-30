# DocspaceApiSdk::PeopleUserDataApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_delete_personal_folder_progress**](PeopleUserDataApi.md#get_delete_personal_folder_progress) | **GET** /api/2.0/people/delete/personal/progress | Get the personal folder deletion progress |
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

Get the personal folder deletion progress

Returns the current state of the personal folder deletion queued for the authenticated account.  The job must have been queued by `POST api/2.0/people/delete/personal/start` first: when nothing is queued for  the caller the operation answers 200 with an empty body.  It takes no parameters and reports on the caller only, so an administrator cannot watch the folder deletion of  another user through it.  The call is read-only and is the polling operation of this flow - repeat it until `isCompleted` is true, and  read `error` for the message left by a failed job.  A queued personal folder deletion cannot be cancelled, so the only outcome to wait for is its completion.

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
  # Get the personal folder deletion progress
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
  # Get the personal folder deletion progress
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

Returns the current state of the data reassignment queued for the user with the ID specified in the request.  A reassignment must have been queued by `POST api/2.0/people/reassign/start` first: when nothing is queued for  that user the operation answers 200 with an empty body.  The caller needs the permission to edit users, and only the portal owner may track a reassignment whose source  user is a DocSpace administrator.  The call is read-only and is the polling operation of the reassignment flow - repeat it until `isCompleted` is  true, reading `percentage` for the 0 to 100 progress and `error` for the message left by a failed job.  Use `PUT api/2.0/people/reassign/terminate` to cancel a job that is still running.

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
userid = '00000000-0000-0000-0000-000000000000' # String | The ID of the user the operation applies to, taken from the route. For a progress operation it has to be the  same ID that was passed when the job was started.

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
| **userid** | **String** | The ID of the user the operation applies to, taken from the route. For a progress operation it has to be the  same ID that was passed when the job was started. |  |

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

Returns the current state of the data deletion queued for the user with the ID specified in the request.  A deletion must have been queued by `POST api/2.0/people/remove/start` first: when nothing is queued for that  user the operation answers 200 with an empty body.  The caller needs the permission to edit users.  The call is read-only and is the polling operation of the deletion flow - repeat it until `isCompleted` is  true, reading `percentage` for the 0 to 100 progress and `error` for the message left by a failed job.  Use `PUT api/2.0/people/remove/terminate` to cancel a job that is still running.

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
userid = '00000000-0000-0000-0000-000000000000' # String | The ID of the user the operation applies to, taken from the route. For a progress operation it has to be the  same ID that was passed when the job was started.

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
| **userid** | **String** | The ID of the user the operation applies to, taken from the route. For a progress operation it has to be the  same ID that was passed when the job was started. |  |

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

Reports whether the rooms and the shared files of a user have to be reassigned before that user can be removed  or changed to the type passed in `type`.  Call it before `DELETE api/2.0/people/{userid}` or before a type change to find out whether  `POST api/2.0/people/reassign/start` has to run first.  The caller needs the permission to add and remove users of the requested type, and must be the portal owner  when the checked user is a DocSpace administrator.  The call is read-only and answers true when the user owns at least one room, or - when `type` is `Guest` -  when the user still has shared files.  A false answer means the user can be removed or converted without a reassignment.

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
  user_id: '00000000-0000-0000-0000-000000000000', # String | The ID of the user whose rooms and shared files are checked.
  type: DocspaceApiSdk::EmployeeType::ALL # EmployeeType | The type the user is about to be changed to, which decides what counts as data that has to be reassigned:  `RoomAdmin`, `DocSpaceAdmin` and `User` are checked for owned rooms only, while `Guest` is also checked for  files that are still shared. The default is `All`, which checks owned rooms only.
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
| **user_id** | **String** | The ID of the user whose rooms and shared files are checked. | [optional] |
| **type** | **EmployeeType** | The type the user is about to be changed to, which decides what counts as data that has to be reassigned:  `RoomAdmin`, `DocSpaceAdmin` and `User` are checked for owned rooms only, while `Guest` is also checked for  files that are still shared. The default is `All`, which checks owned rooms only. | [optional] |

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

Emails the caller a confirmation link that lets them delete their own profile, and is the first step of the  self-service profile removal.  It acts on the authenticated account only and takes no parameters, so it cannot be used to remove somebody  else - an administrator removes another user through `DELETE api/2.0/people/{userid}`.  The caller has to be a regular portal account: the portal owner and an account imported from LDAP are  rejected, because neither can delete itself.  The call sends mail and does not change the profile; the deletion happens later, when the caller follows the  emailed link and the client calls `DELETE api/2.0/people/@self` with the confirmation token from it.  The answer is a ready-to-display message naming the address the link was sent to, and the address is wrapped  in bold HTML markup, so strip the markup before showing it outside a web page.  Repeated calls are throttled, and each one sends a new link.

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

Queues an asynchronous job that empties the personal folder of the authenticated account.  The operation takes no parameters and always acts on the caller, so it cannot be used to empty the folder of  another user.  Only an account whose type is `Guest` may call it; every other type is rejected, because only a guest has a  personal folder that can be emptied this way.  The job does not finish within this call: poll `GET api/2.0/people/delete/personal/progress` until  `isCompleted` is true.  The job deletes the files permanently and cannot be undone or cancelled - there is no terminate operation for  this flow, unlike the user data deletion.

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

Queues an asynchronous job that transfers the rooms and the shared files owned by one portal user to another.  The source user must already have the `Terminated` status - disable the account through  `PUT api/2.0/people/status/{status}` before calling this - and the destination user must be an active room  admin or DocSpace admin, so a guest, a system account or a disabled account is rejected.  The caller needs the permission to edit users, cannot reassign their own data, and must be the portal owner to  reassign the data of another DocSpace administrator or of a People module administrator.  The transfer does not finish within this call: poll `GET api/2.0/people/reassign/progress/{userid}` with the  source user ID until `isCompleted` is true, and cancel it through `PUT api/2.0/people/reassign/terminate`.  Pass `deleteProfile` as true to delete the source profile once the transfer succeeds, otherwise the emptied  profile is kept.  Use `GET api/2.0/people/reassign/necessary` first to find out whether the user owns anything that has to be  reassigned at all.

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

Queues an asynchronous job that erases the data of the user with the ID specified in the request.  The account must already have the `Terminated` status - disable it through  `PUT api/2.0/people/status/{status}` first - and it cannot be the portal owner or the caller.  The caller needs the permission to edit users, has to be a DocSpace admin to erase the data of a room admin,  and has to be the portal owner to erase the data of another DocSpace admin.  The erasure does not finish within this call: poll `GET api/2.0/people/remove/progress/{userid}` with the same  user ID until `isCompleted` is true, and cancel it through `PUT api/2.0/people/remove/terminate`.  This operation destroys the data and cannot be undone; to keep the rooms and the shared files of the account  instead, transfer them first through `POST api/2.0/people/reassign/start`.  An unknown ID and a rejected precondition both answer 400 and name the ID they rejected.

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

Cancels the data reassignment queued for the user with the ID specified in the request.  The caller needs the permission to edit users, and only the portal owner may cancel a reassignment whose  source user is a DocSpace administrator.  The operation is idempotent: when nothing is queued for that user it answers 200 with an empty body, and  repeating it on an already cancelled job changes nothing.  Cancelling removes the job from the queue and does not undo the transfers it has already made, and a cancelled  job cannot be resumed - start a new one through `POST api/2.0/people/reassign/start`.  The returned progress reports `status` as `Canceled` and `isCompleted` as true.

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

Cancels the data deletion queued for the user with the ID specified in the request.  The caller needs the permission to edit users.  The operation is idempotent and returns no body: it drops the job from the queue, and doing so when nothing is  queued, or when the job has already finished, changes nothing and still answers 200.  Cancelling does not restore the data the job has already erased, and a cancelled job cannot be resumed - start  a new one through `POST api/2.0/people/remove/start`.  To find out whether the job is still running, read  `GET api/2.0/people/remove/progress/{userid}` before and after this call.

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
- **Accept**: application/json

