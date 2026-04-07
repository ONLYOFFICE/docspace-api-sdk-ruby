# DocspaceApiSdk::AuthenticationApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authenticate_me**](AuthenticationApi.md#authenticate_me) | **POST** /api/2.0/authentication | Authenticate a user |
| [**authenticate_me_from_body_with_code**](AuthenticationApi.md#authenticate_me_from_body_with_code) | **POST** /api/2.0/authentication/{code} | Authenticate a user by code |
| [**check_confirm**](AuthenticationApi.md#check_confirm) | **POST** /api/2.0/authentication/confirm | Open confirmation email URL |
| [**get_is_authentificated**](AuthenticationApi.md#get_is_authentificated) | **GET** /api/2.0/authentication | Check authentication |
| [**logout**](AuthenticationApi.md#logout) | **POST** /api/2.0/authentication/logout | Log out |
| [**save_mobile_phone**](AuthenticationApi.md#save_mobile_phone) | **POST** /api/2.0/authentication/setphone | Set a mobile phone |
| [**send_sms_code**](AuthenticationApi.md#send_sms_code) | **POST** /api/2.0/authentication/sendsms | Send SMS code |


## authenticate_me

> <AuthenticationTokenWrapper> authenticate_me(opts)

Authenticate a user

Authenticates the current user by SMS, authenticator app, or without two-factor authentication.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Authentication::AuthenticationApi.new
opts = {
  auth_requests_dto: DocspaceApiSdk::AuthRequestsDto.new # AuthRequestsDto | 
}

begin
  # Authenticate a user
  result = api_instance.authenticate_me(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Authentication::AuthenticationApi->authenticate_me: #{e}"
end
```

#### Using the authenticate_me_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthenticationTokenWrapper>, Integer, Hash)> authenticate_me_with_http_info(opts)

```ruby
begin
  # Authenticate a user
  data, status_code, headers = api_instance.authenticate_me_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthenticationTokenWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Authentication::AuthenticationApi->authenticate_me_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_requests_dto** | [**AuthRequestsDto**](AuthRequestsDto.md) |  | [optional] |

### Return type

[**AuthenticationTokenWrapper**](AuthenticationTokenWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## authenticate_me_from_body_with_code

> <AuthenticationTokenWrapper> authenticate_me_from_body_with_code(code, opts)

Authenticate a user by code

Authenticates the current user by SMS or two-factor authentication code.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me-from-body-with-code/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Authentication::AuthenticationApi.new
code = 'code_example' # String | 
opts = {
  auth_with_code_requests_dto: DocspaceApiSdk::AuthWithCodeRequestsDto.new # AuthWithCodeRequestsDto | 
}

begin
  # Authenticate a user by code
  result = api_instance.authenticate_me_from_body_with_code(code, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Authentication::AuthenticationApi->authenticate_me_from_body_with_code: #{e}"
end
```

#### Using the authenticate_me_from_body_with_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthenticationTokenWrapper>, Integer, Hash)> authenticate_me_from_body_with_code_with_http_info(code, opts)

```ruby
begin
  # Authenticate a user by code
  data, status_code, headers = api_instance.authenticate_me_from_body_with_code_with_http_info(code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthenticationTokenWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Authentication::AuthenticationApi->authenticate_me_from_body_with_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** |  |  |
| **auth_with_code_requests_dto** | [**AuthWithCodeRequestsDto**](AuthWithCodeRequestsDto.md) |  | [optional] |

### Return type

[**AuthenticationTokenWrapper**](AuthenticationTokenWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## check_confirm

> <ConfirmWrapper> check_confirm(opts)

Open confirmation email URL

Opens a confirmation email URL to validate a certain action (employee invitation, portal removal, phone activation, etc.).

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-confirm/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Authentication::AuthenticationApi.new
opts = {
  email_validation_key_model: DocspaceApiSdk::EmailValidationKeyModel.new # EmailValidationKeyModel | 
}

begin
  # Open confirmation email URL
  result = api_instance.check_confirm(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Authentication::AuthenticationApi->check_confirm: #{e}"
end
```

#### Using the check_confirm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConfirmWrapper>, Integer, Hash)> check_confirm_with_http_info(opts)

```ruby
begin
  # Open confirmation email URL
  data, status_code, headers = api_instance.check_confirm_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConfirmWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Authentication::AuthenticationApi->check_confirm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_validation_key_model** | [**EmailValidationKeyModel**](EmailValidationKeyModel.md) |  | [optional] |

### Return type

[**ConfirmWrapper**](ConfirmWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_is_authentificated

> <BooleanWrapper> get_is_authentificated

Check authentication

Checks if the current user is authenticated or not.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-authentificated/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Authentication::AuthenticationApi.new

begin
  # Check authentication
  result = api_instance.get_is_authentificated
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Authentication::AuthenticationApi->get_is_authentificated: #{e}"
end
```

#### Using the get_is_authentificated_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> get_is_authentificated_with_http_info

```ruby
begin
  # Check authentication
  data, status_code, headers = api_instance.get_is_authentificated_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Authentication::AuthenticationApi->get_is_authentificated_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## logout

> <StringWrapper> logout

Log out

Logs out of the current user account.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/logout/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Authentication::AuthenticationApi.new

begin
  # Log out
  result = api_instance.logout
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Authentication::AuthenticationApi->logout: #{e}"
end
```

#### Using the logout_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> logout_with_http_info

```ruby
begin
  # Log out
  data, status_code, headers = api_instance.logout_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Authentication::AuthenticationApi->logout_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## save_mobile_phone

> <AuthenticationTokenWrapper> save_mobile_phone(opts)

Set a mobile phone

Sets a mobile phone for the current user.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-mobile-phone/).

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

api_instance = DocspaceApiSdk::Authentication::AuthenticationApi.new
opts = {
  mobile_requests_dto: DocspaceApiSdk::MobileRequestsDto.new # MobileRequestsDto | 
}

begin
  # Set a mobile phone
  result = api_instance.save_mobile_phone(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Authentication::AuthenticationApi->save_mobile_phone: #{e}"
end
```

#### Using the save_mobile_phone_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthenticationTokenWrapper>, Integer, Hash)> save_mobile_phone_with_http_info(opts)

```ruby
begin
  # Set a mobile phone
  data, status_code, headers = api_instance.save_mobile_phone_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthenticationTokenWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Authentication::AuthenticationApi->save_mobile_phone_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mobile_requests_dto** | [**MobileRequestsDto**](MobileRequestsDto.md) |  | [optional] |

### Return type

[**AuthenticationTokenWrapper**](AuthenticationTokenWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_sms_code

> <AuthenticationTokenWrapper> send_sms_code(opts)

Send SMS code

Sends SMS with an authentication code.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-sms-code/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Authentication::AuthenticationApi.new
opts = {
  auth_requests_dto: DocspaceApiSdk::AuthRequestsDto.new # AuthRequestsDto | 
}

begin
  # Send SMS code
  result = api_instance.send_sms_code(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Authentication::AuthenticationApi->send_sms_code: #{e}"
end
```

#### Using the send_sms_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthenticationTokenWrapper>, Integer, Hash)> send_sms_code_with_http_info(opts)

```ruby
begin
  # Send SMS code
  data, status_code, headers = api_instance.send_sms_code_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthenticationTokenWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Authentication::AuthenticationApi->send_sms_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_requests_dto** | [**AuthRequestsDto**](AuthRequestsDto.md) |  | [optional] |

### Return type

[**AuthenticationTokenWrapper**](AuthenticationTokenWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

