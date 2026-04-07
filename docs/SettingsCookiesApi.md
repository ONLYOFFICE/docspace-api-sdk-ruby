# DocspaceApiSdk::SettingsCookiesApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_cookie_settings**](SettingsCookiesApi.md#get_cookie_settings) | **GET** /api/2.0/settings/cookiesettings | Get cookies lifetime |
| [**update_cookie_settings**](SettingsCookiesApi.md#update_cookie_settings) | **PUT** /api/2.0/settings/cookiesettings | Update cookies lifetime |


## get_cookie_settings

> <CookieSettingsWrapper> get_cookie_settings

Get cookies lifetime

Returns the cookies lifetime value in minutes.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-cookie-settings/).

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

api_instance = DocspaceApiSdk::Settings::CookiesApi.new

begin
  # Get cookies lifetime
  result = api_instance.get_cookie_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CookiesApi->get_cookie_settings: #{e}"
end
```

#### Using the get_cookie_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CookieSettingsWrapper>, Integer, Hash)> get_cookie_settings_with_http_info

```ruby
begin
  # Get cookies lifetime
  data, status_code, headers = api_instance.get_cookie_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CookieSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CookiesApi->get_cookie_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CookieSettingsWrapper**](CookieSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_cookie_settings

> <StringWrapper> update_cookie_settings(opts)

Update cookies lifetime

Updates the cookies lifetime value in minutes.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-cookie-settings/).

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

api_instance = DocspaceApiSdk::Settings::CookiesApi.new
opts = {
  cookie_settings_requests_dto: DocspaceApiSdk::CookieSettingsRequestsDto.new # CookieSettingsRequestsDto | 
}

begin
  # Update cookies lifetime
  result = api_instance.update_cookie_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CookiesApi->update_cookie_settings: #{e}"
end
```

#### Using the update_cookie_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> update_cookie_settings_with_http_info(opts)

```ruby
begin
  # Update cookies lifetime
  data, status_code, headers = api_instance.update_cookie_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::CookiesApi->update_cookie_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cookie_settings_requests_dto** | [**CookieSettingsRequestsDto**](CookieSettingsRequestsDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

