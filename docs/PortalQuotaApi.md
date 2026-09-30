# DocspaceApiSdk::PortalQuotaApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_portal_quota**](PortalQuotaApi.md#get_portal_quota) | **GET** /api/2.0/portal/quota | Get the portal quota |
| [**get_portal_tariff**](PortalQuotaApi.md#get_portal_tariff) | **GET** /api/2.0/portal/tariff | Get the portal tariff |
| [**get_portal_used_space**](PortalQuotaApi.md#get_portal_used_space) | **GET** /api/2.0/portal/usedspace | Get the portal used space |
| [**get_right_quota**](PortalQuotaApi.md#get_right_quota) | **GET** /api/2.0/portal/quota/right | Get the recommended quota |
| [**get_upcoming_payments**](PortalQuotaApi.md#get_upcoming_payments) | **GET** /api/2.0/portal/tariff/upcoming | Get upcoming payments |


## get_portal_quota

> <TenantQuotaWrapper> get_portal_quota

Get the portal quota

Returns the quota this portal runs on - the allowance its tariff grants: how many users and paid users it may  have, how many rooms, the largest total and single-file size, the price of the quota and the feature flags  that go with it. The caller needs the portal-settings right and gets 403 without it; the call is read-only and  idempotent. Sizes are in bytes, and `maxTotalSize` comes back as `0` when the calling account's own role is  user, rather than as the real allowance. This is what the portal is allowed, not what it consumes: the  consumption is reported by `GET api/2.0/portal/usedspace` in gigabytes and by `GET api/2.0/portal/userscount`.  The quotas the portal could move to are listed by `GET api/2.0/portal/payment/quotas`, and  `GET api/2.0/portal/quota/right` picks the smallest of them that would still fit. A free or trial quota  carries no price, and the billing state that goes with the quota - paid, in grace period or not paid - is read  from `GET api/2.0/portal/tariff`.

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
  # Get the portal quota
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
  # Get the portal quota
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

Get the portal tariff

Returns the tariff this portal runs on: its state, the end of the current period and the quotas - the plan and  its add-ons - it is made of. Nothing has to be called first, the call is read-only and idempotent, and it  keeps answering while the portal's payment has lapsed, which is what a client needs in order to show a payment  warning. How much of it is filled depends on the caller: every user gets `state`, which is `Trial`, `Paid`,  `Delay` for the grace period after the due date, or `NotPaid`; a room or DocSpace administrator also gets  `dueDate` and `delayDueDate`; and a caller with the portal-settings right additionally gets `id`,  `customerId`, `licenseDate`, the `openSource`, `enterprise` and `developer` flags and `quotas`, each entry  naming the quota, its quantity, its own due date and the quota it switches to next period. Dates are in the  portal time zone. Pass `refresh=true` to re-read the tariff from the billing system instead of the portal  cache - it is slower, so use it after a payment, not on every page. What the next period will cost is listed  by `GET api/2.0/portal/tariff/upcoming`.

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
  refresh: true # Boolean | Whether the tariff is re-read from the billing system instead of the portal cache. The remote read is slower,  so ask for it right after a payment and leave it off for ordinary page loads.
}

begin
  # Get the portal tariff
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
  # Get the portal tariff
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
| **refresh** | **Boolean** | Whether the tariff is re-read from the billing system instead of the portal cache. The remote read is slower,  so ask for it right after a payment and leave it off for ordinary page loads. | [optional] |

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

Returns how much space the content of this portal occupies, in gigabytes rounded to two decimals, so a client  can show the storage bar next to the allowance. The caller needs the portal-settings right and is refused  without it; the call is read-only and idempotent. The number is added up from the storage counters the portal  keeps per owner, which means content that belongs to no account - system data - is not part of it, and it is a  plain number, not an object. The counters are maintained as files are written and removed, so the value is  current but may lag a large operation that is still running. The allowance to compare it with is  `maxTotalSize` from `GET api/2.0/portal/quota`, in bytes rather than gigabytes, and the smallest quota that  would still fit the portal is suggested by `GET api/2.0/portal/quota/right`. This operation says nothing about  which room or user the space belongs to - the per-user figures come from the People API.

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

Recommends the cheapest quota this portal could run on and still fit: the lowest-priced quota that is not  billed yearly, whose user allowance is above the number of active accounts and whose storage allowance is  above the space already used. The caller needs the portal-settings right and gets 403 without it. The call is  read-only, idempotent and buys nothing - it only picks one quota out of those the portal may switch to,  comparing them with the figures that `GET api/2.0/portal/userscount` and `GET api/2.0/portal/usedspace`  report. The answer is a single quota in the same shape as `GET api/2.0/portal/quota`, with sizes in bytes;  when no quota is large enough the answer is an empty body with 200 and not an error, so handle the empty  result as nothing to recommend. Yearly quotas are left out by design, so the recommendation is always a  monthly one - the full list to choose from comes from `GET api/2.0/portal/payment/quotas`, and the purchase  itself is started with `PUT api/2.0/portal/payment/url`.

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

Lists what this portal will be charged next for the quotas of its current tariff - one entry per quota that is  going to be billed, with the amount, the currency and the due date. The caller needs the portal-settings right  and gets 403 without it; the call is read-only and idempotent and keeps answering while the portal's payment  has lapsed. Only quotas that are really charged appear: an overdue quota is skipped, and so is a quota that  has no price of its own, such as a trial or a free plan - which is why the list can come back empty on a  portal that does have a tariff. When a switch to another quota is scheduled for the next period, the entry  describes that next quota and its quantity, so `id` and `name` may differ from what  `GET api/2.0/portal/tariff` reports for today. `amount` is the unit price multiplied by `quantity`, in the  currency named by `currency` as an ISO 4217 code, `dueDate` is in the portal time zone, and `wallet` marks a  service paid from the portal wallet instead of the subscription.

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
  refresh: true # Boolean | Whether the tariff is re-read from the billing system instead of the portal cache. The remote read is slower,  so ask for it right after a payment and leave it off for ordinary page loads.
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
| **refresh** | **Boolean** | Whether the tariff is re-read from the billing system instead of the portal cache. The remote read is slower,  so ask for it right after a payment and leave it off for ordinary page loads. | [optional] |

### Return type

[**UpcomingPaymentArrayWrapper**](UpcomingPaymentArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

