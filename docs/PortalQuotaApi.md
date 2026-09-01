# DocspaceApiSdk::PortalQuotaApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_portal_quota**](PortalQuotaApi.md#get_portal_quota) | **GET** /api/2.0/portal/quota | Get a portal quota |
| [**get_portal_tariff**](PortalQuotaApi.md#get_portal_tariff) | **GET** /api/2.0/portal/tariff | Get a portal tariff |
| [**get_portal_used_space**](PortalQuotaApi.md#get_portal_used_space) | **GET** /api/2.0/portal/usedspace | Get the portal used space |
| [**get_right_quota**](PortalQuotaApi.md#get_right_quota) | **GET** /api/2.0/portal/quota/right | Get the recommended quota |
| [**get_upcoming_payments**](PortalQuotaApi.md#get_upcoming_payments) | **GET** /api/2.0/portal/tariff/upcoming | Get upcoming payments |


## get_portal_quota

> <TenantQuotaWrapper> get_portal_quota

Get a portal quota

Returns the current portal quota.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-quota/).

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

api_instance = DocspaceApiSdk::Portal::QuotaApi.new

begin
  # Get a portal quota
  result = api_instance.get_portal_quota
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::QuotaApi->get_portal_quota: #{e}"
end
```

#### Using the get_portal_quota_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantQuotaWrapper>, Integer, Hash)> get_portal_quota_with_http_info

```ruby
begin
  # Get a portal quota
  data, status_code, headers = api_instance.get_portal_quota_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantQuotaWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::QuotaApi->get_portal_quota_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TenantQuotaWrapper**](TenantQuotaWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portal_tariff

> <TariffWrapper> get_portal_tariff(opts)

Get a portal tariff

Returns the current portal tariff.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-tariff/).

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

api_instance = DocspaceApiSdk::Portal::QuotaApi.new
opts = {
  refresh: true # Boolean | The value indicating whether the current portal tariff information should be refreshed.
}

begin
  # Get a portal tariff
  result = api_instance.get_portal_tariff(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::QuotaApi->get_portal_tariff: #{e}"
end
```

#### Using the get_portal_tariff_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TariffWrapper>, Integer, Hash)> get_portal_tariff_with_http_info(opts)

```ruby
begin
  # Get a portal tariff
  data, status_code, headers = api_instance.get_portal_tariff_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TariffWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::QuotaApi->get_portal_tariff_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh** | **Boolean** | The value indicating whether the current portal tariff information should be refreshed. | [optional] |

### Return type

[**TariffWrapper**](TariffWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portal_used_space

> <DoubleWrapper> get_portal_used_space

Get the portal used space

Returns the used space of the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-used-space/).

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

api_instance = DocspaceApiSdk::Portal::QuotaApi.new

begin
  # Get the portal used space
  result = api_instance.get_portal_used_space
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::QuotaApi->get_portal_used_space: #{e}"
end
```

#### Using the get_portal_used_space_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DoubleWrapper>, Integer, Hash)> get_portal_used_space_with_http_info

```ruby
begin
  # Get the portal used space
  data, status_code, headers = api_instance.get_portal_used_space_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DoubleWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::QuotaApi->get_portal_used_space_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**DoubleWrapper**](DoubleWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_right_quota

> <TenantQuotaWrapper> get_right_quota

Get the recommended quota

Returns the recommended quota for the current portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-right-quota/).

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

api_instance = DocspaceApiSdk::Portal::QuotaApi.new

begin
  # Get the recommended quota
  result = api_instance.get_right_quota
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::QuotaApi->get_right_quota: #{e}"
end
```

#### Using the get_right_quota_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantQuotaWrapper>, Integer, Hash)> get_right_quota_with_http_info

```ruby
begin
  # Get the recommended quota
  data, status_code, headers = api_instance.get_right_quota_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantQuotaWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::QuotaApi->get_right_quota_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TenantQuotaWrapper**](TenantQuotaWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_upcoming_payments

> <UpcomingPaymentArrayWrapper> get_upcoming_payments(opts)

Get upcoming payments

Returns the list of upcoming payments based on the active quotas of the current portal tariff.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-upcoming-payments/).

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

api_instance = DocspaceApiSdk::Portal::QuotaApi.new
opts = {
  refresh: true # Boolean | The value indicating whether the current portal tariff information should be refreshed.
}

begin
  # Get upcoming payments
  result = api_instance.get_upcoming_payments(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::QuotaApi->get_upcoming_payments: #{e}"
end
```

#### Using the get_upcoming_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpcomingPaymentArrayWrapper>, Integer, Hash)> get_upcoming_payments_with_http_info(opts)

```ruby
begin
  # Get upcoming payments
  data, status_code, headers = api_instance.get_upcoming_payments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpcomingPaymentArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::QuotaApi->get_upcoming_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh** | **Boolean** | The value indicating whether the current portal tariff information should be refreshed. | [optional] |

### Return type

[**UpcomingPaymentArrayWrapper**](UpcomingPaymentArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

