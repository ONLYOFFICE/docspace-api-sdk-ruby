# DocspaceApiSdk::SettingsQuotaApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_user_quota_settings**](SettingsQuotaApi.md#get_user_quota_settings) | **GET** /api/2.0/settings/userquotasettings | Get the user quota settings |
| [**save_ai_agent_quota_settings**](SettingsQuotaApi.md#save_ai_agent_quota_settings) | **POST** /api/2.0/settings/aiagentquotasettings | Save the AI Agent quota settings |
| [**save_room_quota_settings**](SettingsQuotaApi.md#save_room_quota_settings) | **POST** /api/2.0/settings/roomquotasettings | Save the room quota settings |
| [**set_tenant_quota_settings**](SettingsQuotaApi.md#set_tenant_quota_settings) | **PUT** /api/2.0/settings/tenantquotasettings | Save the tenant quota settings |


## get_user_quota_settings

> <TenantUserQuotaSettingsWrapper> get_user_quota_settings

Get the user quota settings

Returns the user quota settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-user-quota-settings/).

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

api_instance = DocspaceApiSdk::Settings::QuotaApi.new

begin
  # Get the user quota settings
  result = api_instance.get_user_quota_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::QuotaApi->get_user_quota_settings: #{e}"
end
```

#### Using the get_user_quota_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantUserQuotaSettingsWrapper>, Integer, Hash)> get_user_quota_settings_with_http_info

```ruby
begin
  # Get the user quota settings
  data, status_code, headers = api_instance.get_user_quota_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantUserQuotaSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::QuotaApi->get_user_quota_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TenantUserQuotaSettingsWrapper**](TenantUserQuotaSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## save_ai_agent_quota_settings

> <TenantAiAgentQuotaSettingsWrapper> save_ai_agent_quota_settings(opts)

Save the AI Agent quota settings

Saves the AI Agent quota settings specified in the request to the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-ai-agent-quota-settings/).

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

api_instance = DocspaceApiSdk::Settings::QuotaApi.new
opts = {
  quota_settings_requests_dto: DocspaceApiSdk::QuotaSettingsRequestsDto.new({default_quota: nil}) # QuotaSettingsRequestsDto | 
}

begin
  # Save the AI Agent quota settings
  result = api_instance.save_ai_agent_quota_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::QuotaApi->save_ai_agent_quota_settings: #{e}"
end
```

#### Using the save_ai_agent_quota_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantAiAgentQuotaSettingsWrapper>, Integer, Hash)> save_ai_agent_quota_settings_with_http_info(opts)

```ruby
begin
  # Save the AI Agent quota settings
  data, status_code, headers = api_instance.save_ai_agent_quota_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantAiAgentQuotaSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::QuotaApi->save_ai_agent_quota_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quota_settings_requests_dto** | [**QuotaSettingsRequestsDto**](QuotaSettingsRequestsDto.md) |  | [optional] |

### Return type

[**TenantAiAgentQuotaSettingsWrapper**](TenantAiAgentQuotaSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## save_room_quota_settings

> <TenantRoomQuotaSettingsWrapper> save_room_quota_settings(opts)

Save the room quota settings

Saves the room quota settings specified in the request to the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/save-room-quota-settings/).

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

api_instance = DocspaceApiSdk::Settings::QuotaApi.new
opts = {
  quota_settings_requests_dto: DocspaceApiSdk::QuotaSettingsRequestsDto.new({default_quota: nil}) # QuotaSettingsRequestsDto | 
}

begin
  # Save the room quota settings
  result = api_instance.save_room_quota_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::QuotaApi->save_room_quota_settings: #{e}"
end
```

#### Using the save_room_quota_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantRoomQuotaSettingsWrapper>, Integer, Hash)> save_room_quota_settings_with_http_info(opts)

```ruby
begin
  # Save the room quota settings
  data, status_code, headers = api_instance.save_room_quota_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantRoomQuotaSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::QuotaApi->save_room_quota_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quota_settings_requests_dto** | [**QuotaSettingsRequestsDto**](QuotaSettingsRequestsDto.md) |  | [optional] |

### Return type

[**TenantRoomQuotaSettingsWrapper**](TenantRoomQuotaSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_tenant_quota_settings

> <TenantQuotaSettingsWrapper> set_tenant_quota_settings(opts)

Save the tenant quota settings

Saves the tenant quota settings specified in the request to the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-quota-settings/).

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

api_instance = DocspaceApiSdk::Settings::QuotaApi.new
opts = {
  tenant_quota_settings_requests_dto: DocspaceApiSdk::TenantQuotaSettingsRequestsDto.new({tenant_id: 1}) # TenantQuotaSettingsRequestsDto | 
}

begin
  # Save the tenant quota settings
  result = api_instance.set_tenant_quota_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::QuotaApi->set_tenant_quota_settings: #{e}"
end
```

#### Using the set_tenant_quota_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantQuotaSettingsWrapper>, Integer, Hash)> set_tenant_quota_settings_with_http_info(opts)

```ruby
begin
  # Save the tenant quota settings
  data, status_code, headers = api_instance.set_tenant_quota_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantQuotaSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::QuotaApi->set_tenant_quota_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_quota_settings_requests_dto** | [**TenantQuotaSettingsRequestsDto**](TenantQuotaSettingsRequestsDto.md) |  | [optional] |

### Return type

[**TenantQuotaSettingsWrapper**](TenantQuotaSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

