# DocspaceApiSdk::SettingsAccessToDevToolsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_tenant_access_dev_tools_settings**](SettingsAccessToDevToolsApi.md#get_tenant_access_dev_tools_settings) | **GET** /api/2.0/settings/devtoolsaccess | Get the Developer Tools access settings |


## get_tenant_access_dev_tools_settings

> <TenantDevToolsAccessSettingsWrapper> get_tenant_access_dev_tools_settings

Get the Developer Tools access settings

Returns the Developer Tools access settings for the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-access-dev-tools-settings/).

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

api_instance = DocspaceApiSdk::Settings::AccessToDevToolsApi.new

begin
  # Get the Developer Tools access settings
  result = api_instance.get_tenant_access_dev_tools_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::AccessToDevToolsApi->get_tenant_access_dev_tools_settings: #{e}"
end
```

#### Using the get_tenant_access_dev_tools_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantDevToolsAccessSettingsWrapper>, Integer, Hash)> get_tenant_access_dev_tools_settings_with_http_info

```ruby
begin
  # Get the Developer Tools access settings
  data, status_code, headers = api_instance.get_tenant_access_dev_tools_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantDevToolsAccessSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::AccessToDevToolsApi->get_tenant_access_dev_tools_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TenantDevToolsAccessSettingsWrapper**](TenantDevToolsAccessSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

