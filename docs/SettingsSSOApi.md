# DocspaceApiSdk::SettingsSSOApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_default_sso_settings_v2**](SettingsSSOApi.md#get_default_sso_settings_v2) | **GET** /api/2.0/settings/ssov2/default | Get the default SSO settings |
| [**get_sso_settings_v2**](SettingsSSOApi.md#get_sso_settings_v2) | **GET** /api/2.0/settings/ssov2 | Get the SSO settings |
| [**get_sso_settings_v2_constants**](SettingsSSOApi.md#get_sso_settings_v2_constants) | **GET** /api/2.0/settings/ssov2/constants | Get the SSO settings constants |
| [**reset_sso_settings_v2**](SettingsSSOApi.md#reset_sso_settings_v2) | **DELETE** /api/2.0/settings/ssov2 | Reset the SSO settings |
| [**save_sso_settings_v2**](SettingsSSOApi.md#save_sso_settings_v2) | **POST** /api/2.0/settings/ssov2 | Save the SSO settings |


## get_default_sso_settings_v2

> <SsoSettingsV2Wrapper> get_default_sso_settings_v2

Get the default SSO settings

Returns the default portal SSO settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-default-sso-settings-v2/).

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

api_instance = DocspaceApiSdk::Settings::SSOApi.new

begin
  # Get the default SSO settings
  result = api_instance.get_default_sso_settings_v2
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SSOApi->get_default_sso_settings_v2: #{e}"
end
```

#### Using the get_default_sso_settings_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SsoSettingsV2Wrapper>, Integer, Hash)> get_default_sso_settings_v2_with_http_info

```ruby
begin
  # Get the default SSO settings
  data, status_code, headers = api_instance.get_default_sso_settings_v2_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SsoSettingsV2Wrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SSOApi->get_default_sso_settings_v2_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SsoSettingsV2Wrapper**](SsoSettingsV2Wrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sso_settings_v2

> <SsoSettingsV2Wrapper> get_sso_settings_v2

Get the SSO settings

Returns the current portal SSO settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-sso-settings-v2/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::Settings::SSOApi.new

begin
  # Get the SSO settings
  result = api_instance.get_sso_settings_v2
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SSOApi->get_sso_settings_v2: #{e}"
end
```

#### Using the get_sso_settings_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SsoSettingsV2Wrapper>, Integer, Hash)> get_sso_settings_v2_with_http_info

```ruby
begin
  # Get the SSO settings
  data, status_code, headers = api_instance.get_sso_settings_v2_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SsoSettingsV2Wrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SSOApi->get_sso_settings_v2_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SsoSettingsV2Wrapper**](SsoSettingsV2Wrapper.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sso_settings_v2_constants

> <ObjectWrapper> get_sso_settings_v2_constants

Get the SSO settings constants

Returns the SSO settings constants.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-sso-settings-v2-constants/).

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

api_instance = DocspaceApiSdk::Settings::SSOApi.new

begin
  # Get the SSO settings constants
  result = api_instance.get_sso_settings_v2_constants
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SSOApi->get_sso_settings_v2_constants: #{e}"
end
```

#### Using the get_sso_settings_v2_constants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectWrapper>, Integer, Hash)> get_sso_settings_v2_constants_with_http_info

```ruby
begin
  # Get the SSO settings constants
  data, status_code, headers = api_instance.get_sso_settings_v2_constants_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SSOApi->get_sso_settings_v2_constants_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_sso_settings_v2

> <SsoSettingsV2Wrapper> reset_sso_settings_v2

Reset the SSO settings

Resets the SSO settings of the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/reset-sso-settings-v2/).

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

api_instance = DocspaceApiSdk::Settings::SSOApi.new

begin
  # Reset the SSO settings
  result = api_instance.reset_sso_settings_v2
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SSOApi->reset_sso_settings_v2: #{e}"
end
```

#### Using the reset_sso_settings_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SsoSettingsV2Wrapper>, Integer, Hash)> reset_sso_settings_v2_with_http_info

```ruby
begin
  # Reset the SSO settings
  data, status_code, headers = api_instance.reset_sso_settings_v2_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SsoSettingsV2Wrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SSOApi->reset_sso_settings_v2_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SsoSettingsV2Wrapper**](SsoSettingsV2Wrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## save_sso_settings_v2

> <SsoSettingsV2Wrapper> save_sso_settings_v2(opts)

Save the SSO settings

Saves the SSO settings for the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-sso-settings-v2/).

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

api_instance = DocspaceApiSdk::Settings::SSOApi.new
opts = {
  sso_settings_requests_dto: DocspaceApiSdk::SsoSettingsRequestsDto.new({serialize_settings: '{"enableSso":true,"idpSettings":{"entityId":"https://idp.example.com"}}'}) # SsoSettingsRequestsDto | 
}

begin
  # Save the SSO settings
  result = api_instance.save_sso_settings_v2(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SSOApi->save_sso_settings_v2: #{e}"
end
```

#### Using the save_sso_settings_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SsoSettingsV2Wrapper>, Integer, Hash)> save_sso_settings_v2_with_http_info(opts)

```ruby
begin
  # Save the SSO settings
  data, status_code, headers = api_instance.save_sso_settings_v2_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SsoSettingsV2Wrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::SSOApi->save_sso_settings_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sso_settings_requests_dto** | [**SsoSettingsRequestsDto**](SsoSettingsRequestsDto.md) |  | [optional] |

### Return type

[**SsoSettingsV2Wrapper**](SsoSettingsV2Wrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

