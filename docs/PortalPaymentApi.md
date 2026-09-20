# DocspaceApiSdk::PortalPaymentApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**calculate_wallet_payment**](PortalPaymentApi.md#calculate_wallet_payment) | **PUT** /api/2.0/portal/payment/calculatewallet | Calculate the wallet payment amount |
| [**change_tenant_wallet_service_state**](PortalPaymentApi.md#change_tenant_wallet_service_state) | **POST** /api/2.0/portal/payment/servicestate | Switch a wallet service |
| [**create_customer_monthly_usage_report**](PortalPaymentApi.md#create_customer_monthly_usage_report) | **POST** /api/2.0/portal/payment/customer/usage/monthly/report | Start the monthly usage report |
| [**create_customer_operations_report**](PortalPaymentApi.md#create_customer_operations_report) | **POST** /api/2.0/portal/payment/customer/operationsreport | Start the operations report |
| [**create_customer_service_usage_report**](PortalPaymentApi.md#create_customer_service_usage_report) | **POST** /api/2.0/portal/payment/customer/usage/report | Start the service usage report |
| [**get_accounting_service_prices**](PortalPaymentApi.md#get_accounting_service_prices) | **GET** /api/2.0/portal/payment/accounting/prices/{serviceName} | Get the service prices from the accounting service |
| [**get_active_services**](PortalPaymentApi.md#get_active_services) | **GET** /api/2.0/portal/payment/activeservices | Get the active wallet services |
| [**get_ai_prices**](PortalPaymentApi.md#get_ai_prices) | **GET** /api/2.0/portal/payment/ai-prices | Get AI model prices |
| [**get_checkout_setup_url**](PortalPaymentApi.md#get_checkout_setup_url) | **GET** /api/2.0/portal/payment/checkoutsetupurl | Get the checkout setup page URL |
| [**get_customer_balance**](PortalPaymentApi.md#get_customer_balance) | **GET** /api/2.0/portal/payment/customer/balance | Get the customer balance |
| [**get_customer_info**](PortalPaymentApi.md#get_customer_info) | **GET** /api/2.0/portal/payment/customerinfo | Get the customer information |
| [**get_customer_monthly_usage**](PortalPaymentApi.md#get_customer_monthly_usage) | **GET** /api/2.0/portal/payment/customer/usage/monthly | Get the customer monthly usage |
| [**get_customer_monthly_usage_report**](PortalPaymentApi.md#get_customer_monthly_usage_report) | **GET** /api/2.0/portal/payment/customer/usage/monthly/report | Get the monthly usage report status |
| [**get_customer_operations**](PortalPaymentApi.md#get_customer_operations) | **GET** /api/2.0/portal/payment/customer/operations | Get the wallet operations |
| [**get_customer_operations_report**](PortalPaymentApi.md#get_customer_operations_report) | **GET** /api/2.0/portal/payment/customer/operationsreport | Get the operations report status |
| [**get_customer_service_usage**](PortalPaymentApi.md#get_customer_service_usage) | **GET** /api/2.0/portal/payment/customer/usage | Get the customer service usage |
| [**get_customer_service_usage_report**](PortalPaymentApi.md#get_customer_service_usage_report) | **GET** /api/2.0/portal/payment/customer/usage/report | Get the service usage report status |
| [**get_payment_account**](PortalPaymentApi.md#get_payment_account) | **GET** /api/2.0/portal/payment/account | Get the billing account page |
| [**get_payment_currencies**](PortalPaymentApi.md#get_payment_currencies) | **GET** /api/2.0/portal/payment/currencies | Get the billing currencies |
| [**get_payment_quotas**](PortalPaymentApi.md#get_payment_quotas) | **GET** /api/2.0/portal/payment/quotas | Get the purchasable quotas |
| [**get_payment_url**](PortalPaymentApi.md#get_payment_url) | **PUT** /api/2.0/portal/payment/url | Get the payment page URL |
| [**get_portal_prices**](PortalPaymentApi.md#get_portal_prices) | **GET** /api/2.0/portal/payment/prices | Get the product prices |
| [**get_quota_payment_information**](PortalPaymentApi.md#get_quota_payment_information) | **GET** /api/2.0/portal/payment/quota | Get the current plan and limits |
| [**get_restricted_ai_models**](PortalPaymentApi.md#get_restricted_ai_models) | **GET** /api/2.0/portal/payment/ai-model/restrictions | Get restricted AI models |
| [**get_subscription_balance_info**](PortalPaymentApi.md#get_subscription_balance_info) | **GET** /api/2.0/portal/payment/subscription/balance | Get the subscription balance information |
| [**get_tenant_wallet_service_settings**](PortalPaymentApi.md#get_tenant_wallet_service_settings) | **GET** /api/2.0/portal/payment/servicessettings | Get the wallet service settings |
| [**get_tenant_wallet_settings**](PortalPaymentApi.md#get_tenant_wallet_settings) | **GET** /api/2.0/portal/payment/topupsettings | Get the auto top-up settings |
| [**get_wallet_service**](PortalPaymentApi.md#get_wallet_service) | **GET** /api/2.0/portal/payment/walletservice | Get a wallet service |
| [**get_wallet_services**](PortalPaymentApi.md#get_wallet_services) | **GET** /api/2.0/portal/payment/walletservices | Get wallet services |
| [**move_subscription_to_wallet**](PortalPaymentApi.md#move_subscription_to_wallet) | **POST** /api/2.0/portal/payment/subscription/movetowallet | Move the subscription to the wallet |
| [**send_payment_request**](PortalPaymentApi.md#send_payment_request) | **POST** /api/2.0/portal/payment/request | Contact the sales team |
| [**set_restricted_ai_models**](PortalPaymentApi.md#set_restricted_ai_models) | **PUT** /api/2.0/portal/payment/ai-model/restrictions | Set restricted AI models |
| [**set_tenant_wallet_settings**](PortalPaymentApi.md#set_tenant_wallet_settings) | **POST** /api/2.0/portal/payment/topupsettings | Set the auto top-up settings |
| [**terminate_customer_monthly_usage_report**](PortalPaymentApi.md#terminate_customer_monthly_usage_report) | **DELETE** /api/2.0/portal/payment/customer/usage/monthly/report | Terminate the monthly usage report |
| [**terminate_customer_operations_report**](PortalPaymentApi.md#terminate_customer_operations_report) | **DELETE** /api/2.0/portal/payment/customer/operationsreport | Terminate the operations report |
| [**terminate_customer_service_usage_report**](PortalPaymentApi.md#terminate_customer_service_usage_report) | **DELETE** /api/2.0/portal/payment/customer/usage/report | Terminate the service usage report |
| [**top_up_deposit**](PortalPaymentApi.md#top_up_deposit) | **POST** /api/2.0/portal/payment/deposit | Top up the wallet |
| [**update_payment**](PortalPaymentApi.md#update_payment) | **PUT** /api/2.0/portal/payment/update | Change the subscription quantity |
| [**update_wallet_payment**](PortalPaymentApi.md#update_wallet_payment) | **PUT** /api/2.0/portal/payment/updatewallet | Change a wallet service quantity |


## calculate_wallet_payment

> <PaymentCalculationWrapper> calculate_wallet_payment(opts)

Calculate the wallet payment amount

Prices a wallet-service purchase without making it: it returns what buying the requested number of units would  cost right now, so a client can show the amount before asking for a confirmation. Only `productQuantityType`  `Add` (1) is accepted, the quantity must be greater than zero, and the portal needs a billing customer whose  wallet has a sub-account in the accounting currency. The caller has to be a DocSpace administrator. Nothing is  bought, charged or written down - the call is read-only and may be repeated - and the purchase itself is  `PUT api/2.0/portal/payment/updatewallet`. The answer carries the amount with its currency, the quantity it  was computed for and the identifier of the calculation. It is the price of this moment and is not held: it can  differ by the time the purchase is made.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/calculate-wallet-payment/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  wallet_quantity_request_dto: DocspaceApiSdk::WalletQuantityRequestDto.new({quantity: { key: 37}}) # WalletQuantityRequestDto | 
}

begin
  # Calculate the wallet payment amount
  result = api_instance.calculate_wallet_payment(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->calculate_wallet_payment: #{e}"
end
```

#### Using the calculate_wallet_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentCalculationWrapper>, Integer, Hash)> calculate_wallet_payment_with_http_info(opts)

```ruby
begin
  # Calculate the wallet payment amount
  data, status_code, headers = api_instance.calculate_wallet_payment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentCalculationWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->calculate_wallet_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_quantity_request_dto** | [**WalletQuantityRequestDto**](WalletQuantityRequestDto.md) |  | [optional] |

### Return type

[**PaymentCalculationWrapper**](PaymentCalculationWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_tenant_wallet_service_state

> <TenantWalletServiceSettingsWrapper> change_tenant_wallet_service_state(opts)

Switch a wallet service

Switches one wallet service on or off for the portal: `service` names it and `enabled` says which way. The  portal needs a billing customer, and the caller needs both the permission to edit the portal settings and  DocSpace administrator rights. Order matters between the two AI services - AI tools has to be on before AI  search may be switched on, and switching AI tools off switches AI search off with it - so a request that  breaks that order is refused with 403. The call is mutating and idempotent: switching on a service that is  already on changes nothing. It is written to the portal audit trail, and switching AI tools notifies the  portal clients so the AI features appear or disappear for them without a reload. The whole updated set of  switched-on services comes back. Switching a service on does not buy it - its units are still bought with  `PUT api/2.0/portal/payment/updatewallet`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/change-tenant-wallet-service-state/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  change_wallet_service_state_request_dto: DocspaceApiSdk::ChangeWalletServiceStateRequestDto.new # ChangeWalletServiceStateRequestDto | 
}

begin
  # Switch a wallet service
  result = api_instance.change_tenant_wallet_service_state(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->change_tenant_wallet_service_state: #{e}"
end
```

#### Using the change_tenant_wallet_service_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantWalletServiceSettingsWrapper>, Integer, Hash)> change_tenant_wallet_service_state_with_http_info(opts)

```ruby
begin
  # Switch a wallet service
  data, status_code, headers = api_instance.change_tenant_wallet_service_state_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantWalletServiceSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->change_tenant_wallet_service_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_wallet_service_state_request_dto** | [**ChangeWalletServiceStateRequestDto**](ChangeWalletServiceStateRequestDto.md) |  | [optional] |

### Return type

[**TenantWalletServiceSettingsWrapper**](TenantWalletServiceSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_customer_monthly_usage_report

> <DocumentBuilderTaskWrapper> create_customer_monthly_usage_report(opts)

Start the monthly usage report

Queues the wallet spending added up per calendar month as an `xlsx` file and returns the task that will build  it; the file is not ready when the response arrives. The portal needs a billing customer and the caller has to  be a DocSpace administrator. The body takes only the period - `startDate` and `endDate`, both inclusive - and  an empty body covers everything from the portal creation date to now; the months are cut in the portal time  zone, exactly as in `GET api/2.0/portal/payment/customer/usage/monthly`. Poll  `GET api/2.0/portal/payment/customer/usage/monthly/report` until `isCompleted` is true, then take the file  from `resultFileUrl` or open `resultFileId`: the finished file is saved into the caller's own My documents  section, where it counts against the portal storage like any other file. One monthly usage report per user is  tracked at a time - a call made while the previous one is still running answers with that task - and  `DELETE api/2.0/portal/payment/customer/usage/monthly/report` stops it. There is no service filter here: for a  report per service use `POST api/2.0/portal/payment/customer/usage/report`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-customer-monthly-usage-report/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  customer_monthly_usage_report_request_dto: DocspaceApiSdk::CustomerMonthlyUsageReportRequestDto.new # CustomerMonthlyUsageReportRequestDto | 
}

begin
  # Start the monthly usage report
  result = api_instance.create_customer_monthly_usage_report(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->create_customer_monthly_usage_report: #{e}"
end
```

#### Using the create_customer_monthly_usage_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentBuilderTaskWrapper>, Integer, Hash)> create_customer_monthly_usage_report_with_http_info(opts)

```ruby
begin
  # Start the monthly usage report
  data, status_code, headers = api_instance.create_customer_monthly_usage_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentBuilderTaskWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->create_customer_monthly_usage_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_monthly_usage_report_request_dto** | [**CustomerMonthlyUsageReportRequestDto**](CustomerMonthlyUsageReportRequestDto.md) |  | [optional] |

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_customer_operations_report

> <DocumentBuilderTaskWrapper> create_customer_operations_report(opts)

Start the operations report

Queues the history of the wallet movements as an `xlsx` file and returns the task that will build it; the file  is not ready when the response arrives. The portal needs a billing customer and the caller has to be a  DocSpace administrator. The body takes the same filters as `GET api/2.0/portal/payment/customer/operations` -  the service names, the date range, the participant, the operation type and status, the credit and debit  directions and the ordering - and an empty body reports everything from the portal creation date to now; a  service name this installation does not sell fails with 404. Poll  `GET api/2.0/portal/payment/customer/operationsreport` until `isCompleted` is true, then take the file from  `resultFileUrl` or open `resultFileId`: the finished file is saved into the caller's own My documents section,  where it counts against the portal storage like any other file. One operations report per user is tracked at a  time - a call made while the previous one is still running answers with that task - and  `DELETE api/2.0/portal/payment/customer/operationsreport` stops it. A build that fails ends the task with  `error` filled in rather than failing this call.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-customer-operations-report/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  customer_operations_report_request_dto: DocspaceApiSdk::CustomerOperationsReportRequestDto.new # CustomerOperationsReportRequestDto | 
}

begin
  # Start the operations report
  result = api_instance.create_customer_operations_report(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->create_customer_operations_report: #{e}"
end
```

#### Using the create_customer_operations_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentBuilderTaskWrapper>, Integer, Hash)> create_customer_operations_report_with_http_info(opts)

```ruby
begin
  # Start the operations report
  data, status_code, headers = api_instance.create_customer_operations_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentBuilderTaskWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->create_customer_operations_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_operations_report_request_dto** | [**CustomerOperationsReportRequestDto**](CustomerOperationsReportRequestDto.md) |  | [optional] |

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_customer_service_usage_report

> <DocumentBuilderTaskWrapper> create_customer_service_usage_report(opts)

Start the service usage report

Queues the usage of the wallet services as an `xlsx` file and returns the task that will build it; the file is  not ready when the response arrives. The portal needs a billing customer and the caller has to be a DocSpace  administrator. The body takes the same filters as `GET api/2.0/portal/payment/customer/usage` - the service  names, the date range, the participant, the operation status, the usage metadata and the ordering - and an  empty body reports every service from the portal creation date to now; a service name this installation does  not sell fails with 404. Poll `GET api/2.0/portal/payment/customer/usage/report` until `isCompleted` is true,  then take the file from `resultFileUrl` or open `resultFileId`: the finished file is saved into the caller's  own My documents section, where it counts against the portal storage like any other file. One service usage  report per user is tracked at a time - a call made while the previous one is still running answers with that  task - and `DELETE api/2.0/portal/payment/customer/usage/report` stops it. It is a different report from the  operations one and does not interfere with it: per-movement history is  `POST api/2.0/portal/payment/customer/operationsreport`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-customer-service-usage-report/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  customer_service_usage_report_request_dto: DocspaceApiSdk::CustomerServiceUsageReportRequestDto.new # CustomerServiceUsageReportRequestDto | 
}

begin
  # Start the service usage report
  result = api_instance.create_customer_service_usage_report(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->create_customer_service_usage_report: #{e}"
end
```

#### Using the create_customer_service_usage_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentBuilderTaskWrapper>, Integer, Hash)> create_customer_service_usage_report_with_http_info(opts)

```ruby
begin
  # Start the service usage report
  data, status_code, headers = api_instance.create_customer_service_usage_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentBuilderTaskWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->create_customer_service_usage_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_service_usage_report_request_dto** | [**CustomerServiceUsageReportRequestDto**](CustomerServiceUsageReportRequestDto.md) |  | [optional] |

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_accounting_service_prices

> <ServicePriceInfoArrayWrapper> get_accounting_service_prices(service_name, opts)

Get the service prices from the accounting service

Returns the portal's automatic wallet top-up settings: whether it is switched on, the balance that triggers  it, the balance it tops the wallet up to and the currency it charges in. Only a DocSpace administrator may  read it, no billing customer is needed, and the call is read-only. A portal that has never configured it gets  the defaults rather than an empty result, so `enabled` is the field that says whether anything happens at all.  Two of the values are kept by the portal itself and cannot be set through this API: `lowBalanceThreshold` is  the balance below which the portal warns its administrators by mail, and `lowBalanceNotified` says whether  that warning has already gone out for the current dip. Change the rest with  `POST api/2.0/portal/payment/topupsettings`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-accounting-service-prices/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
service_name = 'ai-tools' # String | The service whose price list is read, named the way the billing catalogue names it, such as `ai-tools` or  `backup`. Take the value from the `serviceName` field of `GET api/2.0/portal/payment/walletservices`; a name  the accounting service does not price yields an empty list rather than an error.
opts = {
  active: false # Boolean | Whether the answer is narrowed to the prices in force at the moment of the call. Leaving it false also  returns the retired and the not yet started ones, which is what pricing a movement recorded in the past  needs.
}

begin
  # Get the service prices from the accounting service
  result = api_instance.get_accounting_service_prices(service_name, opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_accounting_service_prices: #{e}"
end
```

#### Using the get_accounting_service_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServicePriceInfoArrayWrapper>, Integer, Hash)> get_accounting_service_prices_with_http_info(service_name, opts)

```ruby
begin
  # Get the service prices from the accounting service
  data, status_code, headers = api_instance.get_accounting_service_prices_with_http_info(service_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServicePriceInfoArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_accounting_service_prices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_name** | **String** | The service whose price list is read, named the way the billing catalogue names it, such as `ai-tools` or  `backup`. Take the value from the `serviceName` field of `GET api/2.0/portal/payment/walletservices`; a name  the accounting service does not price yields an empty list rather than an error. |  |
| **active** | **Boolean** | Whether the answer is narrowed to the prices in force at the moment of the call. Leaving it false also  returns the retired and the not yet started ones, which is what pricing a movement recorded in the past  needs. | [optional] |

### Return type

[**ServicePriceInfoArrayWrapper**](ServicePriceInfoArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_active_services

> <ActiveServiceArrayWrapper> get_active_services

Get the active wallet services

Lists the wallet services the portal is running right now: the add-ons its plan pays for that are in the  active state, plus the ones an administrator switched on by hand in the wallet service settings; the DocsCloud  trial is listed as well, although it is not paid from the wallet. Only a DocSpace administrator may call it,  no billing customer is needed for it, and the call is read-only. Every item names the service, its title and  the unit it is measured in, and says whether it is a subscription; a subscribed service also carries the limit  it grants and how much of it is used where that number is known - the editor seats and the editors currently  active for DocsCloud, the purchased units and the units already consumed for disk storage. A service listed  with no limit is one whose usage is not counted this way, not one without a limit. The catalogue of what could  be switched on is `GET api/2.0/portal/payment/walletservices`, and switching one is  `POST api/2.0/portal/payment/servicestate`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-active-services/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new

begin
  # Get the active wallet services
  result = api_instance.get_active_services
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_active_services: #{e}"
end
```

#### Using the get_active_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActiveServiceArrayWrapper>, Integer, Hash)> get_active_services_with_http_info

```ruby
begin
  # Get the active wallet services
  data, status_code, headers = api_instance.get_active_services_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActiveServiceArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_active_services_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ActiveServiceArrayWrapper**](ActiveServiceArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ai_prices

> <AiPricesWrapper> get_ai_prices

Get AI model prices

Returns the price list of the AI features the portal pays for out of its wallet: the chat models with the  price of their prompt and completion tokens, the embedding models, the image models with their per-image  price, and the web search providers with the price of one search. The installation needs both a billing  service and the AI gateway configured, otherwise the answer is 403, and only a DocSpace administrator may read  it; the call is read-only. Token prices are normalised per million tokens, and every price is in the single  `currency` the answer names. Each entry carries the model identifier to use when talking to the AI operations,  its display alias, its provider with the provider icon, and a link to the model's own page. It is a list of  what the models cost and not of what the portal spent - that is `GET api/2.0/portal/payment/customer/usage` -  and it says nothing about which of them are allowed here, which is  `GET api/2.0/portal/payment/ai-model/restrictions`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-ai-prices/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new

begin
  # Get AI model prices
  result = api_instance.get_ai_prices
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_ai_prices: #{e}"
end
```

#### Using the get_ai_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AiPricesWrapper>, Integer, Hash)> get_ai_prices_with_http_info

```ruby
begin
  # Get AI model prices
  data, status_code, headers = api_instance.get_ai_prices_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiPricesWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_ai_prices_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AiPricesWrapper**](AiPricesWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_checkout_setup_url

> <StringWrapper> get_checkout_setup_url(back_url, success_url)

Get the checkout setup page URL

Hands back the hosted page on which a payment method is attached to the portal's billing account, for the case  where money has to be taken later - a wallet top-up or an automatic one - rather than a plan bought now. A  portal that already has a payment method on file answers with an empty result; a DocSpace administrator may  ask for the page, but once the portal has a billing customer with an e-mail, only its payer may. The call  itself changes nothing and may be repeated: the payment method is stored by the payment provider when the  returned page is completed, after which `GET api/2.0/portal/payment/customerinfo` reports it as set. The URL  is absolute, carries the caller's e-mail, the language of the request and the currency of the region, and  redirects to `successUrl` or `backUrl` when the user finishes or cancels. It buys nothing - a plan is bought  with `PUT api/2.0/portal/payment/url`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-checkout-setup-url/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
back_url = 'https://example.com/payment/back' # String | The absolute address the setup page sends the user back to when attaching a payment method is abandoned. It  has to be a well-formed URL and must be reachable by that user rather than by the portal.
success_url = 'https://example.com/payment/success' # String | The absolute address the setup page sends the user to once the payment provider has stored the payment  method. Reaching it means a method is now on file, which `GET api/2.0/portal/payment/customerinfo` confirms;  nothing has been charged.

begin
  # Get the checkout setup page URL
  result = api_instance.get_checkout_setup_url(back_url, success_url)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_checkout_setup_url: #{e}"
end
```

#### Using the get_checkout_setup_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> get_checkout_setup_url_with_http_info(back_url, success_url)

```ruby
begin
  # Get the checkout setup page URL
  data, status_code, headers = api_instance.get_checkout_setup_url_with_http_info(back_url, success_url)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_checkout_setup_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **back_url** | **String** | The absolute address the setup page sends the user back to when attaching a payment method is abandoned. It  has to be a well-formed URL and must be reachable by that user rather than by the portal. |  |
| **success_url** | **String** | The absolute address the setup page sends the user to once the payment provider has stored the payment  method. Reaching it means a method is now on file, which `GET api/2.0/portal/payment/customerinfo` confirms;  nothing has been charged. |  |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_balance

> <BalanceWrapper> get_customer_balance(opts)

Get the customer balance

Returns the money the portal has in its wallet as the accounting service holds it: the account with its own  currency, one sub-account per currency with the amount on it, and the most recent credit movement. Only a  DocSpace administrator may read it, an installation without a billing service answers 403, and a portal that  has never been a customer gets an empty result. The call is read-only. This balance is what the wallet  services are charged against, so it falls as they are used and rises with  `POST api/2.0/portal/payment/deposit`; the movements behind a change are listed by  `GET api/2.0/portal/payment/customer/operations`. Pass `refresh=true` to re-read it from the accounting  service rather than the cache - right after a top-up the cached figure is still the old one.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-balance/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  refresh: true # Boolean | Whether the answer is fetched from the billing service instead of the portal cache. The cached copy is what a  start-up needs and costs nothing; asking for a fresh one makes a remote call, so use it right after a  purchase or a top-up and not on every read.
}

begin
  # Get the customer balance
  result = api_instance.get_customer_balance(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_balance: #{e}"
end
```

#### Using the get_customer_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BalanceWrapper>, Integer, Hash)> get_customer_balance_with_http_info(opts)

```ruby
begin
  # Get the customer balance
  data, status_code, headers = api_instance.get_customer_balance_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BalanceWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_balance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh** | **Boolean** | Whether the answer is fetched from the billing service instead of the portal cache. The cached copy is what a  start-up needs and costs nothing; asking for a fresh one makes a remote call, so use it right after a  purchase or a top-up and not on every read. | [optional] |

### Return type

[**BalanceWrapper**](BalanceWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_info

> <CustomerInfoWrapper> get_customer_info(opts)

Get the customer information

Returns the billing customer behind the portal: the e-mail its billing account is registered to, whether a  payment method is stored for it, and the portal user who is the payer of that account. Only a DocSpace  administrator may read it, and the call is read-only. The answer is empty in two ordinary cases - the  installation has no billing service configured at all, and the portal has never been a customer - so an empty  body is not an error. `payer` is filled in only when the billing e-mail belongs to a portal user; when it does  not, the e-mail is still shown but the field stays empty, and that is what makes every payer-only operation of  this group unreachable for everybody. `refresh=true` re-reads the customer from the billing provider instead  of the cache, which is worth doing right after a payment method has been attached.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-info/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  refresh: true # Boolean | Whether the answer is fetched from the billing service instead of the portal cache. The cached copy is what a  start-up needs and costs nothing; asking for a fresh one makes a remote call, so use it right after a  purchase or a top-up and not on every read.
}

begin
  # Get the customer information
  result = api_instance.get_customer_info(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_info: #{e}"
end
```

#### Using the get_customer_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerInfoWrapper>, Integer, Hash)> get_customer_info_with_http_info(opts)

```ruby
begin
  # Get the customer information
  data, status_code, headers = api_instance.get_customer_info_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerInfoWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh** | **Boolean** | Whether the answer is fetched from the billing service instead of the portal cache. The cached copy is what a  start-up needs and costs nothing; asking for a fresh one makes a remote call, so use it right after a  purchase or a top-up and not on every read. | [optional] |

### Return type

[**CustomerInfoWrapper**](CustomerInfoWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_monthly_usage

> <CustomerMonthlyUsageArrayWrapper> get_customer_monthly_usage(opts)

Get the customer monthly usage

Returns what the portal spent from its wallet added up per calendar month, so a client can draw a spending  chart without paging through every movement. Only a DocSpace administrator may read it, a portal with no  billing customer answers with an empty result, and the call is read-only. `startDate` and `endDate` bound the  period, both inclusive, and default to the portal creation date and the present moment; the months are cut in  the portal time zone, so a movement at the edge of a month falls where the portal sees it and not where UTC  does. Each item names its year and month, the total charged in it with the currency, and how many operations  that total came from. The movements behind a month are in `GET api/2.0/portal/payment/customer/operations`,  and the same figures as a file come from `POST api/2.0/portal/payment/customer/usage/monthly/report`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-monthly-usage/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  start_date: Time.parse('2025-01-01T00:00:00Z'), # Time | The beginning of the reported period, inclusive. The months are cut in the portal time zone rather than in  UTC, so spending at the turn of a month falls where the portal sees it; defaults to the portal creation date.
  end_date: Time.parse('2025-12-31T23:59:59Z') # Time | The end of the reported period, inclusive. Cut in the portal time zone in the same way as `startDate`, and  defaults to the moment the call is made.
}

begin
  # Get the customer monthly usage
  result = api_instance.get_customer_monthly_usage(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_monthly_usage: #{e}"
end
```

#### Using the get_customer_monthly_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerMonthlyUsageArrayWrapper>, Integer, Hash)> get_customer_monthly_usage_with_http_info(opts)

```ruby
begin
  # Get the customer monthly usage
  data, status_code, headers = api_instance.get_customer_monthly_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerMonthlyUsageArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_monthly_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Time** | The beginning of the reported period, inclusive. The months are cut in the portal time zone rather than in  UTC, so spending at the turn of a month falls where the portal sees it; defaults to the portal creation date. | [optional] |
| **end_date** | **Time** | The end of the reported period, inclusive. Cut in the portal time zone in the same way as `startDate`, and  defaults to the moment the call is made. | [optional] |

### Return type

[**CustomerMonthlyUsageArrayWrapper**](CustomerMonthlyUsageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_monthly_usage_report

> <DocumentBuilderTaskWrapper> get_customer_monthly_usage_report

Get the monthly usage report status

Returns the state of the `xlsx` monthly usage report this user started with  `POST api/2.0/portal/payment/customer/usage/monthly/report`: `percentage` while it is being built,  `isCompleted` when it is done, `resultFileId`, `resultFileName` and `resultFileUrl` pointing at the file in  the caller's My documents, and `error` when the build failed. The portal needs a billing customer and the  caller has to be a DocSpace administrator; the call is read-only and is the one to poll. The task is kept per  user and per report kind, so it reports neither another administrator's report nor the operations and service  usage ones, which have their own status operations. An empty result means this user has no monthly usage  report at all - none was started, or the finished one was already picked up or terminated. A completed task is  dropped as soon as the next report is started, so read the file link out of the same answer that first reports  `isCompleted`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-monthly-usage-report/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new

begin
  # Get the monthly usage report status
  result = api_instance.get_customer_monthly_usage_report
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_monthly_usage_report: #{e}"
end
```

#### Using the get_customer_monthly_usage_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentBuilderTaskWrapper>, Integer, Hash)> get_customer_monthly_usage_report_with_http_info

```ruby
begin
  # Get the monthly usage report status
  data, status_code, headers = api_instance.get_customer_monthly_usage_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentBuilderTaskWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_monthly_usage_report_with_http_info: #{e}"
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


## get_customer_operations

> <ReportWrapper> get_customer_operations(opts)

Get the wallet operations

Lists the money movements on the portal's wallet - top-ups, the charges of the wallet services, refunds and  corrections - one page at a time, which is what a billing history is built from. Only a DocSpace administrator  may read it, a portal with no billing customer answers with an empty result, and the call is read-only. Every  filter is optional: `startDate` and `endDate` are read in the portal time zone and default to the portal  creation date and the present moment, `serviceName` narrows to particular wallet services and fails with 404  on a name this installation does not sell, `participantName`, `type` and `status` narrow to who caused a  movement and how it ended, and `credit` and `debit` include or exclude the two directions. `offset` and  `limit` page through the result and default to 0 and 25, `orderBy` and `orderType` sort it, and the answer  repeats them next to `totalQuantity`, `totalPage` and `currentPage` so a client can page without counting. The  same data as a downloadable file is `POST api/2.0/portal/payment/customer/operationsreport`, and the figures  added up per service are `GET api/2.0/portal/payment/customer/usage`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-operations/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  offset: 0, # Integer | The number of movements to skip before the first one returned, for walking through a long history page by  page. Counted after the filters and the ordering are applied, and starts at 0 when omitted.
  limit: 25, # Integer | The maximum number of movements returned in one page. Defaults to 25 when omitted; the answer echoes the  window back next to `totalQuantity`, `totalPage` and `currentPage`, so the next `offset` can be computed  without counting the items.
  service_name: ['inner_example'], # Array<String> | The wallet services whose movements are kept, named the way the billing catalogue names them - `backup`,  `ai-tools`, `ai-search`, `disk-storage`, `docscloud`. Take the values from the `serviceName` field of  `GET api/2.0/portal/payment/walletservices`; the match ignores case, a name this installation does not sell  fails the call with 404, and an omitted list keeps every service. A bare string is accepted in place of an  array for backward compatibility.
  start_date: Time.parse('2024-01-01T00:00:00Z'), # Time | The beginning of the reported period, inclusive. Read in the portal time zone rather than in UTC, so a  movement at the edge of the period falls where the portal sees it; defaults to the portal creation date.
  end_date: Time.parse('2024-01-31T23:59:59Z'), # Time | The end of the reported period, inclusive. Read in the portal time zone rather than in UTC, and defaults to  the moment the call is made.
  participant_name: 'My Own Corporation', # String | The participant whose movements are kept - the account the accounting service records as the cause of a  movement. A movement caused by a portal user carries that user ID here, and one caused by the portal itself  carries the customer name; surrounding whitespace is trimmed, and an omitted value keeps every participant.
  credit: true, # Boolean | Whether movements that add money to the wallet - top-ups, refunds and corrections in the portal's favour -  are kept. Both directions are reported when neither this nor `debit` is given.
  debit: false, # Boolean | Whether movements that take money out of the wallet - the charges of the wallet services - are kept. Both  directions are reported when neither this nor `credit` is given.
  type: DocspaceApiSdk::OperationType::Unknown, # OperationType | The kind of movement to keep, which says what caused the money to move rather than how it ended. Every kind  is reported when it is omitted.
  status: DocspaceApiSdk::OperationStatus::Pending, # OperationStatus | The outcome to keep. A movement that is still being settled is reported as pending and may change later,  while the other outcomes are final; every outcome is reported when this is omitted.
  order_by: 'StartDate', # String | The name of the field the movements are sorted by, spelled as the accounting service names it, such as  `StartDate` or `ServiceName`. Surrounding whitespace is trimmed, and the accounting service applies its own  ordering when this is omitted.
  order_type: DocspaceApiSdk::OperationOrderType::Descending # OperationOrderType | The direction the field named in `orderBy` is sorted in. Newest or largest first is what the accounting  service does by default, so leaving this out sorts the same way as asking for descending explicitly.
}

begin
  # Get the wallet operations
  result = api_instance.get_customer_operations(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_operations: #{e}"
end
```

#### Using the get_customer_operations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportWrapper>, Integer, Hash)> get_customer_operations_with_http_info(opts)

```ruby
begin
  # Get the wallet operations
  data, status_code, headers = api_instance.get_customer_operations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_operations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The number of movements to skip before the first one returned, for walking through a long history page by  page. Counted after the filters and the ordering are applied, and starts at 0 when omitted. | [optional] |
| **limit** | **Integer** | The maximum number of movements returned in one page. Defaults to 25 when omitted; the answer echoes the  window back next to `totalQuantity`, `totalPage` and `currentPage`, so the next `offset` can be computed  without counting the items. | [optional] |
| **service_name** | [**Array&lt;String&gt;**](String.md) | The wallet services whose movements are kept, named the way the billing catalogue names them - `backup`,  `ai-tools`, `ai-search`, `disk-storage`, `docscloud`. Take the values from the `serviceName` field of  `GET api/2.0/portal/payment/walletservices`; the match ignores case, a name this installation does not sell  fails the call with 404, and an omitted list keeps every service. A bare string is accepted in place of an  array for backward compatibility. | [optional] |
| **start_date** | **Time** | The beginning of the reported period, inclusive. Read in the portal time zone rather than in UTC, so a  movement at the edge of the period falls where the portal sees it; defaults to the portal creation date. | [optional] |
| **end_date** | **Time** | The end of the reported period, inclusive. Read in the portal time zone rather than in UTC, and defaults to  the moment the call is made. | [optional] |
| **participant_name** | **String** | The participant whose movements are kept - the account the accounting service records as the cause of a  movement. A movement caused by a portal user carries that user ID here, and one caused by the portal itself  carries the customer name; surrounding whitespace is trimmed, and an omitted value keeps every participant. | [optional] |
| **credit** | **Boolean** | Whether movements that add money to the wallet - top-ups, refunds and corrections in the portal's favour -  are kept. Both directions are reported when neither this nor `debit` is given. | [optional] |
| **debit** | **Boolean** | Whether movements that take money out of the wallet - the charges of the wallet services - are kept. Both  directions are reported when neither this nor `credit` is given. | [optional] |
| **type** | **OperationType** | The kind of movement to keep, which says what caused the money to move rather than how it ended. Every kind  is reported when it is omitted. | [optional] |
| **status** | **OperationStatus** | The outcome to keep. A movement that is still being settled is reported as pending and may change later,  while the other outcomes are final; every outcome is reported when this is omitted. | [optional] |
| **order_by** | **String** | The name of the field the movements are sorted by, spelled as the accounting service names it, such as  `StartDate` or `ServiceName`. Surrounding whitespace is trimmed, and the accounting service applies its own  ordering when this is omitted. | [optional] |
| **order_type** | **OperationOrderType** | The direction the field named in `orderBy` is sorted in. Newest or largest first is what the accounting  service does by default, so leaving this out sorts the same way as asking for descending explicitly. | [optional] |

### Return type

[**ReportWrapper**](ReportWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_operations_report

> <DocumentBuilderTaskWrapper> get_customer_operations_report

Get the operations report status

Returns the state of the `xlsx` wallet operations report this user started with  `POST api/2.0/portal/payment/customer/operationsreport`: `percentage` while it is being built, `isCompleted`  when it is done, `resultFileId`, `resultFileName` and `resultFileUrl` pointing at the file in the caller's My  documents, and `error` when the build failed. The portal needs a billing customer and the caller has to be a  DocSpace administrator; the call is read-only and is the one to poll. The task is kept per user and per report  kind, so it never reports another administrator's report, nor the service usage and monthly usage ones, which  have their own status operations. An empty result means this user has no operations report at all - none was  started, or the finished one was already picked up or terminated. A completed task is dropped as soon as the  next report is started, so read the file link out of the same answer that first reports `isCompleted`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-operations-report/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new

begin
  # Get the operations report status
  result = api_instance.get_customer_operations_report
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_operations_report: #{e}"
end
```

#### Using the get_customer_operations_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentBuilderTaskWrapper>, Integer, Hash)> get_customer_operations_report_with_http_info

```ruby
begin
  # Get the operations report status
  data, status_code, headers = api_instance.get_customer_operations_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentBuilderTaskWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_operations_report_with_http_info: #{e}"
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


## get_customer_service_usage

> <CustomerServiceUsageReportWrapper> get_customer_service_usage(opts)

Get the customer service usage

Returns how much of each wallet service the portal consumed and what that cost, added up per service instead  of listed per movement. Only a DocSpace administrator may read it, a portal with no billing customer answers  with an empty result, and the call is read-only. The filters are optional: `serviceName` narrows to particular  services and fails with 404 on a name this installation does not sell, `participantName` and `status` narrow  to who consumed and how the operation ended, `startDate` and `endDate` bound the period in the portal time  zone, `metadata` matches the key and value pairs a service records with its usage, and `offset`, `limit`,  `orderBy` and `orderType` page and sort the result. Amounts come with the unit the service is sold in, except  AI tools, whose consumption is reported in tokens rather than in AI credits. The individual charges behind  these totals are `GET api/2.0/portal/payment/customer/operations`, and the same figures as a downloadable file  are `POST api/2.0/portal/payment/customer/usage/report`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-service-usage/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  service_name: ['inner_example'], # Array<String> | The wallet services whose consumption is added up, named the way the billing catalogue names them -  `backup`, `ai-tools`, `ai-search`, `disk-storage`, `docscloud`. Take the values from the `serviceName` field  of `GET api/2.0/portal/payment/walletservices`; the match ignores case, a name this installation does not  sell fails the call with 404, and an omitted list covers every service.
  participant_name: 'My Own Corporation', # String | The participant whose consumption is added up - the account the accounting service records as the consumer.  Consumption caused by a portal user carries that user ID here; surrounding whitespace is trimmed, and an  omitted value covers every participant.
  status: DocspaceApiSdk::OperationStatus::Pending, # OperationStatus | The outcome to keep. Consumption that is still being settled is reported as pending and may change later,  while the other outcomes are final; every outcome is counted when this is omitted.
  start_date: Time.parse('2025-01-01T00:00:00Z'), # Time | The beginning of the reported period, inclusive. Read in the portal time zone rather than in UTC, and  defaults to the portal creation date.
  end_date: Time.parse('2025-12-31T23:59:59Z'), # Time | The end of the reported period, inclusive. Read in the portal time zone rather than in UTC, and defaults to  the moment the call is made.
  metadata: { key: { key: 'inner_example'}}, # Hash<String, String> | The usage annotations a wallet service records alongside its consumption, as the key and value pairs that  must all match for a record to be counted. The keys are chosen by the service that writes them, so read them  off the `metadata` of the records already returned rather than guessing; an omitted map counts every record.
  offset: 0, # Integer | The number of per-service totals to skip before the first one returned. Counted after the filters and the  ordering are applied, and starts at 0 when omitted.
  limit: 25, # Integer | The maximum number of per-service totals returned in one page. Defaults to 25 when omitted; the answer echoes  the window back with its paging information, so the next `offset` can be computed without counting the items.
  order_by: 'ServiceName', # String | The name of the field the per-service totals are sorted by, spelled as the accounting service names it, such  as `ServiceName` or `StartDate`. Surrounding whitespace is trimmed, and the accounting service applies its  own ordering when this is omitted.
  order_type: DocspaceApiSdk::OperationOrderType::Descending # OperationOrderType | The direction the field named in `orderBy` is sorted in. Newest or largest first is what the accounting  service does by default, so leaving this out sorts the same way as asking for descending explicitly.
}

begin
  # Get the customer service usage
  result = api_instance.get_customer_service_usage(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_service_usage: #{e}"
end
```

#### Using the get_customer_service_usage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CustomerServiceUsageReportWrapper>, Integer, Hash)> get_customer_service_usage_with_http_info(opts)

```ruby
begin
  # Get the customer service usage
  data, status_code, headers = api_instance.get_customer_service_usage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CustomerServiceUsageReportWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_service_usage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_name** | [**Array&lt;String&gt;**](String.md) | The wallet services whose consumption is added up, named the way the billing catalogue names them -  `backup`, `ai-tools`, `ai-search`, `disk-storage`, `docscloud`. Take the values from the `serviceName` field  of `GET api/2.0/portal/payment/walletservices`; the match ignores case, a name this installation does not  sell fails the call with 404, and an omitted list covers every service. | [optional] |
| **participant_name** | **String** | The participant whose consumption is added up - the account the accounting service records as the consumer.  Consumption caused by a portal user carries that user ID here; surrounding whitespace is trimmed, and an  omitted value covers every participant. | [optional] |
| **status** | **OperationStatus** | The outcome to keep. Consumption that is still being settled is reported as pending and may change later,  while the other outcomes are final; every outcome is counted when this is omitted. | [optional] |
| **start_date** | **Time** | The beginning of the reported period, inclusive. Read in the portal time zone rather than in UTC, and  defaults to the portal creation date. | [optional] |
| **end_date** | **Time** | The end of the reported period, inclusive. Read in the portal time zone rather than in UTC, and defaults to  the moment the call is made. | [optional] |
| **metadata** | [**Hash&lt;String, String&gt;**](String.md) | The usage annotations a wallet service records alongside its consumption, as the key and value pairs that  must all match for a record to be counted. The keys are chosen by the service that writes them, so read them  off the `metadata` of the records already returned rather than guessing; an omitted map counts every record. | [optional] |
| **offset** | **Integer** | The number of per-service totals to skip before the first one returned. Counted after the filters and the  ordering are applied, and starts at 0 when omitted. | [optional] |
| **limit** | **Integer** | The maximum number of per-service totals returned in one page. Defaults to 25 when omitted; the answer echoes  the window back with its paging information, so the next `offset` can be computed without counting the items. | [optional] |
| **order_by** | **String** | The name of the field the per-service totals are sorted by, spelled as the accounting service names it, such  as `ServiceName` or `StartDate`. Surrounding whitespace is trimmed, and the accounting service applies its  own ordering when this is omitted. | [optional] |
| **order_type** | **OperationOrderType** | The direction the field named in `orderBy` is sorted in. Newest or largest first is what the accounting  service does by default, so leaving this out sorts the same way as asking for descending explicitly. | [optional] |

### Return type

[**CustomerServiceUsageReportWrapper**](CustomerServiceUsageReportWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_service_usage_report

> <DocumentBuilderTaskWrapper> get_customer_service_usage_report

Get the service usage report status

Returns the state of the `xlsx` service usage report this user started with  `POST api/2.0/portal/payment/customer/usage/report`: `percentage` while it is being built, `isCompleted` when  it is done, `resultFileId`, `resultFileName` and `resultFileUrl` pointing at the file in the caller's My  documents, and `error` when the build failed. The portal needs a billing customer and the caller has to be a  DocSpace administrator; the call is read-only and is the one to poll. The task is kept per user and per report  kind, so it reports neither another administrator's report nor the operations and monthly usage ones, which  have their own status operations. An empty result means this user has no service usage report at all - none  was started, or the finished one was already picked up or terminated. A completed task is dropped as soon as  the next report is started, so read the file link out of the same answer that first reports `isCompleted`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-customer-service-usage-report/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new

begin
  # Get the service usage report status
  result = api_instance.get_customer_service_usage_report
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_service_usage_report: #{e}"
end
```

#### Using the get_customer_service_usage_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentBuilderTaskWrapper>, Integer, Hash)> get_customer_service_usage_report_with_http_info

```ruby
begin
  # Get the service usage report status
  data, status_code, headers = api_instance.get_customer_service_usage_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentBuilderTaskWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_customer_service_usage_report_with_http_info: #{e}"
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


## get_payment_account

> <StringWrapper> get_payment_account(opts)

Get the billing account page

Hands back the address of the portal page on which the billing account is managed - the payment method on  file, the invoices and the receipts - so a client can link to it instead of assembling the address itself. The  portal must already have a billing customer: one that has never had it gets an empty result, and an  installation without a billing service answers 403. Only the payer or the portal owner may read it, and the  call changes nothing. The value is relative to the portal root (`payment.ashx`), and the optional `backUrl` is  appended to it as a query parameter so the page can send the user back where they came from. It is not a  checkout page: a plan is bought with `PUT api/2.0/portal/payment/url` and a payment method is attached with  `GET api/2.0/portal/payment/checkoutsetupurl`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-account/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  back_url: 'https://example.com' # String | The absolute address the billing account page should offer as its way back. It is appended to the returned  portal-relative address as a query parameter rather than followed here, and omitting it yields the bare  address of the page.
}

begin
  # Get the billing account page
  result = api_instance.get_payment_account(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_payment_account: #{e}"
end
```

#### Using the get_payment_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> get_payment_account_with_http_info(opts)

```ruby
begin
  # Get the billing account page
  data, status_code, headers = api_instance.get_payment_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_payment_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **back_url** | **String** | The absolute address the billing account page should offer as its way back. It is appended to the returned  portal-relative address as a query parameter rather than followed here, and omitting it yields the bare  address of the page. | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_currencies

> <CurrenciesArrayWrapper> get_payment_currencies

Get the billing currencies

Tells a client which currency the portal is billed in: the default currency of the portal region always comes  first, followed by the currency resolved for the current request when that one differs, so the answer holds  one or two items. Nothing has to be called first, the caller needs the permission to edit the portal settings,  and the call is read-only. Each item carries the country code of the region, the currency symbol and the  native name of the currency; the first item is the currency the amounts from  `GET api/2.0/portal/payment/prices` are expressed in. These are the currencies of the subscription prices, and  they are not the accounting currencies the wallet is topped up in - those come with the balance in  `GET api/2.0/portal/payment/customer/balance`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-currencies/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new

begin
  # Get the billing currencies
  result = api_instance.get_payment_currencies
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_payment_currencies: #{e}"
end
```

#### Using the get_payment_currencies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CurrenciesArrayWrapper>, Integer, Hash)> get_payment_currencies_with_http_info

```ruby
begin
  # Get the billing currencies
  data, status_code, headers = api_instance.get_payment_currencies_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CurrenciesArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_payment_currencies_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CurrenciesArrayWrapper**](CurrenciesArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_quotas

> <QuotaArrayWrapper> get_payment_quotas(opts)

Get the purchasable quotas

Lists the quotas the portal can be put on - the paid plans and the wallet services - each with its price, its  features and the limits it grants, which is what a pricing page is built from. Nothing has to be called first,  the caller needs the permission to edit the portal settings, and the call is read-only. Only quotas marked  visible are listed, newest first, and the two optional filters narrow that: `wallet` selects the wallet  services (`true`) or the subscription plans (`false`), `additional` selects the add-ons to a plan (`true`) or  the plans themselves (`false`), and an omitted filter keeps both kinds. A portal on a non-profit quota is a  special case - asking for `additional=false` returns that single quota and nothing else, because no other plan  may be bought for it. The quota the portal is actually on is not marked here; read it from  `GET api/2.0/portal/payment/quota`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-quotas/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  wallet: true, # Boolean | Which side of the catalogue is listed: `true` keeps the services paid out of the portal wallet, `false` keeps  the subscription plans, and omitting it keeps both.
  additional: true # Boolean | Which layer of the catalogue is listed: `true` keeps the add-ons that extend a plan, `false` keeps the plans  themselves, and omitting it keeps both.
}

begin
  # Get the purchasable quotas
  result = api_instance.get_payment_quotas(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_payment_quotas: #{e}"
end
```

#### Using the get_payment_quotas_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuotaArrayWrapper>, Integer, Hash)> get_payment_quotas_with_http_info(opts)

```ruby
begin
  # Get the purchasable quotas
  data, status_code, headers = api_instance.get_payment_quotas_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuotaArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_payment_quotas_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet** | **Boolean** | Which side of the catalogue is listed: `true` keeps the services paid out of the portal wallet, `false` keeps  the subscription plans, and omitting it keeps both. | [optional] |
| **additional** | **Boolean** | Which layer of the catalogue is listed: `true` keeps the add-ons that extend a plan, `false` keeps the plans  themselves, and omitting it keeps both. | [optional] |

### Return type

[**QuotaArrayWrapper**](QuotaArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_url

> <StringWrapper> get_payment_url(opts)

Get the payment page URL

Starts the purchase of a monthly paid plan for this portal by handing back the hosted checkout page the buyer  has to open; nothing is bought until that page is completed. The portal must have no paid plan yet - a portal  whose plan is already paid gets an empty result and changes its subscription through  `PUT api/2.0/portal/payment/update` instead - and the product name in `quantity` must be one of the monthly,  non-wallet plans listed by `GET api/2.0/portal/payment/quotas`. Only a DocSpace administrator may call it. The  call itself changes nothing on the portal and may be repeated: the money is taken by the payment provider on  the checkout page, and the plan becomes active once the provider confirms it. The returned URL is absolute and  single-purpose - it carries the caller's e-mail, the language of the request and the currency of the request  region, and it redirects to `successUrl` or `backUrl` when the buyer finishes or cancels. Exactly one product  per call is accepted and its quantity has to be greater than zero; yearly and wallet products are refused, and  wallet services are bought with `PUT api/2.0/portal/payment/updatewallet` instead.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-payment-url/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  payment_url_request_dto: DocspaceApiSdk::PaymentUrlRequestDto.new({back_url: 'https://example.com/payment/back', success_url: 'https://example.com/payment/success', quantity: { key: 37}}) # PaymentUrlRequestDto | 
}

begin
  # Get the payment page URL
  result = api_instance.get_payment_url(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_payment_url: #{e}"
end
```

#### Using the get_payment_url_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> get_payment_url_with_http_info(opts)

```ruby
begin
  # Get the payment page URL
  data, status_code, headers = api_instance.get_payment_url_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_payment_url_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_url_request_dto** | [**PaymentUrlRequestDto**](PaymentUrlRequestDto.md) |  | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_portal_prices

> <GetPortalPrices200Response> get_portal_prices

Get the product prices

Lists what one unit of every purchasable product costs, keyed by the product name that `quantity` takes in the  purchase operations, so a client can price a plan or a wallet service without reading the whole quota list.  Nothing has to be called first, and the caller needs the permission to edit the portal settings, which portal  administrators and the owner have. The call is read-only. Prices are given in the one currency resolved for  this request from the portal region, which `GET api/2.0/portal/payment/currencies` reports; a product with no  price in that currency comes back as `0` rather than being left out, so a zero means unpriced and not free.  The list covers the products on offer, not the portal's own plan - the plan in force, with its limits and its  usage, is `GET api/2.0/portal/payment/quota`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-prices/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new

begin
  # Get the product prices
  result = api_instance.get_portal_prices
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_portal_prices: #{e}"
end
```

#### Using the get_portal_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPortalPrices200Response>, Integer, Hash)> get_portal_prices_with_http_info

```ruby
begin
  # Get the product prices
  data, status_code, headers = api_instance.get_portal_prices_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPortalPrices200Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_portal_prices_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetPortalPrices200Response**](GetPortalPrices200Response.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_quota_payment_information

> <QuotaWrapper> get_quota_payment_information(opts)

Get the current plan and limits

Returns the quota the portal is on right now - its paid plan or the free one - with everything a client needs  to render itself: the price, the features that are switched on, the limits they grant (rooms, storage in  bytes, users, administrators, AI) and how much of each is already used. Every signed-in member of the portal  reads it, so it is not restricted to administrators; only guests are refused with 403. The call is read-only.  The plan is served from the cache by default, which is what a start-up needs; `refresh=true` fetches it from  the billing service instead, so use that right after a purchase and not routinely, because it is a remote  call. The catalogue of the quotas that could be bought instead is `GET api/2.0/portal/payment/quotas`, and the  money side of the same portal - customer, wallet and balance - starts at  `GET api/2.0/portal/payment/customerinfo`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-quota-payment-information/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  refresh: true # Boolean | Whether the answer is fetched from the billing service instead of the portal cache. The cached copy is what a  start-up needs and costs nothing; asking for a fresh one makes a remote call, so use it right after a  purchase or a top-up and not on every read.
}

begin
  # Get the current plan and limits
  result = api_instance.get_quota_payment_information(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_quota_payment_information: #{e}"
end
```

#### Using the get_quota_payment_information_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QuotaWrapper>, Integer, Hash)> get_quota_payment_information_with_http_info(opts)

```ruby
begin
  # Get the current plan and limits
  data, status_code, headers = api_instance.get_quota_payment_information_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QuotaWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_quota_payment_information_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **refresh** | **Boolean** | Whether the answer is fetched from the billing service instead of the portal cache. The cached copy is what a  start-up needs and costs nothing; asking for a fresh one makes a remote call, so use it right after a  purchase or a top-up and not on every read. | [optional] |

### Return type

[**QuotaWrapper**](QuotaWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_restricted_ai_models

> <RestrictedModelsResponseWrapper> get_restricted_ai_models

Get restricted AI models

Returns the AI chat models that are barred on this portal - the ones no user of it may pick for a  conversation, whatever the price list offers. Only a DocSpace administrator may read it, and the call is  read-only. When the installation has no billing service or AI is not enabled for the portal, the answer is an  empty set instead of an error, which is indistinguishable from a portal that restricts nothing. An empty  `models` therefore means every model in `GET api/2.0/portal/payment/ai-prices` may be used. The set names the  barred models and not the allowed ones; replace it with `PUT api/2.0/portal/payment/ai-model/restrictions`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-restricted-ai-models/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new

begin
  # Get restricted AI models
  result = api_instance.get_restricted_ai_models
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_restricted_ai_models: #{e}"
end
```

#### Using the get_restricted_ai_models_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestrictedModelsResponseWrapper>, Integer, Hash)> get_restricted_ai_models_with_http_info

```ruby
begin
  # Get restricted AI models
  data, status_code, headers = api_instance.get_restricted_ai_models_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestrictedModelsResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_restricted_ai_models_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**RestrictedModelsResponseWrapper**](RestrictedModelsResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_subscription_balance_info

> <SubscriptionBalanceInfoWrapper> get_subscription_balance_info

Get the subscription balance information

Reports in money how much of the portal's paid subscription period is still unused - the credit that  `POST api/2.0/portal/payment/subscription/movetowallet` would carry over to the wallet if the subscription  were ended now. The portal must have a billing customer and a plan in the paid state; a plan that is not paid  answers 402, and a paid plan without a subscription row gives 404. Only the payer - the portal user whose  e-mail is the billing customer's e-mail - may read it, and the call is read-only. The answer states the total  cost of the current period with its currency, the start and the end of that period in UTC, the moment the  unused part is measured up to, the days already elapsed, and the remaining balance both in the subscription  currency and converted to the wallet currency. Every figure is computed for the instant of the request, so it  changes between calls.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-subscription-balance-info/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new

begin
  # Get the subscription balance information
  result = api_instance.get_subscription_balance_info
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_subscription_balance_info: #{e}"
end
```

#### Using the get_subscription_balance_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionBalanceInfoWrapper>, Integer, Hash)> get_subscription_balance_info_with_http_info

```ruby
begin
  # Get the subscription balance information
  data, status_code, headers = api_instance.get_subscription_balance_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionBalanceInfoWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_subscription_balance_info_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SubscriptionBalanceInfoWrapper**](SubscriptionBalanceInfoWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_wallet_service_settings

> <TenantWalletServiceSettingsWrapper> get_tenant_wallet_service_settings

Get the wallet service settings

Returns which wallet services an administrator has switched on for this portal by hand, as opposed to the ones  its plan pays for. Only a DocSpace administrator may read it, an installation without a billing service  answers 403, no billing customer is needed, and the call is read-only. `enabledServices` holds the names of  those services and is empty when none was switched on. This is the stored setting and not the state of the  portal: a service the plan brings with it is active without appearing here, so the honest answer to what is  running is `GET api/2.0/portal/payment/activeservices`. One entry is changed with  `POST api/2.0/portal/payment/servicestate`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-wallet-service-settings/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new

begin
  # Get the wallet service settings
  result = api_instance.get_tenant_wallet_service_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_tenant_wallet_service_settings: #{e}"
end
```

#### Using the get_tenant_wallet_service_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantWalletServiceSettingsWrapper>, Integer, Hash)> get_tenant_wallet_service_settings_with_http_info

```ruby
begin
  # Get the wallet service settings
  data, status_code, headers = api_instance.get_tenant_wallet_service_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantWalletServiceSettingsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_tenant_wallet_service_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TenantWalletServiceSettingsWrapper**](TenantWalletServiceSettingsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_wallet_settings

> <TenantWalletSettingsResponseWrapper> get_tenant_wallet_settings

Get the auto top-up settings

Returns the portal's automatic wallet top-up settings - whether it is on, the balance that triggers a  charge, the balance it is topped up to, and the currency both are expressed in. Any DocSpace  administrator may read them, and unlike the operation that changes them this one needs neither a  billing customer nor a configured billing service, so it answers on a portal that has never paid for  anything. It is read-only and changes nothing.  A portal that has never configured top-up gets the defaults rather than an empty result: `enabled` is  false, `currency` is null, and `minBalance` and `upToBalance` are 0. Those two zeros are outside the  ranges `POST api/2.0/portal/payment/topupsettings` accepts - 5 to 1000 and 6 to 5000 - so the answer  cannot be sent straight back to it; supply real values instead. `lastModified` is  `0001-01-01T00:00:00` until the settings are stored for the first time.  `lowBalanceThreshold` and `lowBalanceNotified` are maintained by the portal itself: they are reported  here, but ignored when the settings are written.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-tenant-wallet-settings/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new

begin
  # Get the auto top-up settings
  result = api_instance.get_tenant_wallet_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_tenant_wallet_settings: #{e}"
end
```

#### Using the get_tenant_wallet_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantWalletSettingsResponseWrapper>, Integer, Hash)> get_tenant_wallet_settings_with_http_info

```ruby
begin
  # Get the auto top-up settings
  data, status_code, headers = api_instance.get_tenant_wallet_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantWalletSettingsResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_tenant_wallet_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TenantWalletSettingsResponseWrapper**](TenantWalletSettingsResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wallet_service

> <WalletServiceWrapper> get_wallet_service(service)

Get a wallet service

Returns one wallet service by name, for a client that already knows which service it needs and does not want  the whole catalogue. `service` is the name of the service - `Storage`, `Backup`, `AITools`, `Admin`,  `DocsCloud`, `DocsCloudDevPack` or `AISearch` - and a name this installation does not sell answers 404.  Nothing has to be called first, the caller needs the permission to edit the portal settings, and the call is  read-only. The answer has the same shape as one item of `GET api/2.0/portal/payment/walletservices` - the  price of a unit, the unit, the limits the service grants and its service name - except that the variants of a  service are not grouped into `innerServices` here, because a single service is looked up directly. The price  is in the currency resolved for the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-wallet-service/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
service = DocspaceApiSdk::TenantWalletService::AISearch # TenantWalletService | The service to look up, given by its catalogue name. A service this installation does not sell answers 404,  and the whole catalogue is `GET api/2.0/portal/payment/walletservices`.

begin
  # Get a wallet service
  result = api_instance.get_wallet_service(service)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_wallet_service: #{e}"
end
```

#### Using the get_wallet_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletServiceWrapper>, Integer, Hash)> get_wallet_service_with_http_info(service)

```ruby
begin
  # Get a wallet service
  data, status_code, headers = api_instance.get_wallet_service_with_http_info(service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletServiceWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_wallet_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | **TenantWalletService** | The service to look up, given by its catalogue name. A service this installation does not sell answers 404,  and the whole catalogue is `GET api/2.0/portal/payment/walletservices`. |  |

### Return type

[**WalletServiceWrapper**](WalletServiceWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_wallet_services

> <WalletServiceArrayWrapper> get_wallet_services

Get wallet services

Lists every service the portal may pay for out of its wallet - extra administrators, disk storage, backup, AI  tools, AI search and DocsCloud - with the price of a unit, the unit it is sold in and whether the portal has  it switched on. Nothing has to be called first, the caller needs the permission to edit the portal settings,  and the call is read-only. Services that are variants of one another are folded together: the visible one  carries the rest in its `innerServices`, so a client renders one card per group. The AI services are left out  entirely when AI is not enabled for the portal. This is the catalogue and not the state of the portal - what  is actually running is `GET api/2.0/portal/payment/activeservices`, one service on its own is  `GET api/2.0/portal/payment/walletservice`, and switching one on or off is  `POST api/2.0/portal/payment/servicestate`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-wallet-services/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new

begin
  # Get wallet services
  result = api_instance.get_wallet_services
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_wallet_services: #{e}"
end
```

#### Using the get_wallet_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WalletServiceArrayWrapper>, Integer, Hash)> get_wallet_services_with_http_info

```ruby
begin
  # Get wallet services
  data, status_code, headers = api_instance.get_wallet_services_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WalletServiceArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_wallet_services_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WalletServiceArrayWrapper**](WalletServiceArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## move_subscription_to_wallet

> <BooleanWrapper> move_subscription_to_wallet(opts)

Move the subscription to the wallet

Ends the portal's paid subscription and moves it onto the wallet: the unused balance of the running period is  credited to the wallet, the wallet is topped up from the payment method on file if that credit does not cover  the purchase, and the requested number of administrators is then bought as a wallet service. The portal needs  a billing customer with a payment method set and a plan in the paid state, `quantity` has to name the  administrators wallet product, and the number asked for may not be below the administrators the portal already  has - read the credit that will be carried over from `GET api/2.0/portal/payment/subscription/balance` first.  Only the payer may call it. The call is mutating, spends money and cannot be undone: the subscription is ended  before the purchase is attempted, so a failure in the second half leaves the portal on the wallet with the  money credited but the administrators unbought, and a repeat would then buy them a second time. It is limited  to ten requests a minute per user by default. The result is `true` when the administrators were bought.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/move-subscription-to-wallet/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  quantity_request_dto: DocspaceApiSdk::QuantityRequestDto.new({quantity: { key: 37}}) # QuantityRequestDto | 
}

begin
  # Move the subscription to the wallet
  result = api_instance.move_subscription_to_wallet(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->move_subscription_to_wallet: #{e}"
end
```

#### Using the move_subscription_to_wallet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> move_subscription_to_wallet_with_http_info(opts)

```ruby
begin
  # Move the subscription to the wallet
  data, status_code, headers = api_instance.move_subscription_to_wallet_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->move_subscription_to_wallet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity_request_dto** | [**QuantityRequestDto**](QuantityRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_payment_request

> send_payment_request(opts)

Contact the sales team

Sends the portal's message to the ONLYOFFICE sales team - the contact-sales form behind a request for a quote,  an invoice or a plan that cannot be bought online. `email` has to be a well-formed address and is where the  answer will go, while `userName` and `message` say who is asking and what for; all three are required and none  may be empty. Only a DocSpace administrator may call it. Nothing on the portal changes: no plan, no quota and  no payment is touched, a message is mailed out and the request is written to the portal audit trail. There is  no response body - status 200 means the message was handed to the mail service - and the call is not  idempotent, so a repeat sends a second message. It is limited to ten requests a minute per user by default and  answers 429 above that.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-payment-request/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  sales_requests_dto: DocspaceApiSdk::SalesRequestsDto.new({user_name: 'John Doe', email: 'user@example.com', message: 'I would like to inquire about pricing'}) # SalesRequestsDto | 
}

begin
  # Contact the sales team
  api_instance.send_payment_request(opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->send_payment_request: #{e}"
end
```

#### Using the send_payment_request_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_payment_request_with_http_info(opts)

```ruby
begin
  # Contact the sales team
  data, status_code, headers = api_instance.send_payment_request_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->send_payment_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sales_requests_dto** | [**SalesRequestsDto**](SalesRequestsDto.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_restricted_ai_models

> <RestrictedModelsResponseWrapper> set_restricted_ai_models(opts)

Set restricted AI models

Replaces the whole set of AI chat models barred on this portal: the body is the complete set that is to hold,  so adding one restriction means sending the new model together with the ones already restricted, lifting one  means leaving it out, and an empty set lifts them all. Read the current set from  `GET api/2.0/portal/payment/ai-model/restrictions` and the model identifiers from  `GET api/2.0/portal/payment/ai-prices` before calling. The installation needs a billing service and the AI  gateway configured, the portal needs a billing customer, and the caller needs the permission to edit the  portal settings as well as DocSpace administrator rights. The call is mutating and idempotent - sending the  same set twice leaves the same state - and it is written to the portal audit trail. It takes effect on the  next AI request, so a conversation already open on a model that has just been barred cannot go on with it. The  stored set comes back in the answer.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-restricted-ai-models/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  set_restricted_ai_models_request_dto: DocspaceApiSdk::SetRestrictedAiModelsRequestDto.new({models: [model1,  model2]}) # SetRestrictedAiModelsRequestDto | 
}

begin
  # Set restricted AI models
  result = api_instance.set_restricted_ai_models(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->set_restricted_ai_models: #{e}"
end
```

#### Using the set_restricted_ai_models_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RestrictedModelsResponseWrapper>, Integer, Hash)> set_restricted_ai_models_with_http_info(opts)

```ruby
begin
  # Set restricted AI models
  data, status_code, headers = api_instance.set_restricted_ai_models_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RestrictedModelsResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->set_restricted_ai_models_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_restricted_ai_models_request_dto** | [**SetRestrictedAiModelsRequestDto**](SetRestrictedAiModelsRequestDto.md) |  | [optional] |

### Return type

[**RestrictedModelsResponseWrapper**](RestrictedModelsResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_tenant_wallet_settings

> <TenantWalletSettingsResponseWrapper> set_tenant_wallet_settings(opts)

Set the auto top-up settings

Switches the portal's automatic wallet top-up on or off and sets its thresholds: while it is on, the payment  method on file is charged whenever the wallet balance falls below `minBalance`, enough to bring it up to  `upToBalance`, in `currency`. The portal needs a billing customer whose wallet balance exists - a portal that  has never had one answers 404, so top the wallet up once with `POST api/2.0/portal/payment/deposit` first -  and only the payer may change the settings. The body replaces the stored settings as a whole and an omitted  body resets them to the defaults; `minBalance` is accepted between 5 and 1000 and `upToBalance` between 6 and  5000, while `lowBalanceThreshold` and `lowBalanceNotified` are ignored on the way in and kept as the portal  had them. The call is mutating and idempotent, it charges nothing by itself, it is written to the portal audit  trail, and switching the top-up on also re-arms the low-balance warning. The settings as they were stored come  back in the answer.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/set-tenant-wallet-settings/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  tenant_wallet_settings_wrapper: DocspaceApiSdk::TenantWalletSettingsWrapper.new # TenantWalletSettingsWrapper | 
}

begin
  # Set the auto top-up settings
  result = api_instance.set_tenant_wallet_settings(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->set_tenant_wallet_settings: #{e}"
end
```

#### Using the set_tenant_wallet_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantWalletSettingsResponseWrapper>, Integer, Hash)> set_tenant_wallet_settings_with_http_info(opts)

```ruby
begin
  # Set the auto top-up settings
  data, status_code, headers = api_instance.set_tenant_wallet_settings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantWalletSettingsResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->set_tenant_wallet_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_wallet_settings_wrapper** | [**TenantWalletSettingsWrapper**](TenantWalletSettingsWrapper.md) |  | [optional] |

### Return type

[**TenantWalletSettingsResponseWrapper**](TenantWalletSettingsResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## terminate_customer_monthly_usage_report

> terminate_customer_monthly_usage_report

Terminate the monthly usage report

Stops the `xlsx` monthly usage report this user has running and drops its task, for a report that was started  for the wrong period or is no longer wanted. The portal needs a billing customer and the caller has to be a  DocSpace administrator. The stop is asked of the worker that builds the file rather than done here, so  `GET api/2.0/portal/payment/customer/usage/monthly/report` can still answer for a moment afterwards. The call  is safe to repeat and does nothing at all when this user has no such report running: there is no response  body, and status 200 says the stop was requested, not that a report was really stopped. It leaves the  operations and service usage reports alone, and a report that had already finished keeps its file in My  documents.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-customer-monthly-usage-report/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new

begin
  # Terminate the monthly usage report
  api_instance.terminate_customer_monthly_usage_report
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->terminate_customer_monthly_usage_report: #{e}"
end
```

#### Using the terminate_customer_monthly_usage_report_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> terminate_customer_monthly_usage_report_with_http_info

```ruby
begin
  # Terminate the monthly usage report
  data, status_code, headers = api_instance.terminate_customer_monthly_usage_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->terminate_customer_monthly_usage_report_with_http_info: #{e}"
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


## terminate_customer_operations_report

> terminate_customer_operations_report

Terminate the operations report

Stops the `xlsx` wallet operations report this user has running and drops its task, for a report that was  started with the wrong filters or is no longer wanted. The portal needs a billing customer and the caller has  to be a DocSpace administrator. The stop is asked of the worker that builds the file rather than done here, so  `GET api/2.0/portal/payment/customer/operationsreport` can still answer for a moment afterwards. The call is  safe to repeat and does nothing at all when this user has no report running: there is no response body, and  status 200 says the stop was requested, not that a report was really stopped. A report that had already  finished keeps its file in My documents - nothing is deleted from there.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-customer-operations-report/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new

begin
  # Terminate the operations report
  api_instance.terminate_customer_operations_report
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->terminate_customer_operations_report: #{e}"
end
```

#### Using the terminate_customer_operations_report_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> terminate_customer_operations_report_with_http_info

```ruby
begin
  # Terminate the operations report
  data, status_code, headers = api_instance.terminate_customer_operations_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->terminate_customer_operations_report_with_http_info: #{e}"
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


## terminate_customer_service_usage_report

> terminate_customer_service_usage_report

Terminate the service usage report

Stops the `xlsx` service usage report this user has running and drops its task, for a report that was started  with the wrong filters or is no longer wanted. The portal needs a billing customer and the caller has to be a  DocSpace administrator. The stop is asked of the worker that builds the file rather than done here, so  `GET api/2.0/portal/payment/customer/usage/report` can still answer for a moment afterwards. The call is safe  to repeat and does nothing at all when this user has no such report running: there is no response body, and  status 200 says the stop was requested, not that a report was really stopped. It leaves the operations and  monthly usage reports alone, and a report that had already finished keeps its file in My documents.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-customer-service-usage-report/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new

begin
  # Terminate the service usage report
  api_instance.terminate_customer_service_usage_report
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->terminate_customer_service_usage_report: #{e}"
end
```

#### Using the terminate_customer_service_usage_report_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> terminate_customer_service_usage_report_with_http_info

```ruby
begin
  # Terminate the service usage report
  data, status_code, headers = api_instance.terminate_customer_service_usage_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->terminate_customer_service_usage_report_with_http_info: #{e}"
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


## top_up_deposit

> <BooleanWrapper> top_up_deposit(opts)

Top up the wallet

Charges the payment method on file and adds the amount to the portal's wallet, the balance every wallet  service is paid from. The portal needs a billing customer with a payment method set - attach one with  `GET api/2.0/portal/payment/checkoutsetupurl` - `currency` has to be one of the accounting currencies this  installation supports, and `amount` is a whole number of currency units between 1 and 999999. Only the payer  may call it. The call takes money and is not idempotent in any way: two identical requests charge twice, so a  client must not retry it blindly after a timeout, and it is limited to ten requests a minute per user by  default. A successful top-up pushes the new balance to the portal clients over their socket connection and  re-arms the low-balance notification. The result is `true` when the payment provider accepted the charge; read  the resulting balance back from `GET api/2.0/portal/payment/customer/balance`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/top-up-deposit/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  top_up_deposit_request_dto: DocspaceApiSdk::TopUpDepositRequestDto.new # TopUpDepositRequestDto | 
}

begin
  # Top up the wallet
  result = api_instance.top_up_deposit(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->top_up_deposit: #{e}"
end
```

#### Using the top_up_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> top_up_deposit_with_http_info(opts)

```ruby
begin
  # Top up the wallet
  data, status_code, headers = api_instance.top_up_deposit_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->top_up_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **top_up_deposit_request_dto** | [**TopUpDepositRequestDto**](TopUpDepositRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_payment

> <BooleanWrapper> update_payment(opts)

Change the subscription quantity

Changes how many units of the plan the portal is paying for - the number of administrators it covers - and  lets the payment provider bill the difference against the payment method already on file. The portal must have  a billing customer and a plan bought through `PUT api/2.0/portal/payment/url`, and while the portal is on a  priced plan the product name in `quantity` has to be that same plan, which `GET api/2.0/portal/payment/quota`  reports, because a subscription is changed here and not swapped. Only the payer - the portal user whose e-mail  is the billing customer's e-mail - may call it. The call is mutating and charges money, and it is guarded  against a double submission: once the new quantity is in effect, repeating the same request fails with 400  because that quantity is already set. The result is `true` when the provider accepted the change and `false`  when it declined it without an error. Exactly one product per call is accepted, the operation is limited to  ten requests a minute per user by default and answers 429 above that, and wallet services are not bought here  - use `PUT api/2.0/portal/payment/updatewallet` for those.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-payment/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  quantity_request_dto: DocspaceApiSdk::QuantityRequestDto.new({quantity: { key: 37}}) # QuantityRequestDto | 
}

begin
  # Change the subscription quantity
  result = api_instance.update_payment(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->update_payment: #{e}"
end
```

#### Using the update_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> update_payment_with_http_info(opts)

```ruby
begin
  # Change the subscription quantity
  data, status_code, headers = api_instance.update_payment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->update_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quantity_request_dto** | [**QuantityRequestDto**](QuantityRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_wallet_payment

> <BooleanWrapper> update_wallet_payment(opts)

Change a wallet service quantity

Buys more units of a wallet service - extra administrators, disk storage, backup, AI tools, AI search or  DocsCloud - or writes down the quantity that service will have after the next renewal, depending on  `productQuantityType`. With `Add` (1) the units are bought at once and paid out of the portal wallet, so the  wallet needs a sub-account in the accounting currency and enough money on it; with `Set` (0) nothing is  charged now and the quantity only takes effect in the next period, where an empty or zero quantity cancels a  change scheduled earlier. `Renew` and `Sub` are not accepted here. The portal needs a billing customer and the  caller has to be a DocSpace administrator; a service that is an add-on to the plan also needs the plan itself  to be paid, otherwise the answer is 402. Minimum quantities apply - disk storage starts at 100 units, the  DocsCloud developer pack at 10, and the administrators may not be fewer than the portal already has - and in  the `Add` form they are checked only while the portal does not hold that service yet. Asking for the DocsCloud  plan in the `Set` form while the developer pack is active schedules the reversion to it at the next period,  while the upgrade in the other direction is not done here at all: use  `POST api/2.0/settings/docscloud/switchtodevpack`. The result is `true` when the change was accepted; the call  is mutating, spends money in its `Add` form and is limited to ten requests a minute per user by default. Price  the same purchase without paying for it with `PUT api/2.0/portal/payment/calculatewallet`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/update-wallet-payment/).

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

api_instance = DocspaceApiSdk::Portal::PaymentApi.new
opts = {
  wallet_quantity_request_dto: DocspaceApiSdk::WalletQuantityRequestDto.new({quantity: { key: 37}}) # WalletQuantityRequestDto | 
}

begin
  # Change a wallet service quantity
  result = api_instance.update_wallet_payment(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->update_wallet_payment: #{e}"
end
```

#### Using the update_wallet_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> update_wallet_payment_with_http_info(opts)

```ruby
begin
  # Change a wallet service quantity
  data, status_code, headers = api_instance.update_wallet_payment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->update_wallet_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wallet_quantity_request_dto** | [**WalletQuantityRequestDto**](WalletQuantityRequestDto.md) |  | [optional] |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

