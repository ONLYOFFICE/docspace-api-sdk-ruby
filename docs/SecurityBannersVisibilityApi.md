# DocspaceApiSdk::SecurityBannersVisibilityApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**set_tenant_banner_settings**](SecurityBannersVisibilityApi.md#set_tenant_banner_settings) | **POST** /api/2.0/settings/banner | Set the banners visibility |


## set_tenant_banner_settings

> <TenantBannerSettingsWrapper> set_tenant_banner_settings(opts)

Set the banners visibility

Sets the visibility settings of the promotional banners in the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-banner-settings/).

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

api_instance = DocspaceApiSdk::Security::BannersVisibilityApi.new
opts = {
  tenant_banner_settings_dto: DocspaceApiSdk::TenantBannerSettingsDto.new # TenantBannerSettingsDto | 
}

begin
  # Set the banners visibility
  result = api_instance.set_tenant_banner_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::BannersVisibilityApi->set_tenant_banner_settings: #{e}"
end
```

#### Using the set_tenant_banner_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantBannerSettingsWrapper>, Integer, Hash)> set_tenant_banner_settings_with_http_info(opts)

```ruby
begin
  # Set the banners visibility
  data, status_code, headers = api_instance.set_tenant_banner_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantBannerSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::BannersVisibilityApi->set_tenant_banner_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_banner_settings_dto** | [**TenantBannerSettingsDto**](TenantBannerSettingsDto.md) |  | [optional] |

### Return type

[**TenantBannerSettingsWrapper**](TenantBannerSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

