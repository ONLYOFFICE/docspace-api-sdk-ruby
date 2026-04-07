# DocspaceApiSdk::PeopleThirdPartyAccountsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_third_party_auth_providers**](PeopleThirdPartyAccountsApi.md#get_third_party_auth_providers) | **GET** /api/2.0/people/thirdparty/providers | Get third-party accounts |
| [**link_third_party_account**](PeopleThirdPartyAccountsApi.md#link_third_party_account) | **PUT** /api/2.0/people/thirdparty/linkaccount | Link a third-pary account |
| [**signup_third_party_account**](PeopleThirdPartyAccountsApi.md#signup_third_party_account) | **POST** /api/2.0/people/thirdparty/signup | Create a third-pary account |
| [**unlink_third_party_account**](PeopleThirdPartyAccountsApi.md#unlink_third_party_account) | **DELETE** /api/2.0/people/thirdparty/unlinkaccount | Unlink a third-pary account |


## get_third_party_auth_providers

> <AccountInfoArrayWrapper> get_third_party_auth_providers(opts)

Get third-party accounts

Returns a list of the available third-party accounts.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-auth-providers/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::People::ThirdPartyAccountsApi.new
opts = {
  invite_view: false, # Boolean | Specifies whether to return providers that are available for invitation links, i.e. the user can login or register through these providers.
  settings_view: false, # Boolean | Specifies whether to display the provider settings in a pop-up window (true) or redirect them to the desktop application (false).
  client_callback: 'onAuthCallback', # String | The method that is called after authentication.
  from_only: 'Google' # String | The provider name if a response is required only from this provider.
}

begin
  # Get third-party accounts
  result = api_instance.get_third_party_auth_providers(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ThirdPartyAccountsApi->get_third_party_auth_providers: #{e}"
end
```

#### Using the get_third_party_auth_providers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountInfoArrayWrapper>, Integer, Hash)> get_third_party_auth_providers_with_http_info(opts)

```ruby
begin
  # Get third-party accounts
  data, status_code, headers = api_instance.get_third_party_auth_providers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountInfoArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ThirdPartyAccountsApi->get_third_party_auth_providers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invite_view** | **Boolean** | Specifies whether to return providers that are available for invitation links, i.e. the user can login or register through these providers. | [optional] |
| **settings_view** | **Boolean** | Specifies whether to display the provider settings in a pop-up window (true) or redirect them to the desktop application (false). | [optional] |
| **client_callback** | **String** | The method that is called after authentication. | [optional] |
| **from_only** | **String** | The provider name if a response is required only from this provider. | [optional] |

### Return type

[**AccountInfoArrayWrapper**](AccountInfoArrayWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## link_third_party_account

> link_third_party_account(opts)

Link a third-pary account

Links a third-party account specified in the request to the user profile.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/link-third-party-account/).

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

api_instance = DocspaceApiSdk::People::ThirdPartyAccountsApi.new
opts = {
  link_account_request_dto: DocspaceApiSdk::LinkAccountRequestDto.new # LinkAccountRequestDto | 
}

begin
  # Link a third-pary account
  api_instance.link_third_party_account(opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ThirdPartyAccountsApi->link_third_party_account: #{e}"
end
```

#### Using the link_third_party_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> link_third_party_account_with_http_info(opts)

```ruby
begin
  # Link a third-pary account
  data, status_code, headers = api_instance.link_third_party_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ThirdPartyAccountsApi->link_third_party_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_account_request_dto** | [**LinkAccountRequestDto**](LinkAccountRequestDto.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## signup_third_party_account

> <EmployeeWrapper> signup_third_party_account(opts)

Create a third-pary account

Creates a third-party account with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/signup-third-party-account/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::People::ThirdPartyAccountsApi.new
opts = {
  signup_account_request_dto: DocspaceApiSdk::SignupAccountRequestDto.new({key: 'invite_key_123456', serialized_profile: '{"provider":"Google","id":"123456"}'}) # SignupAccountRequestDto | 
}

begin
  # Create a third-pary account
  result = api_instance.signup_third_party_account(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ThirdPartyAccountsApi->signup_third_party_account: #{e}"
end
```

#### Using the signup_third_party_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmployeeWrapper>, Integer, Hash)> signup_third_party_account_with_http_info(opts)

```ruby
begin
  # Create a third-pary account
  data, status_code, headers = api_instance.signup_third_party_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmployeeWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ThirdPartyAccountsApi->signup_third_party_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signup_account_request_dto** | [**SignupAccountRequestDto**](SignupAccountRequestDto.md) |  | [optional] |

### Return type

[**EmployeeWrapper**](EmployeeWrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unlink_third_party_account

> unlink_third_party_account(opts)

Unlink a third-pary account

Unlinks a third-party account specified in the request from the user profile.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/unlink-third-party-account/).

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

api_instance = DocspaceApiSdk::People::ThirdPartyAccountsApi.new
opts = {
  provider: 'Google' # String | The provider name.
}

begin
  # Unlink a third-pary account
  api_instance.unlink_third_party_account(opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ThirdPartyAccountsApi->unlink_third_party_account: #{e}"
end
```

#### Using the unlink_third_party_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unlink_third_party_account_with_http_info(opts)

```ruby
begin
  # Unlink a third-pary account
  data, status_code, headers = api_instance.unlink_third_party_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ThirdPartyAccountsApi->unlink_third_party_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | The provider name. | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

