# DocspaceApiSdk::PeoplePasswordApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**change_user_password**](PeoplePasswordApi.md#change_user_password) | **PUT** /api/2.0/people/{userid}/password | Change a user password |
| [**send_user_password**](PeoplePasswordApi.md#send_user_password) | **POST** /api/2.0/people/password | Remind a user password |


## change_user_password

> <EmployeeFullWrapper> change_user_password(userid, change_password_request)

Change a user password

Sets a new password to the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-user-password/).

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

api_instance = DocspaceApiSdk::People::PasswordApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID.
change_password_request = DocspaceApiSdk::ChangePasswordRequest.new # ChangePasswordRequest | The request parameters for updating a user password.

begin
  # Change a user password
  result = api_instance.change_user_password(userid, change_password_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::PasswordApi->change_user_password: #{e}"
end
```

#### Using the change_user_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullWrapper>, Integer, Hash)> change_user_password_with_http_info(userid, change_password_request)

```ruby
begin
  # Change a user password
  data, status_code, headers = api_instance.change_user_password_with_http_info(userid, change_password_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::PasswordApi->change_user_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **userid** | **String** | The user ID. |  |
| **change_password_request** | [**ChangePasswordRequest**](ChangePasswordRequest.md) | The request parameters for updating a user password. |  |

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_user_password

> <StringWrapper> send_user_password(opts)

Remind a user password

Reminds a password to the user using the email address specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-user-password/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::People::PasswordApi.new
opts = {
  email_member_request_dto: DocspaceApiSdk::EmailMemberRequestDto.new({email: 'john.doe@example.com'}) # EmailMemberRequestDto | 
}

begin
  # Remind a user password
  result = api_instance.send_user_password(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::PasswordApi->send_user_password: #{e}"
end
```

#### Using the send_user_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> send_user_password_with_http_info(opts)

```ruby
begin
  # Remind a user password
  data, status_code, headers = api_instance.send_user_password_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::PasswordApi->send_user_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_member_request_dto** | [**EmailMemberRequestDto**](EmailMemberRequestDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

