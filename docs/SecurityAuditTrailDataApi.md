# DocspaceApiSdk::SecurityAuditTrailDataApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_audit_trail_report**](SecurityAuditTrailDataApi.md#create_audit_trail_report) | **POST** /api/2.0/security/audit/events/report | Generate the audit trail report |
| [**get_audit_events_by_filter**](SecurityAuditTrailDataApi.md#get_audit_events_by_filter) | **GET** /api/2.0/security/audit/events/filter | Get filtered audit trail data |
| [**get_audit_settings**](SecurityAuditTrailDataApi.md#get_audit_settings) | **GET** /api/2.0/security/audit/settings/lifetime | Get the audit trail settings |
| [**get_audit_trail_mappers**](SecurityAuditTrailDataApi.md#get_audit_trail_mappers) | **GET** /api/2.0/security/audit/mappers | Get audit trail mappers |
| [**get_audit_trail_types**](SecurityAuditTrailDataApi.md#get_audit_trail_types) | **GET** /api/2.0/security/audit/types | Get audit trail types |
| [**get_last_audit_events**](SecurityAuditTrailDataApi.md#get_last_audit_events) | **GET** /api/2.0/security/audit/events/last | Get audit trail data |
| [**set_audit_settings**](SecurityAuditTrailDataApi.md#set_audit_settings) | **POST** /api/2.0/security/audit/settings/lifetime | Set the audit trail settings |


## create_audit_trail_report

> <StringWrapper> create_audit_trail_report

Generate the audit trail report

Generates the audit trail report.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-audit-trail-report/).

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

api_instance = DocspaceApiSdk::Security::AuditTrailDataApi.new

begin
  # Generate the audit trail report
  result = api_instance.create_audit_trail_report
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AuditTrailDataApi->create_audit_trail_report: #{e}"
end
```

#### Using the create_audit_trail_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> create_audit_trail_report_with_http_info

```ruby
begin
  # Generate the audit trail report
  data, status_code, headers = api_instance.create_audit_trail_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AuditTrailDataApi->create_audit_trail_report_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_audit_events_by_filter

> <AuditEventArrayWrapper> get_audit_events_by_filter(opts)

Get filtered audit trail data

Returns a list of the audit events by the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-events-by-filter/).

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

api_instance = DocspaceApiSdk::Security::AuditTrailDataApi.new
opts = {
  user_id: '00000000-0000-0000-0000-000000000001', # String | The ID of the user who triggered the audit event.
  module_type: DocspaceApiSdk::LocationType::None, # LocationType | The location where the audit event occurred.
  action_type: DocspaceApiSdk::ActionType::None, # ActionType | The type of action performed in the audit event (e.g., Create, Update, Delete).
  action: DocspaceApiSdk::MessageAction::LoginSuccess, # MessageAction | The specific action that occurred within the audit event.
  entry_type: DocspaceApiSdk::EntryType::None, # EntryType | The type of audit entry (e.g., Folder, User, File).
  target: 'document.docx', # String | The target object affected by the audit event (e.g., document ID, user account).
  from: DocspaceApiSdk::ApiDateTime.new, # ApiDateTime | The starting date and time for filtering audit events.
  to: DocspaceApiSdk::ApiDateTime.new, # ApiDateTime | The ending date and time for filtering audit events.
  count: 100, # Integer | The maximum number of audit event records to retrieve.
  start_index: 0 # Integer | The index of the first audit event record to retrieve in a paged query.
}

begin
  # Get filtered audit trail data
  result = api_instance.get_audit_events_by_filter(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AuditTrailDataApi->get_audit_events_by_filter: #{e}"
end
```

#### Using the get_audit_events_by_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuditEventArrayWrapper>, Integer, Hash)> get_audit_events_by_filter_with_http_info(opts)

```ruby
begin
  # Get filtered audit trail data
  data, status_code, headers = api_instance.get_audit_events_by_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuditEventArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AuditTrailDataApi->get_audit_events_by_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user who triggered the audit event. | [optional] |
| **module_type** | **LocationType** | The location where the audit event occurred. | [optional] |
| **action_type** | **ActionType** | The type of action performed in the audit event (e.g., Create, Update, Delete). | [optional] |
| **action** | **MessageAction** | The specific action that occurred within the audit event. | [optional] |
| **entry_type** | **EntryType** | The type of audit entry (e.g., Folder, User, File). | [optional] |
| **target** | **String** | The target object affected by the audit event (e.g., document ID, user account). | [optional] |
| **from** | **ApiDateTime** | The starting date and time for filtering audit events. | [optional] |
| **to** | **ApiDateTime** | The ending date and time for filtering audit events. | [optional] |
| **count** | **Integer** | The maximum number of audit event records to retrieve. | [optional] |
| **start_index** | **Integer** | The index of the first audit event record to retrieve in a paged query. | [optional] |

### Return type

[**AuditEventArrayWrapper**](AuditEventArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_audit_settings

> <TenantAuditSettingsWrapper> get_audit_settings

Get the audit trail settings

Returns the audit trail settings.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-settings/).

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

api_instance = DocspaceApiSdk::Security::AuditTrailDataApi.new

begin
  # Get the audit trail settings
  result = api_instance.get_audit_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AuditTrailDataApi->get_audit_settings: #{e}"
end
```

#### Using the get_audit_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantAuditSettingsWrapper>, Integer, Hash)> get_audit_settings_with_http_info

```ruby
begin
  # Get the audit trail settings
  data, status_code, headers = api_instance.get_audit_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantAuditSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AuditTrailDataApi->get_audit_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TenantAuditSettingsWrapper**](TenantAuditSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_audit_trail_mappers

> <ObjectWrapper> get_audit_trail_mappers(opts)

Get audit trail mappers

Returns the mappers for the audit trail types.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-mappers/).

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

api_instance = DocspaceApiSdk::Security::AuditTrailDataApi.new
opts = {
  product_type: DocspaceApiSdk::ProductType::Documents, # ProductType | The type of product related to the audit trail.
  module_type: DocspaceApiSdk::LocationType::None # LocationType | The location associated with the audit trail.
}

begin
  # Get audit trail mappers
  result = api_instance.get_audit_trail_mappers(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AuditTrailDataApi->get_audit_trail_mappers: #{e}"
end
```

#### Using the get_audit_trail_mappers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectWrapper>, Integer, Hash)> get_audit_trail_mappers_with_http_info(opts)

```ruby
begin
  # Get audit trail mappers
  data, status_code, headers = api_instance.get_audit_trail_mappers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AuditTrailDataApi->get_audit_trail_mappers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_type** | **ProductType** | The type of product related to the audit trail. | [optional] |
| **module_type** | **LocationType** | The location associated with the audit trail. | [optional] |

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_audit_trail_types

> <ObjectWrapper> get_audit_trail_types

Get audit trail types

Returns all the available audit trail types.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-audit-trail-types/).

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

api_instance = DocspaceApiSdk::Security::AuditTrailDataApi.new

begin
  # Get audit trail types
  result = api_instance.get_audit_trail_types
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AuditTrailDataApi->get_audit_trail_types: #{e}"
end
```

#### Using the get_audit_trail_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectWrapper>, Integer, Hash)> get_audit_trail_types_with_http_info

```ruby
begin
  # Get audit trail types
  data, status_code, headers = api_instance.get_audit_trail_types_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AuditTrailDataApi->get_audit_trail_types_with_http_info: #{e}"
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


## get_last_audit_events

> <AuditEventArrayWrapper> get_last_audit_events

Get audit trail data

Returns a list of the latest changes (creation, modification, deletion, etc.) made by users to the entities on the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-last-audit-events/).

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

api_instance = DocspaceApiSdk::Security::AuditTrailDataApi.new

begin
  # Get audit trail data
  result = api_instance.get_last_audit_events
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AuditTrailDataApi->get_last_audit_events: #{e}"
end
```

#### Using the get_last_audit_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuditEventArrayWrapper>, Integer, Hash)> get_last_audit_events_with_http_info

```ruby
begin
  # Get audit trail data
  data, status_code, headers = api_instance.get_last_audit_events_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuditEventArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AuditTrailDataApi->get_last_audit_events_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuditEventArrayWrapper**](AuditEventArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_audit_settings

> <TenantAuditSettingsWrapper> set_audit_settings(opts)

Set the audit trail settings

Sets the audit trail settings for the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-audit-settings/).

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

api_instance = DocspaceApiSdk::Security::AuditTrailDataApi.new
opts = {
  tenant_audit_settings_wrapper: DocspaceApiSdk::TenantAuditSettingsWrapper.new # TenantAuditSettingsWrapper | 
}

begin
  # Set the audit trail settings
  result = api_instance.set_audit_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AuditTrailDataApi->set_audit_settings: #{e}"
end
```

#### Using the set_audit_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantAuditSettingsWrapper>, Integer, Hash)> set_audit_settings_with_http_info(opts)

```ruby
begin
  # Set the audit trail settings
  data, status_code, headers = api_instance.set_audit_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantAuditSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::AuditTrailDataApi->set_audit_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_audit_settings_wrapper** | [**TenantAuditSettingsWrapper**](TenantAuditSettingsWrapper.md) |  | [optional] |

### Return type

[**TenantAuditSettingsWrapper**](TenantAuditSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

