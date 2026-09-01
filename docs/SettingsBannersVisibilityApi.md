# DocspaceApiSdk::SettingsBannersVisibilityApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_tenant_banner_settings**](SettingsBannersVisibilityApi.md#get_tenant_banner_settings) | **GET** /api/2.0/settings/banner | Get the banners visibility |


## get_tenant_banner_settings

> <TenantBannerSettingsWrapper> get_tenant_banner_settings

Get the banners visibility

Returns the visibility settings of the promotional banners in the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-banner-settings/).

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

api_instance = DocspaceApiSdk::Settings::BannersVisibilityApi.new

begin
  # Get the banners visibility
  result = api_instance.get_tenant_banner_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::BannersVisibilityApi->get_tenant_banner_settings: #{e}"
end
```

#### Using the get_tenant_banner_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantBannerSettingsWrapper>, Integer, Hash)> get_tenant_banner_settings_with_http_info

```ruby
begin
  # Get the banners visibility
  data, status_code, headers = api_instance.get_tenant_banner_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantBannerSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::BannersVisibilityApi->get_tenant_banner_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TenantBannerSettingsWrapper**](TenantBannerSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

