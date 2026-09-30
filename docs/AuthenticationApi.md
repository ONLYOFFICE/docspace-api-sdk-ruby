# DocspaceApiSdk::AuthenticationApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authenticate_me**](AuthenticationApi.md#authenticate_me) | **POST** /api/2.0/authentication | Authenticate a user |
| [**authenticate_me_from_body_with_code**](AuthenticationApi.md#authenticate_me_from_body_with_code) | **POST** /api/2.0/authentication/{code} | Authenticate a user by code |
| [**check_confirm**](AuthenticationApi.md#check_confirm) | **POST** /api/2.0/authentication/confirm | Check a confirmation link |
| [**get_is_authentificated**](AuthenticationApi.md#get_is_authentificated) | **GET** /api/2.0/authentication | Check authentication |
| [**logout**](AuthenticationApi.md#logout) | **POST** /api/2.0/authentication/logout | Log out |
| [**save_mobile_phone**](AuthenticationApi.md#save_mobile_phone) | **POST** /api/2.0/authentication/setphone | Set a mobile phone |
| [**send_sms_code**](AuthenticationApi.md#send_sms_code) | **POST** /api/2.0/authentication/sendsms | Send SMS code |


## authenticate_me

> <AuthenticationTokenWrapper> authenticate_me(opts)

Authenticate a user

Signs a user in to the current portal and either issues the authentication token or reports which second  factor is still missing. Credentials go in the body as `userName` with `password` or `passwordHash`, as the  key of a confirmation link in `confirmData`, or as a third-party account (`provider` with `accessToken`, or  `serializedProfile`), which only a standalone installation or a tariff with third-party sign-in allows. Open  to unauthenticated callers, mutating and not  idempotent: it writes a login event, sets the portal cookies and counts every failure against the brute-force  limit. When a second factor is required for this user the answer carries no `token` but `sms` with the masked  phone number - or a `confirmUrl` pointing at `POST api/2.0/authentication/setphone` while no number is  activated yet - or `tfa` with the setup key while the authenticator app is not connected; submit the code to  `POST api/2.0/authentication/{code}` to finish such a sign-in. Otherwise the answer carries `token` for the  `Authorization` header and `expires`, which is omitted when `session=true` ties the token to the browser  session. An unknown user fails with 404, rejected credentials with 401, a disabled or blocked user with 403.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me/).

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

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## authenticate_me_from_body_with_code

> <AuthenticationTokenWrapper> authenticate_me_from_body_with_code(code, opts)

Authenticate a user by code

Finishes a two-factor sign-in: checks the one-time code and, when it matches, issues the authentication token.  Call it only after `POST api/2.0/authentication` answered with `sms` or `tfa` set, and repeat the same  credentials in the body next to `code` - the code alone does not identify the user. The code comes from the  SMS the portal sent, which `POST api/2.0/authentication/sendsms` resends, or from the authenticator app;  whichever second factor the portal has enabled for this user is the one checked here. Open to unauthenticated  callers, mutating and not idempotent: a code is single-use, the sign-in is written to the login history, and  the first code accepted from an authenticator app also connects that app to the user. The answer carries  `token` for the `Authorization` header, `expires` unless `session=true` tied the token to the browser session,  and either `sms` with the masked phone number or `tfa`. A wrong, empty or expired code fails with 401 and  counts against the brute-force limit, which then refuses further attempts with 403.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/authenticate-me-from-body-with-code/).

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
code = 'code_example' # String | The two-factor authentication code. Send the same value as the `code` of the request body, which is the one the handler reads.
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
| **code** | **String** | The two-factor authentication code. Send the same value as the `code` of the request body, which is the one the handler reads. |  |
| **auth_with_code_requests_dto** | [**AuthWithCodeRequestsDto**](AuthWithCodeRequestsDto.md) |  | [optional] |

### Return type

[**AuthenticationTokenWrapper**](AuthenticationTokenWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## check_confirm

> <ConfirmWrapper> check_confirm(opts)

Check a confirmation link

Checks the key of a confirmation link that the portal sent by email and reports whether the action behind that  link can still be carried out - an employee invitation, phone activation, a password change, portal removal  and so on. Take `key` and `type` from the query string of the link; when `key` is left empty, the key saved in  the confirmation cookie of the same `type` is used instead. Open to unauthenticated callers and read-only: it  neither accepts the invitation nor signs anyone in. `result` is `Ok` when the link may be used, `Invalid` when  the key does not match the type or the email, `Expired` when it is too old, and `TariffLimit`, `UserExisted`,  `UserExcluded` or `QuotaFailed` when the key is sound but the invitation behind it cannot be accepted. Only  `Ok` should be followed by the operation that performs the action - `POST api/2.0/people` with  `fromInviteLink` for an invitation, `POST api/2.0/authentication` with `confirmData` for a sign-in link - and  for an invitation to a room the answer also carries the identifier and the title of that room.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/check-confirm/).

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
  email_validation_key_model: DocspaceApiSdk::EmailValidationKeyModel.new # EmailValidationKeyModel | 
}

begin
  # Check a confirmation link
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
  # Check a confirmation link
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

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_is_authentificated

> <BooleanWrapper> get_is_authentificated

Check authentication

Reports whether the credentials that came with this very request identify a signed-in user of the current  portal - the authentication cookie, or the token in the `Authorization` header. Nothing has to be called  first: the operation is open to unauthenticated callers, who simply get `false`, it is read-only and  idempotent, and it answers even while the portal's payment has lapsed. The result is a bare boolean that  carries no reason, so `false` covers a missing, malformed, expired and revoked token alike; the way to recover  from it is to sign in again with `POST api/2.0/authentication`. It says nothing about who the caller is or how  long the session still lasts - read `GET api/2.0/people/@self` for the profile behind the token.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-is-authentificated/).

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

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## logout

> <StringWrapper> logout

Log out

Ends the session the request itself was made with: the login event behind the authentication cookie is closed,  the sockets opened for it are disconnected, the portal cookies are cleared and a logout event is written to  the login history. Send it with the cookie or token of the session that is to be closed; an anonymous call is  accepted and closes nothing. The operation is mutating and idempotent - the same session cannot be closed  twice - and it touches only that one session: the other sessions of the same user stay alive and are ended by  `PUT api/2.0/security/activeconnections/logoutallexceptthis` or  `PUT api/2.0/security/activeconnections/logout/{loginEventId}`. The answer is a single logout URL when the  user signed in through SSO and the portal has an SLO endpoint configured, and the client has to open that URL  to end the session on the identity provider as well; for everyone else it is empty and nothing more is needed.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/logout/).

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

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## save_mobile_phone

> <AuthenticationTokenWrapper> save_mobile_phone(opts)

Set a mobile phone

Stores the mobile phone number of a user who is going through phone activation and sends the first SMS  authentication code to it. It is reachable only with the phone-activation confirmation link that  `POST api/2.0/authentication` returns in `confirmUrl` when SMS two-factor is required and the user has no  activated number yet: that link authorizes the call in place of an authentication token, and no token is  issued here. The operation is mutating and not idempotent - it saves the number as not activated, writes an  audit event and sends a message - and an already activated number is not replaced this way, the stored number  has to be erased first. The answer carries `sms`, the masked number and `expires`, the moment the code stops  being accepted. Submit that code to `POST api/2.0/authentication/{code}`, which signs the user in and marks  the number activated, or ask for another one with `POST api/2.0/authentication/sendsms`.

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

Sends a new SMS authentication code to the phone number stored for the user and reports when that code  expires. The credentials in the body are checked exactly as by `POST api/2.0/authentication`, so use this  operation to resend the code after that call answered with `sms`; the user needs SMS two-factor enabled and a  phone number already stored, which `POST api/2.0/authentication/setphone` registers. Open to unauthenticated  callers, mutating and not idempotent: every call sends a message, is counted in the portal's SMS usage and  spends one of the few codes a number is allowed within the code lifetime (ten minutes by default), after which  the call fails until those codes expire. Codes sent earlier stay valid, so a resent code does not invalidate  them, and the first one to be accepted invalidates all of them. The answer carries `sms`, the masked number  and `expires`, and no token - submit the code to `POST api/2.0/authentication/{code}`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-sms-code/).

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

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

