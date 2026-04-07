# DocspaceApiSdk::SettingsLoginSettingsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_login_settings**](SettingsLoginSettingsApi.md#get_login_settings) | **GET** /api/2.0/settings/security/loginsettings | Get the login settings |
| [**set_default_login_settings**](SettingsLoginSettingsApi.md#set_default_login_settings) | **DELETE** /api/2.0/settings/security/loginsettings | Reset the login settings |
| [**update_login_settings**](SettingsLoginSettingsApi.md#update_login_settings) | **PUT** /api/2.0/settings/security/loginsettings | Update the login settings |


## get_login_settings

> <LoginSettingsWrapper> get_login_settings

Get the login settings

Returns the portal login settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-settings/).

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

api_instance = DocspaceApiSdk::Settings::LoginSettingsApi.new

begin
  # Get the login settings
  result = api_instance.get_login_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::LoginSettingsApi->get_login_settings: #{e}"
end
```

#### Using the get_login_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginSettingsWrapper>, Integer, Hash)> get_login_settings_with_http_info

```ruby
begin
  # Get the login settings
  data, status_code, headers = api_instance.get_login_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::LoginSettingsApi->get_login_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LoginSettingsWrapper**](LoginSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_default_login_settings

> <LoginSettingsWrapper> set_default_login_settings

Reset the login settings

Resets the portal login settings to default.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-default-login-settings/).

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

api_instance = DocspaceApiSdk::Settings::LoginSettingsApi.new

begin
  # Reset the login settings
  result = api_instance.set_default_login_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::LoginSettingsApi->set_default_login_settings: #{e}"
end
```

#### Using the set_default_login_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginSettingsWrapper>, Integer, Hash)> set_default_login_settings_with_http_info

```ruby
begin
  # Reset the login settings
  data, status_code, headers = api_instance.set_default_login_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::LoginSettingsApi->set_default_login_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LoginSettingsWrapper**](LoginSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_login_settings

> <LoginSettingsWrapper> update_login_settings(opts)

Update the login settings

Updates the login settings with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-login-settings/).

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

api_instance = DocspaceApiSdk::Settings::LoginSettingsApi.new
opts = {
  login_settings_request_dto: DocspaceApiSdk::LoginSettingsRequestDto.new # LoginSettingsRequestDto | 
}

begin
  # Update the login settings
  result = api_instance.update_login_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::LoginSettingsApi->update_login_settings: #{e}"
end
```

#### Using the update_login_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginSettingsWrapper>, Integer, Hash)> update_login_settings_with_http_info(opts)

```ruby
begin
  # Update the login settings
  data, status_code, headers = api_instance.update_login_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::LoginSettingsApi->update_login_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login_settings_request_dto** | [**LoginSettingsRequestDto**](LoginSettingsRequestDto.md) |  | [optional] |

### Return type

[**LoginSettingsWrapper**](LoginSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

