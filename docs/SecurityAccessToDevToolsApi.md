# DocspaceApiSdk::SecurityAccessToDevToolsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**set_tenant_dev_tools_access_settings**](SecurityAccessToDevToolsApi.md#set_tenant_dev_tools_access_settings) | **POST** /api/2.0/settings/devtoolsaccess | Set the Developer Tools access settings |


## set_tenant_dev_tools_access_settings

> <TenantDevToolsAccessSettingsWrapper> set_tenant_dev_tools_access_settings(opts)

Set the Developer Tools access settings

Sets the Developer Tools access settings for the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-dev-tools-access-settings/).

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

api_instance = DocspaceApiSdk::Security::AccessToDevToolsApi.new
opts = {
  tenant_dev_tools_access_settings_dto: DocspaceApiSdk::TenantDevToolsAccessSettingsDto.new # TenantDevToolsAccessSettingsDto | 
}

begin
  # Set the Developer Tools access settings
  result = api_instance.set_tenant_dev_tools_access_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AccessToDevToolsApi->set_tenant_dev_tools_access_settings: #{e}"
end
```

#### Using the set_tenant_dev_tools_access_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantDevToolsAccessSettingsWrapper>, Integer, Hash)> set_tenant_dev_tools_access_settings_with_http_info(opts)

```ruby
begin
  # Set the Developer Tools access settings
  data, status_code, headers = api_instance.set_tenant_dev_tools_access_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantDevToolsAccessSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AccessToDevToolsApi->set_tenant_dev_tools_access_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_dev_tools_access_settings_dto** | [**TenantDevToolsAccessSettingsDto**](TenantDevToolsAccessSettingsDto.md) |  | [optional] |

### Return type

[**TenantDevToolsAccessSettingsWrapper**](TenantDevToolsAccessSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

