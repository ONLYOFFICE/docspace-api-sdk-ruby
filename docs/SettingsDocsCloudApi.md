# DocspaceApiSdk::SettingsDocsCloudApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**calculate_dev_pack**](SettingsDocsCloudApi.md#calculate_dev_pack) | **POST** /api/2.0/settings/docscloud/calculatedevpack | Calculate the Docs Connect Dev Pack switch cost |
| [**create_tenant_quota_report**](SettingsDocsCloudApi.md#create_tenant_quota_report) | **POST** /api/2.0/settings/docscloud/tenant/quota/report | Start the Docs Connect quota report |
| [**get_tenant**](SettingsDocsCloudApi.md#get_tenant) | **GET** /api/2.0/settings/docscloud/tenant | Get the Docs Connect tenant |
| [**get_tenant_config**](SettingsDocsCloudApi.md#get_tenant_config) | **GET** /api/2.0/settings/docscloud/tenant/config | Get the Docs Connect tenant configuration |
| [**get_tenant_info**](SettingsDocsCloudApi.md#get_tenant_info) | **GET** /api/2.0/settings/docscloud/tenant/info | Get the Docs Connect tenant information |
| [**get_tenant_quota**](SettingsDocsCloudApi.md#get_tenant_quota) | **GET** /api/2.0/settings/docscloud/tenant/quota | Get the Docs Connect tenant quota |
| [**get_tenant_quota_report**](SettingsDocsCloudApi.md#get_tenant_quota_report) | **GET** /api/2.0/settings/docscloud/tenant/quota/report | Get the Docs Connect quota report status |
| [**get_tenant_usage**](SettingsDocsCloudApi.md#get_tenant_usage) | **GET** /api/2.0/settings/docscloud/tenant/usage | Get the Docs Connect tenant usage |
| [**start_docs_cloud_trial**](SettingsDocsCloudApi.md#start_docs_cloud_trial) | **POST** /api/2.0/settings/docscloud/trial | Start the Docs Connect trial |
| [**switch_to_dev_pack**](SettingsDocsCloudApi.md#switch_to_dev_pack) | **POST** /api/2.0/settings/docscloud/switchtodevpack | Switch Docs Connect to Docs Connect Dev Pack |
| [**terminate_tenant_quota_report**](SettingsDocsCloudApi.md#terminate_tenant_quota_report) | **DELETE** /api/2.0/settings/docscloud/tenant/quota/report | Terminate the Docs Connect quota report |
| [**update_tenant_config**](SettingsDocsCloudApi.md#update_tenant_config) | **PUT** /api/2.0/settings/docscloud/tenant/config | Update the Docs Connect tenant configuration |


## calculate_dev_pack

> <PaymentCalculationWrapper> calculate_dev_pack(opts)

Calculate the Docs Connect Dev Pack switch cost

Prices the upgrade of the paid Docs Connect subscription of the current portal to Docs Connect Dev Pack for  the requested number of users, without changing the subscription or charging anything. It applies the  same preconditions as the switch itself: the portal must hold an active Docs Connect subscription, must  not already hold a Docs Connect Dev Pack one, and its tariff must not be delayed or unpaid; the quotas and  the state of the current tariff are listed by `GET api/2.0/portal/tariff`. The caller must be a  DocSpace administrator of a portal registered with the billing service. The call is read-only and  idempotent, so it can be repeated for different quantities before any switch is made. It returns the  amount that switching would cost, the three-letter ISO 4217 currency of that amount, the quantity the  amount was calculated for, and the identifier of the billing operation; an empty result means the  billing service could not price the switch, which should then not be attempted. The switch itself is  performed by `POST api/2.0/settings/docscloud/switchtodevpack` with the same `quantity` and takes no  identifier from this response; to price a change in the number of users of a subscription the portal  already has, use `PUT api/2.0/portal/payment/calculatewallet` instead.

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
  # Calculate the Docs Connect Dev Pack switch cost
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
  # Calculate the Docs Connect Dev Pack switch cost
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

Start the Docs Connect quota report

Queues a background job that renders the current Docs Connect user quota of the portal into an xlsx file and  saves that file in the My documents folder of the calling user; the report lists the editor and the viewer  users with the type and the expiration date of each, and summarizes the internal, external and remaining users  against the license limits. The file is not ready when the response arrives: poll  `GET api/2.0/settings/docscloud/tenant/quota/report` until `isCompleted` is true, then take the file from  `resultFileId` or `resultFileUrl`, and use `DELETE api/2.0/settings/docscloud/tenant/quota/report` to cancel a  job that is still running. The caller must be a portal administrator allowed to edit the portal settings. The  portal should have an activated Docs Connect tenant: this call does not check that, and without a tenant the job  itself fails and reports the reason in the `error` of the status response. One report per caller runs at a  time: while a report of this user is still being built, the call describes that running job and no second  generation is started, so a repeated call is safe. What comes back is the initial state of the job, with  `percentage` 0 and a created `status`, not the report; the report is a point-in-time snapshot and carries the  generation date in its file name. To read the same data as JSON, without building a file, use  `GET api/2.0/settings/docscloud/tenant/quota`.

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
  # Start the Docs Connect quota report
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
  # Start the Docs Connect quota report
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

Get the Docs Connect tenant

Returns the Docs Connect tenant of the current portal: the Docs Connect server assigned to the portal, with its  address, the date the tenant subscription ends and the payment the tenant was created for. A tenant exists  only after a Docs Connect subscription has been granted, by `POST api/2.0/settings/docscloud/trial` or by a  Docs Connect purchase, and only on an installation where the Docs Connect service is configured. The caller must  be a portal administrator allowed to edit the portal settings. The call is read-only and idempotent, and it  is served from a cache that keeps the tenant for an hour and the absence of a tenant for a minute, so pass  `refresh=true` right after a subscription change to read the current state from Docs Connect instead. In the  result, `address` is the absolute URL of the assigned server, `isActive` tells whether `endDate` is still in  the future, and the dates are in UTC. An empty result means the portal has no Docs Connect tenant yet, which is  the normal state before a subscription and not an error, so this is the operation to call to find out whether  Docs Connect is activated at all. The license and server details, the editing settings, the user quota and the  usage statistics are not part of it: they live in `GET api/2.0/settings/docscloud/tenant/info`,  `.../tenant/config`, `.../tenant/quota` and `.../tenant/usage`, each of which fails with 400 while the  portal has no activated tenant.

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
  refresh: true # Boolean | Pass `true` to skip the cached copy and request the tenant from Docs Connect again, replacing the cached one; with the default `false` the answer may be up to an hour old, or up to a minute old while the portal has no tenant.
}

begin
  # Get the Docs Connect tenant
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
  # Get the Docs Connect tenant
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
| **refresh** | **Boolean** | Pass `true` to skip the cached copy and request the tenant from Docs Connect again, replacing the cached one; with the default `false` the answer may be up to an hour old, or up to a minute old while the portal has no tenant. | [optional][default to false] |

### Return type

[**DocsCloudTenantWrapper**](DocsCloudTenantWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_config

> <DocsCloudConfigWrapper> get_tenant_config(opts)

Get the Docs Connect tenant configuration

Returns the configuration of the Docs Connect tenant of the current portal: its name, the security secret and  header name, the file size limit and anonymous access switch of the server, the WOPI switch and the IP filter  rules. The portal must have an activated Docs Connect tenant, granted by `POST api/2.0/settings/docscloud/trial`  or by a Docs Connect purchase: an empty result from `GET api/2.0/settings/docscloud/tenant` means there is none  and this call fails with 400. The caller must be a portal administrator allowed to edit the portal settings,  on an installation where the Docs Connect service is configured. The call is read-only, idempotent and cached for  an hour, so pass `refresh=true` to read the current state from Docs Connect; the same values are changed by  `PUT api/2.0/settings/docscloud/tenant/config`, which drops the cached copy itself, so no refresh is needed  after an update. In the result, `security.secret` is a credential, so the response should be treated as  sensitive; `server.fileSizeLimit` is in bytes and an update cannot raise it above 209715200 (200 MB); and an  empty or absent `ipFilter.rules` means no address restriction is configured. The license and server version,  the address of the assigned server, the per-user quota and the usage counters are not part of it: they live in  `.../tenant/info`, `.../tenant`, `.../tenant/quota` and `.../tenant/usage`.

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
  refresh: true # Boolean | Pass `true` to skip the cached copy and request the configuration from Docs Connect again, replacing the cached one; with the default `false` the answer may be up to an hour old.
}

begin
  # Get the Docs Connect tenant configuration
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
  # Get the Docs Connect tenant configuration
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
| **refresh** | **Boolean** | Pass `true` to skip the cached copy and request the configuration from Docs Connect again, replacing the cached one; with the default `false` the answer may be up to an hour old. | [optional][default to false] |

### Return type

[**DocsCloudConfigWrapper**](DocsCloudConfigWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_info

> <DocsCloudTenantInfoWrapper> get_tenant_info(opts)

Get the Docs Connect tenant information

Returns the Docs Connect license of the current portal, the Docs Connect server serving it, the user limits of  that license and the editor and viewer usage counted against them for the current period. The portal must  have an activated Docs Connect tenant, granted by `POST api/2.0/settings/docscloud/trial` or by a Docs Connect  purchase: an empty result from `GET api/2.0/settings/docscloud/tenant` means there is none and this call  fails with 400. The caller must be a portal administrator allowed to edit the portal settings, on an  installation where the Docs Connect service is configured. The call is read-only, idempotent and cached for a  minute, so pass `refresh=true` right after a subscription change to read the current state from Docs Connect.  In the result, `license.valid` is when the license expires and `license.trial` is reported as `false` once  the portal holds a paid Docs Connect or Docs Connect Dev Pack subscription, even when the license itself still says  trial; `usersLimit` caps the editors and the viewers allowed, `stats` counts the active, internal, external  and remaining users of each of those two kinds over the last `stats.periodDay` days, and the dates are in  UTC. The editing settings, the per-user quota lists and the address of the assigned server live in  `.../tenant/config`, `.../tenant/quota` and `.../tenant`, while `.../tenant/usage` gives one active-user  total instead of this per-role breakdown.

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
  refresh: true # Boolean | Pass `true` to skip the cached copy and request the license, server and usage information from Docs Connect again, replacing the cached one; with the default `false` the answer may be up to a minute old.
}

begin
  # Get the Docs Connect tenant information
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
  # Get the Docs Connect tenant information
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
| **refresh** | **Boolean** | Pass `true` to skip the cached copy and request the license, server and usage information from Docs Connect again, replacing the cached one; with the default `false` the answer may be up to a minute old. | [optional][default to false] |

### Return type

[**DocsCloudTenantInfoWrapper**](DocsCloudTenantInfoWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_quota

> <DocsCloudQuotaWrapper> get_tenant_quota(opts)

Get the Docs Connect tenant quota

Returns the Docs Connect user quota of the current portal: the users who currently count as Docs Connect editors and  the users who count as viewers, each with the identifier Docs Connect knows them by and the date their quota entry  expires. The portal must have an activated Docs Connect tenant, granted by `POST api/2.0/settings/docscloud/trial`  or by a Docs Connect purchase: an empty result from `GET api/2.0/settings/docscloud/tenant` means there is none  and this call fails with 400. The caller must be a portal administrator allowed to edit the portal settings,  on an installation where the Docs Connect service is configured. The call is read-only, idempotent and cached for  a minute, so pass `refresh=true` to read the current state from Docs Connect. In the result, `users` holds the  editor entries and `usersView` the viewer entries, both unordered; `userId` is the DocSpace user ID for a  portal member and an identifier of Docs Connect's own for anyone else; `expire` is the date and time the entry  expires, as a UTC string; and empty lists mean no user has been counted yet. It lists the users themselves,  not the counters: the license limits with the per-role totals are in  `GET api/2.0/settings/docscloud/tenant/info`, a single active-user total is in `.../tenant/usage`, and the  same lists as a downloadable xlsx file are produced by  `POST api/2.0/settings/docscloud/tenant/quota/report`.

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
  refresh: true # Boolean | Pass `true` to skip the cached copy and request the user quota from Docs Connect again, replacing the cached one; with the default `false` the answer may be up to a minute old.
}

begin
  # Get the Docs Connect tenant quota
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
  # Get the Docs Connect tenant quota
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
| **refresh** | **Boolean** | Pass `true` to skip the cached copy and request the user quota from Docs Connect again, replacing the cached one; with the default `false` the answer may be up to a minute old. | [optional][default to false] |

### Return type

[**DocsCloudQuotaWrapper**](DocsCloudQuotaWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_quota_report

> <DocumentBuilderTaskWrapper> get_tenant_quota_report

Get the Docs Connect quota report status

Returns the state of the Docs Connect user quota report that the current user started with  `POST api/2.0/settings/docscloud/tenant/quota/report`, so that the caller can follow the generation and pick  up the resulting file. It reports the caller's own job only: a report started by another administrator is not  visible here, and an empty result means this user has no job, because none was started, because it was  terminated, or because a finished one has already been cleared (a job state is kept for a day, and starting a  new report drops the previous finished one); that is a normal state and not an error. The caller must be a  portal administrator allowed to edit the portal settings. The call is read-only and idempotent, and it is  meant to be polled while the job runs. In the result, `percentage` goes from 0 to 100 and `isCompleted`  becomes true both on success and on failure, so check `error`: it is empty when the report was built and  carries the failure message otherwise;  `resultFileId`, `resultFileName` and `resultFileUrl` are filled in only once the file exists, and that file  also stays in the My documents folder of the caller. Use the `POST` operation on this path to start a report  and the `DELETE` one to cancel it.

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
  # Get the Docs Connect quota report status
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
  # Get the Docs Connect quota report status
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

Get the Docs Connect tenant usage

Returns the Docs Connect usage of the current portal: the number of users who have been active in Docs Connect in  the current period, and the moment that period is counted from. The portal must have an activated Docs Connect  tenant, granted by `POST api/2.0/settings/docscloud/trial` or by a Docs Connect purchase: an empty result from  `GET api/2.0/settings/docscloud/tenant` means there is none and this call fails with 400. The caller must be a  portal administrator allowed to edit the portal settings, on an installation where the Docs Connect service is  configured. The call is read-only, idempotent and cached for a minute, so pass `refresh=true` to read the  current state from Docs Connect. In the result, `activeCount` counts the users seen since `since`, which is in  UTC, and it is one total for the whole tenant, with no split by role and no limit to compare it against. For  the editor and viewer breakdown with the license limits use `GET api/2.0/settings/docscloud/tenant/info`, and  for the users counted one by one `GET api/2.0/settings/docscloud/tenant/quota`.

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
  refresh: true # Boolean | Pass `true` to skip the cached copy and request the usage statistics from Docs Connect again, replacing the cached one; with the default `false` the answer may be up to a minute old.
}

begin
  # Get the Docs Connect tenant usage
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
  # Get the Docs Connect tenant usage
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
| **refresh** | **Boolean** | Pass `true` to skip the cached copy and request the usage statistics from Docs Connect again, replacing the cached one; with the default `false` the answer may be up to a minute old. | [optional][default to false] |

### Return type

[**DocsCloudUsageWrapper**](DocsCloudUsageWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_docs_cloud_trial

> <BooleanWrapper> start_docs_cloud_trial

Start the Docs Connect trial

Activates the free Docs Connect trial subscription for the current portal, and, once a Docs Connect server is  assigned to the portal, allows the address of that server in the Content Security Policy settings.  The portal tariff must be in the trial or paid state (not delayed and not unpaid), and the portal must not  already hold a Docs Connect trial, Docs Connect or Docs Connect Dev Pack subscription: the quotas of the current  tariff are listed by `GET api/2.0/portal/tariff`. The caller must be a portal administrator allowed to edit  the portal settings, on an installation where the billing service is configured. The operation changes the  portal subscription and is not idempotent: repeating it after a successful activation fails with 400.  It returns `true` when the trial has been granted, and `false` when the billing service declines it  (for example, when this portal has already used its trial), in which case nothing is changed. It never buys  a paid plan: an existing paid Docs Connect subscription is moved to Docs Connect Dev Pack by  `POST api/2.0/settings/docscloud/switchtodevpack` instead.

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
  # Start the Docs Connect trial
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
  # Start the Docs Connect trial
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

Switch Docs Connect to Docs Connect Dev Pack

Upgrades the paid Docs Connect subscription of the current portal to Docs Connect Dev Pack for the requested  number of users, charging the price difference to the portal wallet and moving the Docs Connect license  to the new product. The portal must hold an active Docs Connect subscription, must not already hold a  Docs Connect Dev Pack one, and its tariff must not be delayed or unpaid: the quotas and the state of the  current tariff are listed by `GET api/2.0/portal/tariff`, and the amount that will be charged is  returned by `POST api/2.0/settings/docscloud/calculatedevpack` for the same `quantity`. The caller  must be a DocSpace administrator of a portal registered with the billing service. The switch is  synchronous, mutating and not idempotent: repeating it after a successful call fails with 400, and  concurrent calls for one portal are serialized so that the wallet is charged only once. It returns  `true` when the subscription has been switched, and `false` when the billing service declines or  fails to perform the switch, in which case nothing is charged and the portal stays on Docs Connect.  Only the Docs Connect to Docs Connect Dev Pack direction is supported: to change the number of users of a  subscription the portal already has, or to schedule a reversion from Docs Connect Dev Pack back to  Docs Connect at the next billing period, use `PUT api/2.0/portal/payment/updatewallet` instead.

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
  # Switch Docs Connect to Docs Connect Dev Pack
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
  # Switch Docs Connect to Docs Connect Dev Pack
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

Terminate the Docs Connect quota report

Cancels the Docs Connect user quota report that the current user started with  `POST api/2.0/settings/docscloud/tenant/quota/report` and removes its job, so that a new report can be started  right away. There is no precondition: the call is accepted even when this user has no report job at all, and  it affects the caller's own job only, never one started by another administrator. The caller must be a portal  administrator allowed to edit the portal settings. The cancellation is asynchronous and idempotent: 200 means  the request has been queued for the report worker, not that the job has already stopped, so poll  `GET api/2.0/settings/docscloud/tenant/quota/report` until it returns an empty result. Nothing is returned in  the body. A report file that has already been saved in the My documents folder of the caller is left there  and has to be deleted through the file operations if it is no longer wanted.

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
  # Terminate the Docs Connect quota report
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
  # Terminate the Docs Connect quota report
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

Update the Docs Connect tenant configuration

Replaces the configuration of the Docs Connect tenant of the current portal: its name, the security secret and  header name, the file size limit and anonymous access switch of the server, the WOPI switch and the IP filter  rules; it returns the configuration as Docs Connect stored it. The portal must have an activated Docs Connect tenant,  granted by `POST api/2.0/settings/docscloud/trial` or by a Docs Connect purchase: an empty result from  `GET api/2.0/settings/docscloud/tenant` means there is none and this call fails with 400. Read the current  values with `GET api/2.0/settings/docscloud/tenant/config` first and send back whole sections: the sections  left out of the request are not sent to Docs Connect at all, while a section that is present is sent with all of  its fields, so a field left unset inside it goes out as `0`, `false` or empty. The caller must be a portal  administrator allowed to edit the portal settings, on an installation where the Docs Connect service is  configured. The call is mutating,  synchronous and idempotent, it is recorded in the portal audit trail, and it drops the cached configuration  itself, so the next read returns the new values without `refresh=true`. The `tenantName`, `security.secret`,  `security.header` and every `ipFilter.rules` address are capped at 255 characters and `server.fileSizeLimit`  at 209715200 bytes (200 MB); a value outside those bounds is rejected with 400 before anything reaches  Docs Connect. It changes these settings only, never the subscription, the user quota or the license.

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
  # Update the Docs Connect tenant configuration
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
  # Update the Docs Connect tenant configuration
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

