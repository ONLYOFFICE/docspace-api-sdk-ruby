# DocspaceApiSdk::PeopleEmailApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**change_user_email**](PeopleEmailApi.md#change_user_email) | **PUT** /api/2.0/people/{userid}/email | Change a user email |
| [**send_email_change_instructions**](PeopleEmailApi.md#send_email_change_instructions) | **POST** /api/2.0/people/email | Send instructions to change email |


## change_user_email

> <EmployeeFullWrapper> change_user_email(userid, change_email_request)

Change a user email

Sets a new email to the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-user-email/).

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

api_instance = DocspaceApiSdk::People::EmailApi.new
userid = '00000000-0000-0000-0000-000000000000' # String | The user ID.
change_email_request = DocspaceApiSdk::ChangeEmailRequest.new # ChangeEmailRequest | The request parameters for updating a user email.

begin
  # Change a user email
  result = api_instance.change_user_email(userid, change_email_request)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::EmailApi->change_user_email: #{e}"
end
```

#### Using the change_user_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeFullWrapper>, Integer, Hash)> change_user_email_with_http_info(userid, change_email_request)

```ruby
begin
  # Change a user email
  data, status_code, headers = api_instance.change_user_email_with_http_info(userid, change_email_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeFullWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::EmailApi->change_user_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **userid** | **String** | The user ID. |  |
| **change_email_request** | [**ChangeEmailRequest**](ChangeEmailRequest.md) | The request parameters for updating a user email. |  |

### Return type

[**EmployeeFullWrapper**](EmployeeFullWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_email_change_instructions

> <StringWrapper> send_email_change_instructions(opts)

Send instructions to change email

Sends a message to the user email with the instructions to change the email address connected to the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-email-change-instructions/).

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

api_instance = DocspaceApiSdk::People::EmailApi.new
opts = {
  update_member_request_dto: DocspaceApiSdk::UpdateMemberRequestDto.new # UpdateMemberRequestDto | 
}

begin
  # Send instructions to change email
  result = api_instance.send_email_change_instructions(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::EmailApi->send_email_change_instructions: #{e}"
end
```

#### Using the send_email_change_instructions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> send_email_change_instructions_with_http_info(opts)

```ruby
begin
  # Send instructions to change email
  data, status_code, headers = api_instance.send_email_change_instructions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::EmailApi->send_email_change_instructions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_member_request_dto** | [**UpdateMemberRequestDto**](UpdateMemberRequestDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

