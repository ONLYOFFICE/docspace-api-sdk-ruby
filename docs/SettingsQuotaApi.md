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

Returns the portal's per-user default storage quota: whether it is enabled and, if so, its size in bytes.  Requires Owner or DocSpaceAdmin (the EditPortalSettings permission); every other authenticated role, and an  anonymous caller, is refused. This is a read-only, idempotent call. When `enableQuota` is false, the size  value is not enforced and users get unlimited personal storage regardless of what it holds. The response  supports conditional requests: send the standard If-Modified-Since header with the previous `lastModified`  value, and an unchanged response comes back empty instead of resending the settings.

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

Sets the portal's default storage quota for AI agents, applied as the starting limit for newly created agents.  Requires Owner or DocSpaceAdmin (the EditPortalSettings permission), and on a paid SaaS tenant the portal's  plan must include the statistics feature, or the call is rejected as not covered by the plan. The requested  size cannot exceed the portal's own total storage quota, nor, on a Standalone install with a portal-wide quota  enabled, that quota's size. Disable enforcement by passing `enableQuota=false`; the size is then ignored for  new agents. This is a mutating, idempotent call: sending the same body again leaves the quota unchanged. It  returns the saved settings, not any agent's current usage.

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

Sets the portal's default per-room storage quota, applied to newly created rooms as their starting limit.  Requires Owner or DocSpaceAdmin (the EditPortalSettings permission), and on a paid SaaS tenant the portal's  plan must include the statistics feature, or the call is rejected as not covered by the plan. The requested  size cannot exceed the portal's own total storage quota, nor, on a Standalone install with a portal-wide quota  enabled, that quota's size. Disable enforcement by passing `enableQuota=false`; the size is then ignored for  new rooms. This is a mutating, idempotent call: sending the same body again leaves the quota unchanged. It  returns the saved settings, not the individual rooms' current usage.

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

Sets or removes the storage quota for a given tenant. Available only on a Standalone (self-hosted)  installation; on SaaS the call is always refused. Requires a DocSpace administrator, and the portal's plan  must include the statistics feature or the call is rejected as not covered by the plan. Pass a non-negative  `quota` in bytes to enable the limit for the tenant identified by `tenantId`, or a negative value to remove  any limit. This is a mutating, idempotent call: sending the same body again leaves the quota unchanged. It  returns the saved quota settings for that tenant, not its current usage.

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

