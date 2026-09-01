# DocspaceApiSdk::SettingsDocsCloudApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**calculate_dev_pack**](SettingsDocsCloudApi.md#calculate_dev_pack) | **POST** /api/2.0/settings/docscloud/calculatedevpack | Calculate the DocsCloud subscription switch cost |
| [**create_tenant_quota_report**](SettingsDocsCloudApi.md#create_tenant_quota_report) | **POST** /api/2.0/settings/docscloud/tenant/quota/report | Start the DocsCloud tenant quota report generation |
| [**get_tenant**](SettingsDocsCloudApi.md#get_tenant) | **GET** /api/2.0/settings/docscloud/tenant | Get the DocsCloud tenant |
| [**get_tenant_config**](SettingsDocsCloudApi.md#get_tenant_config) | **GET** /api/2.0/settings/docscloud/tenant/config | Get the DocsCloud tenant configuration |
| [**get_tenant_info**](SettingsDocsCloudApi.md#get_tenant_info) | **GET** /api/2.0/settings/docscloud/tenant/info | Get the DocsCloud tenant information |
| [**get_tenant_quota**](SettingsDocsCloudApi.md#get_tenant_quota) | **GET** /api/2.0/settings/docscloud/tenant/quota | Get the DocsCloud tenant quota |
| [**get_tenant_quota_report**](SettingsDocsCloudApi.md#get_tenant_quota_report) | **GET** /api/2.0/settings/docscloud/tenant/quota/report | Get the status of the DocsCloud tenant quota report generation |
| [**get_tenant_usage**](SettingsDocsCloudApi.md#get_tenant_usage) | **GET** /api/2.0/settings/docscloud/tenant/usage | Get the DocsCloud tenant usage |
| [**start_docs_cloud_trial**](SettingsDocsCloudApi.md#start_docs_cloud_trial) | **POST** /api/2.0/settings/docscloud/trial | Start the DocsCloud trial |
| [**switch_to_dev_pack**](SettingsDocsCloudApi.md#switch_to_dev_pack) | **POST** /api/2.0/settings/docscloud/switchtodevpack | Switch the DocsCloud subscription to DocsCloudDevPack |
| [**terminate_tenant_quota_report**](SettingsDocsCloudApi.md#terminate_tenant_quota_report) | **DELETE** /api/2.0/settings/docscloud/tenant/quota/report | Terminate the DocsCloud tenant quota report generation |
| [**update_tenant_config**](SettingsDocsCloudApi.md#update_tenant_config) | **PUT** /api/2.0/settings/docscloud/tenant/config | Update the DocsCloud tenant configuration |


## calculate_dev_pack

> <PaymentCalculationWrapper> calculate_dev_pack(opts)

Calculate the DocsCloud subscription switch cost

Calculates the top-up cost of switching the current DocsCloud subscription to DocsCloudDevPack,  without making any changes. The quantity is taken from the currently purchased DocsCloud quota.  Only the portal payer can perform this action.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/calculate-dev-pack/).

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

api_instance = DocspaceApiSdk::Settings::DocsCloudApi.new
opts = {
  docs_cloud_dev_pack_request_dto: DocspaceApiSdk::DocsCloudDevPackRequestDto.new # DocsCloudDevPackRequestDto | 
}

begin
  # Calculate the DocsCloud subscription switch cost
  result = api_instance.calculate_dev_pack(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->calculate_dev_pack: #{e}"
end
```

#### Using the calculate_dev_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentCalculationWrapper>, Integer, Hash)> calculate_dev_pack_with_http_info(opts)

```ruby
begin
  # Calculate the DocsCloud subscription switch cost
  data, status_code, headers = api_instance.calculate_dev_pack_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentCalculationWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->calculate_dev_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **docs_cloud_dev_pack_request_dto** | [**DocsCloudDevPackRequestDto**](DocsCloudDevPackRequestDto.md) |  | [optional] |

### Return type

[**PaymentCalculationWrapper**](PaymentCalculationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tenant_quota_report

> <DocumentBuilderTaskWrapper> create_tenant_quota_report

Start the DocsCloud tenant quota report generation

Starts generating the DocsCloud user quota report as an xlsx file and saves it in My Documents.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-tenant-quota-report/).

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

api_instance = DocspaceApiSdk::Settings::DocsCloudApi.new

begin
  # Start the DocsCloud tenant quota report generation
  result = api_instance.create_tenant_quota_report
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->create_tenant_quota_report: #{e}"
end
```

#### Using the create_tenant_quota_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentBuilderTaskWrapper>, Integer, Hash)> create_tenant_quota_report_with_http_info

```ruby
begin
  # Start the DocsCloud tenant quota report generation
  data, status_code, headers = api_instance.create_tenant_quota_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentBuilderTaskWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->create_tenant_quota_report_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant

> <DocsCloudTenantWrapper> get_tenant(opts)

Get the DocsCloud tenant

Returns the DocsCloud tenant of the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant/).

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

api_instance = DocspaceApiSdk::Settings::DocsCloudApi.new
opts = {
  refresh: true # Boolean | Specifies whether to bypass the cache and request the tenant from DocsCloud again.
}

begin
  # Get the DocsCloud tenant
  result = api_instance.get_tenant(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->get_tenant: #{e}"
end
```

#### Using the get_tenant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocsCloudTenantWrapper>, Integer, Hash)> get_tenant_with_http_info(opts)

```ruby
begin
  # Get the DocsCloud tenant
  data, status_code, headers = api_instance.get_tenant_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocsCloudTenantWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->get_tenant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh** | **Boolean** | Specifies whether to bypass the cache and request the tenant from DocsCloud again. | [optional][default to false] |

### Return type

[**DocsCloudTenantWrapper**](DocsCloudTenantWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_config

> <DocsCloudConfigWrapper> get_tenant_config(opts)

Get the DocsCloud tenant configuration

Returns the DocsCloud tenant configuration of the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-config/).

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

api_instance = DocspaceApiSdk::Settings::DocsCloudApi.new
opts = {
  refresh: true # Boolean | Specifies whether to bypass the cache and request the tenant configuration from DocsCloud again.
}

begin
  # Get the DocsCloud tenant configuration
  result = api_instance.get_tenant_config(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->get_tenant_config: #{e}"
end
```

#### Using the get_tenant_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocsCloudConfigWrapper>, Integer, Hash)> get_tenant_config_with_http_info(opts)

```ruby
begin
  # Get the DocsCloud tenant configuration
  data, status_code, headers = api_instance.get_tenant_config_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocsCloudConfigWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->get_tenant_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh** | **Boolean** | Specifies whether to bypass the cache and request the tenant configuration from DocsCloud again. | [optional][default to false] |

### Return type

[**DocsCloudConfigWrapper**](DocsCloudConfigWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_info

> <DocsCloudTenantInfoWrapper> get_tenant_info(opts)

Get the DocsCloud tenant information

Returns the DocsCloud license and server information with usage statistics of the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-info/).

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

api_instance = DocspaceApiSdk::Settings::DocsCloudApi.new
opts = {
  refresh: true # Boolean | Specifies whether to bypass the cache and request the tenant information from DocsCloud again.
}

begin
  # Get the DocsCloud tenant information
  result = api_instance.get_tenant_info(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->get_tenant_info: #{e}"
end
```

#### Using the get_tenant_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocsCloudTenantInfoWrapper>, Integer, Hash)> get_tenant_info_with_http_info(opts)

```ruby
begin
  # Get the DocsCloud tenant information
  data, status_code, headers = api_instance.get_tenant_info_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocsCloudTenantInfoWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->get_tenant_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh** | **Boolean** | Specifies whether to bypass the cache and request the tenant information from DocsCloud again. | [optional][default to false] |

### Return type

[**DocsCloudTenantInfoWrapper**](DocsCloudTenantInfoWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_quota

> <DocsCloudQuotaWrapper> get_tenant_quota(opts)

Get the DocsCloud tenant quota

Returns the DocsCloud user quota (active users) of the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-quota/).

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

api_instance = DocspaceApiSdk::Settings::DocsCloudApi.new
opts = {
  refresh: true # Boolean | Specifies whether to bypass the cache and request the user quota from DocsCloud again.
}

begin
  # Get the DocsCloud tenant quota
  result = api_instance.get_tenant_quota(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->get_tenant_quota: #{e}"
end
```

#### Using the get_tenant_quota_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocsCloudQuotaWrapper>, Integer, Hash)> get_tenant_quota_with_http_info(opts)

```ruby
begin
  # Get the DocsCloud tenant quota
  data, status_code, headers = api_instance.get_tenant_quota_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocsCloudQuotaWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->get_tenant_quota_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh** | **Boolean** | Specifies whether to bypass the cache and request the user quota from DocsCloud again. | [optional][default to false] |

### Return type

[**DocsCloudQuotaWrapper**](DocsCloudQuotaWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_quota_report

> <DocumentBuilderTaskWrapper> get_tenant_quota_report

Get the status of the DocsCloud tenant quota report generation

Returns the status of generating the DocsCloud user quota report.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-quota-report/).

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

api_instance = DocspaceApiSdk::Settings::DocsCloudApi.new

begin
  # Get the status of the DocsCloud tenant quota report generation
  result = api_instance.get_tenant_quota_report
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->get_tenant_quota_report: #{e}"
end
```

#### Using the get_tenant_quota_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentBuilderTaskWrapper>, Integer, Hash)> get_tenant_quota_report_with_http_info

```ruby
begin
  # Get the status of the DocsCloud tenant quota report generation
  data, status_code, headers = api_instance.get_tenant_quota_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentBuilderTaskWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->get_tenant_quota_report_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_usage

> <DocsCloudUsageWrapper> get_tenant_usage(opts)

Get the DocsCloud tenant usage

Returns the DocsCloud usage statistics of the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-usage/).

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

api_instance = DocspaceApiSdk::Settings::DocsCloudApi.new
opts = {
  refresh: true # Boolean | Specifies whether to bypass the cache and request the usage statistics from DocsCloud again.
}

begin
  # Get the DocsCloud tenant usage
  result = api_instance.get_tenant_usage(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->get_tenant_usage: #{e}"
end
```

#### Using the get_tenant_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocsCloudUsageWrapper>, Integer, Hash)> get_tenant_usage_with_http_info(opts)

```ruby
begin
  # Get the DocsCloud tenant usage
  data, status_code, headers = api_instance.get_tenant_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocsCloudUsageWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->get_tenant_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh** | **Boolean** | Specifies whether to bypass the cache and request the usage statistics from DocsCloud again. | [optional][default to false] |

### Return type

[**DocsCloudUsageWrapper**](DocsCloudUsageWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_docs_cloud_trial

> <BooleanWrapper> start_docs_cloud_trial

Start the DocsCloud trial

Starts the DocsCloud trial.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/start-docs-cloud-trial/).

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

api_instance = DocspaceApiSdk::Settings::DocsCloudApi.new

begin
  # Start the DocsCloud trial
  result = api_instance.start_docs_cloud_trial
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->start_docs_cloud_trial: #{e}"
end
```

#### Using the start_docs_cloud_trial_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> start_docs_cloud_trial_with_http_info

```ruby
begin
  # Start the DocsCloud trial
  data, status_code, headers = api_instance.start_docs_cloud_trial_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->start_docs_cloud_trial_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## switch_to_dev_pack

> <BooleanWrapper> switch_to_dev_pack(opts)

Switch the DocsCloud subscription to DocsCloudDevPack

Switches the current DocsCloud subscription to DocsCloudDevPack: charges the price difference  from the wallet and transfers the subscription (with its license) to the target product.  The quantity is taken from the currently purchased DocsCloud quota.  Only the portal payer can perform this action.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/switch-to-dev-pack/).

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

api_instance = DocspaceApiSdk::Settings::DocsCloudApi.new
opts = {
  docs_cloud_dev_pack_request_dto: DocspaceApiSdk::DocsCloudDevPackRequestDto.new # DocsCloudDevPackRequestDto | 
}

begin
  # Switch the DocsCloud subscription to DocsCloudDevPack
  result = api_instance.switch_to_dev_pack(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->switch_to_dev_pack: #{e}"
end
```

#### Using the switch_to_dev_pack_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> switch_to_dev_pack_with_http_info(opts)

```ruby
begin
  # Switch the DocsCloud subscription to DocsCloudDevPack
  data, status_code, headers = api_instance.switch_to_dev_pack_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->switch_to_dev_pack_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **docs_cloud_dev_pack_request_dto** | [**DocsCloudDevPackRequestDto**](DocsCloudDevPackRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## terminate_tenant_quota_report

> terminate_tenant_quota_report

Terminate the DocsCloud tenant quota report generation

Terminates generating the DocsCloud user quota report.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-tenant-quota-report/).

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

api_instance = DocspaceApiSdk::Settings::DocsCloudApi.new

begin
  # Terminate the DocsCloud tenant quota report generation
  api_instance.terminate_tenant_quota_report
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->terminate_tenant_quota_report: #{e}"
end
```

#### Using the terminate_tenant_quota_report_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> terminate_tenant_quota_report_with_http_info

```ruby
begin
  # Terminate the DocsCloud tenant quota report generation
  data, status_code, headers = api_instance.terminate_tenant_quota_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->terminate_tenant_quota_report_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_tenant_config

> <DocsCloudConfigWrapper> update_tenant_config(opts)

Update the DocsCloud tenant configuration

Updates the DocsCloud tenant configuration of the current portal with the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-tenant-config/).

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

api_instance = DocspaceApiSdk::Settings::DocsCloudApi.new
opts = {
  docs_cloud_config: DocspaceApiSdk::DocsCloudConfig.new # DocsCloudConfig | 
}

begin
  # Update the DocsCloud tenant configuration
  result = api_instance.update_tenant_config(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->update_tenant_config: #{e}"
end
```

#### Using the update_tenant_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocsCloudConfigWrapper>, Integer, Hash)> update_tenant_config_with_http_info(opts)

```ruby
begin
  # Update the DocsCloud tenant configuration
  data, status_code, headers = api_instance.update_tenant_config_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocsCloudConfigWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Settings::DocsCloudApi->update_tenant_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **docs_cloud_config** | [**DocsCloudConfig**](DocsCloudConfig.md) |  | [optional] |

### Return type

[**DocsCloudConfigWrapper**](DocsCloudConfigWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

