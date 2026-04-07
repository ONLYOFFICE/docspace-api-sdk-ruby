# DocspaceApiSdk::PeopleThemeApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**change_portal_theme**](PeopleThemeApi.md#change_portal_theme) | **PUT** /api/2.0/people/theme | Change the portal theme |
| [**get_portal_theme**](PeopleThemeApi.md#get_portal_theme) | **GET** /api/2.0/people/theme | Get the portal theme |


## change_portal_theme

> <DarkThemeSettingsWrapper> change_portal_theme(opts)

Change the portal theme

Changes the current portal theme.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-portal-theme/).

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

api_instance = DocspaceApiSdk::People::ThemeApi.new
opts = {
  dark_theme_settings_request_dto: DocspaceApiSdk::DarkThemeSettingsRequestDto.new({theme: DocspaceApiSdk::DarkThemeSettingsType::BASE}) # DarkThemeSettingsRequestDto | 
}

begin
  # Change the portal theme
  result = api_instance.change_portal_theme(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ThemeApi->change_portal_theme: #{e}"
end
```

#### Using the change_portal_theme_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DarkThemeSettingsWrapper>, Integer, Hash)> change_portal_theme_with_http_info(opts)

```ruby
begin
  # Change the portal theme
  data, status_code, headers = api_instance.change_portal_theme_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DarkThemeSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ThemeApi->change_portal_theme_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dark_theme_settings_request_dto** | [**DarkThemeSettingsRequestDto**](DarkThemeSettingsRequestDto.md) |  | [optional] |

### Return type

[**DarkThemeSettingsWrapper**](DarkThemeSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_portal_theme

> <DarkThemeSettingsWrapper> get_portal_theme

Get the portal theme

Returns a theme which is set to the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-theme/).

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

api_instance = DocspaceApiSdk::People::ThemeApi.new

begin
  # Get the portal theme
  result = api_instance.get_portal_theme
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ThemeApi->get_portal_theme: #{e}"
end
```

#### Using the get_portal_theme_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DarkThemeSettingsWrapper>, Integer, Hash)> get_portal_theme_with_http_info

```ruby
begin
  # Get the portal theme
  data, status_code, headers = api_instance.get_portal_theme_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DarkThemeSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling People::ThemeApi->get_portal_theme_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DarkThemeSettingsWrapper**](DarkThemeSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

