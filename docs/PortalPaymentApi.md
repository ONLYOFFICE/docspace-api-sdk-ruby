# DocspaceApiSdk::PortalPaymentApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**calculate_wallet_payment**](PortalPaymentApi.md#calculate_wallet_payment) | **PUT** /api/2.0/portal/payment/calculatewallet | Calculate the wallet payment amount |
| [**change_tenant_wallet_service_state**](PortalPaymentApi.md#change_tenant_wallet_service_state) | **POST** /api/2.0/portal/payment/servicestate | Change tenant wallet service state |
| [**create_customer_monthly_usage_report**](PortalPaymentApi.md#create_customer_monthly_usage_report) | **POST** /api/2.0/portal/payment/customer/usage/monthly/report | Start the customer monthly usage report generation |
| [**create_customer_operations_report**](PortalPaymentApi.md#create_customer_operations_report) | **POST** /api/2.0/portal/payment/customer/operationsreport | Start the customer operations report generation |
| [**create_customer_service_usage_report**](PortalPaymentApi.md#create_customer_service_usage_report) | **POST** /api/2.0/portal/payment/customer/usage/report | Start the customer service usage report generation |
| [**get_active_services**](PortalPaymentApi.md#get_active_services) | **GET** /api/2.0/portal/payment/activeservices | Get the active wallet services |
| [**get_ai_prices**](PortalPaymentApi.md#get_ai_prices) | **GET** /api/2.0/portal/payment/ai-prices | Get AI model prices |
| [**get_checkout_setup_url**](PortalPaymentApi.md#get_checkout_setup_url) | **GET** /api/2.0/portal/payment/checkoutsetupurl | Get the checkout setup page URL |
| [**get_customer_balance**](PortalPaymentApi.md#get_customer_balance) | **GET** /api/2.0/portal/payment/customer/balance | Get the customer balance |
| [**get_customer_info**](PortalPaymentApi.md#get_customer_info) | **GET** /api/2.0/portal/payment/customerinfo | Get the customer information |
| [**get_customer_monthly_usage**](PortalPaymentApi.md#get_customer_monthly_usage) | **GET** /api/2.0/portal/payment/customer/usage/monthly | Get the customer monthly usage |
| [**get_customer_monthly_usage_report**](PortalPaymentApi.md#get_customer_monthly_usage_report) | **GET** /api/2.0/portal/payment/customer/usage/monthly/report | Get the status of the customer monthly usage report generation |
| [**get_customer_operations**](PortalPaymentApi.md#get_customer_operations) | **GET** /api/2.0/portal/payment/customer/operations | Get the customer operations |
| [**get_customer_operations_report**](PortalPaymentApi.md#get_customer_operations_report) | **GET** /api/2.0/portal/payment/customer/operationsreport | Get the status of the customer operations report generation |
| [**get_customer_service_usage**](PortalPaymentApi.md#get_customer_service_usage) | **GET** /api/2.0/portal/payment/customer/usage | Get the customer service usage |
| [**get_customer_service_usage_report**](PortalPaymentApi.md#get_customer_service_usage_report) | **GET** /api/2.0/portal/payment/customer/usage/report | Get the status of the customer service usage report generation |
| [**get_payment_account**](PortalPaymentApi.md#get_payment_account) | **GET** /api/2.0/portal/payment/account | Get the payment account |
| [**get_payment_currencies**](PortalPaymentApi.md#get_payment_currencies) | **GET** /api/2.0/portal/payment/currencies | Get currencies |
| [**get_payment_quotas**](PortalPaymentApi.md#get_payment_quotas) | **GET** /api/2.0/portal/payment/quotas | Get quotas |
| [**get_payment_url**](PortalPaymentApi.md#get_payment_url) | **PUT** /api/2.0/portal/payment/url | Get the payment page URL |
| [**get_portal_prices**](PortalPaymentApi.md#get_portal_prices) | **GET** /api/2.0/portal/payment/prices | Get prices |
| [**get_quota_payment_information**](PortalPaymentApi.md#get_quota_payment_information) | **GET** /api/2.0/portal/payment/quota | Get quota payment information |
| [**get_restricted_ai_models**](PortalPaymentApi.md#get_restricted_ai_models) | **GET** /api/2.0/portal/payment/ai-model/restrictions | Get restricted AI models |
| [**get_subscription_balance_info**](PortalPaymentApi.md#get_subscription_balance_info) | **GET** /api/2.0/portal/payment/subscription/balance | Get the subscription balance information |
| [**get_tenant_wallet_service_settings**](PortalPaymentApi.md#get_tenant_wallet_service_settings) | **GET** /api/2.0/portal/payment/servicessettings | Gets the wallet service settings for the tenant. |
| [**get_tenant_wallet_settings**](PortalPaymentApi.md#get_tenant_wallet_settings) | **GET** /api/2.0/portal/payment/topupsettings | Gets the tenant wallet auto top up settings |
| [**get_wallet_service**](PortalPaymentApi.md#get_wallet_service) | **GET** /api/2.0/portal/payment/walletservice | Get wallet service |
| [**get_wallet_services**](PortalPaymentApi.md#get_wallet_services) | **GET** /api/2.0/portal/payment/walletservices | Get wallet services |
| [**move_subscription_to_wallet**](PortalPaymentApi.md#move_subscription_to_wallet) | **POST** /api/2.0/portal/payment/subscription/movetowallet | Move the subscription balance to the wallet and purchase admins |
| [**send_payment_request**](PortalPaymentApi.md#send_payment_request) | **POST** /api/2.0/portal/payment/request | Send a payment request |
| [**set_restricted_ai_models**](PortalPaymentApi.md#set_restricted_ai_models) | **PUT** /api/2.0/portal/payment/ai-model/restrictions | Set restricted AI models |
| [**set_tenant_wallet_settings**](PortalPaymentApi.md#set_tenant_wallet_settings) | **POST** /api/2.0/portal/payment/topupsettings | Set the wallet auto top up settings |
| [**terminate_customer_monthly_usage_report**](PortalPaymentApi.md#terminate_customer_monthly_usage_report) | **DELETE** /api/2.0/portal/payment/customer/usage/monthly/report | Terminate the customer monthly usage report generation |
| [**terminate_customer_operations_report**](PortalPaymentApi.md#terminate_customer_operations_report) | **DELETE** /api/2.0/portal/payment/customer/operationsreport | Terminate the customer operations report generation |
| [**terminate_customer_service_usage_report**](PortalPaymentApi.md#terminate_customer_service_usage_report) | **DELETE** /api/2.0/portal/payment/customer/usage/report | Terminate the customer service usage report generation |
| [**top_up_deposit**](PortalPaymentApi.md#top_up_deposit) | **POST** /api/2.0/portal/payment/deposit | Put money on deposit |
| [**update_payment**](PortalPaymentApi.md#update_payment) | **PUT** /api/2.0/portal/payment/update | Update the payment quantity |
| [**update_wallet_payment**](PortalPaymentApi.md#update_wallet_payment) | **PUT** /api/2.0/portal/payment/updatewallet | Update the wallet payment quantity |


## calculate_wallet_payment

> <PaymentCalculationWrapper> calculate_wallet_payment(opts)

Calculate the wallet payment amount

Calculates an amount of the wallet payment with the parameters specified in the request.

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

Change tenant wallet service state

Changes the state of a wallet service for the current tenant.  Requires permission to edit portal settings and a configured tariff service.  Adds or removes the specified service from the enabled services list based on the enabled flag.

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
  # Change tenant wallet service state
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
  # Change tenant wallet service state
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

Start the customer monthly usage report generation

Starts generating a customer monthly usage report as an xlsx file and saves it in Documents.

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
  # Start the customer monthly usage report generation
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
  # Start the customer monthly usage report generation
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

Start the customer operations report generation

Starts generating a customer operations report as an xlsx file and saves it in Documents.

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
  # Start the customer operations report generation
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
  # Start the customer operations report generation
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

Start the customer service usage report generation

Starts generating a customer service usage report as an xlsx file and saves it in Documents.

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
  # Start the customer service usage report generation
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
  # Start the customer service usage report generation
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


## get_active_services

> <ActiveServiceArrayWrapper> get_active_services

Get the active wallet services

Returns all the active wallet services (quotas) of the current portal: the active additional quotas  from the tariff, plus the services enabled manually via the wallet service settings.

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

> <AiPricesResponseWrapper> get_ai_prices

Get AI model prices

Retrieves the pricing information for AI models including chat, embedding, and web search services.  The prices are returned in the configured currency and normalized per million tokens.  Requires administrator permissions to access.

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

> <Array(<AiPricesResponseWrapper>, Integer, Hash)> get_ai_prices_with_http_info

```ruby
begin
  # Get AI model prices
  data, status_code, headers = api_instance.get_ai_prices_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AiPricesResponseWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::PaymentApi->get_ai_prices_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AiPricesResponseWrapper**](AiPricesResponseWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_checkout_setup_url

> <StringWrapper> get_checkout_setup_url(back_url, success_url)

Get the checkout setup page URL

Returns the URL to the checkout setup page.

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
back_url = 'https://example.com/payment/back' # String | The URL where the user will be redirected after setup cancellation.
success_url = 'https://example.com/payment/success' # String | The URL where the user will be redirected after successful payment.

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
| **back_url** | **String** | The URL where the user will be redirected after setup cancellation. |  |
| **success_url** | **String** | The URL where the user will be redirected after successful payment. |  |

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

Returns the customer balance from the accounting service.

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
  refresh: true # Boolean | Specifies whether to refresh the payment information cache or not.
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
| **refresh** | **Boolean** | Specifies whether to refresh the payment information cache or not. | [optional] |

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

Returns the customer information.

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
  refresh: true # Boolean | Specifies whether to refresh the payment information cache or not.
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
| **refresh** | **Boolean** | Specifies whether to refresh the payment information cache or not. | [optional] |

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

Returns the customer spending aggregated per calendar month from the accounting service.

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
  start_date: Time.parse('2025-01-01T00:00:00Z'), # Time | Start of the period (inclusive).
  end_date: Time.parse('2025-12-31T23:59:59Z') # Time | End of the period (inclusive).
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
| **start_date** | **Time** | Start of the period (inclusive). | [optional] |
| **end_date** | **Time** | End of the period (inclusive). | [optional] |

### Return type

[**CustomerMonthlyUsageArrayWrapper**](CustomerMonthlyUsageArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_monthly_usage_report

> <DocumentBuilderTaskWrapper> get_customer_monthly_usage_report

Get the status of the customer monthly usage report generation

Returns the status of generating a customer monthly usage report.

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
  # Get the status of the customer monthly usage report generation
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
  # Get the status of the customer monthly usage report generation
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

Get the customer operations

Returns the report of customer operations from the accounting service.

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
  offset: 0, # Integer | The number of items to skip for pagination. The default value is 0.
  limit: 25, # Integer | The maximum number of items to return for pagination. The default value is 25.
  service_name: ['inner_example'], # Array<String> | The service name list. A single string is also accepted for backward compatibility.
  start_date: Time.parse('2024-01-01T00:00:00Z'), # Time | The report start date.
  end_date: Time.parse('2024-01-31T23:59:59Z'), # Time | The report end date.
  participant_name: 'My Own Corporation', # String | The participant name.
  credit: true, # Boolean | Specifies whether to include credit operations in the report.
  debit: false, # Boolean | Specifies whether to include debit operations in the report.
  type: DocspaceApiSdk::OperationType::Unknown, # OperationType | The operation type to filter by.
  status: DocspaceApiSdk::OperationStatus::Pending, # OperationStatus | The operation status to filter by.
  order_by: 'StartDate', # String | The field to order by.
  order_type: DocspaceApiSdk::OperationOrderType::Descending # OperationOrderType | Order direction: Ascending or Descending.
}

begin
  # Get the customer operations
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
  # Get the customer operations
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
| **offset** | **Integer** | The number of items to skip for pagination. The default value is 0. | [optional] |
| **limit** | **Integer** | The maximum number of items to return for pagination. The default value is 25. | [optional] |
| **service_name** | [**Array&lt;String&gt;**](String.md) | The service name list. A single string is also accepted for backward compatibility. | [optional] |
| **start_date** | **Time** | The report start date. | [optional] |
| **end_date** | **Time** | The report end date. | [optional] |
| **participant_name** | **String** | The participant name. | [optional] |
| **credit** | **Boolean** | Specifies whether to include credit operations in the report. | [optional] |
| **debit** | **Boolean** | Specifies whether to include debit operations in the report. | [optional] |
| **type** | **OperationType** | The operation type to filter by. | [optional] |
| **status** | **OperationStatus** | The operation status to filter by. | [optional] |
| **order_by** | **String** | The field to order by. | [optional] |
| **order_type** | **OperationOrderType** | Order direction: Ascending or Descending. | [optional] |

### Return type

[**ReportWrapper**](ReportWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_operations_report

> <DocumentBuilderTaskWrapper> get_customer_operations_report

Get the status of the customer operations report generation

Returns the status of generating a customer operations report.

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
  # Get the status of the customer operations report generation
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
  # Get the status of the customer operations report generation
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

Returns the customer usage statistics aggregated per service from the accounting service.

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
  service_name: ['inner_example'], # Array<String> | The service name list.
  participant_name: 'My Own Corporation', # String | The participant name.
  status: DocspaceApiSdk::OperationStatus::Pending, # OperationStatus | The operation status to filter by.
  start_date: Time.parse('2025-01-01T00:00:00Z'), # Time | Start of the period (inclusive).
  end_date: Time.parse('2025-12-31T23:59:59Z'), # Time | End of the period (inclusive).
  metadata: { key: { key: 'inner_example'}}, # Hash<String, String> | Metadata key-value pairs to filter by.
  offset: 0, # Integer | The number of items to skip for pagination. The default value is 0.
  limit: 25, # Integer | The maximum number of items to return for pagination. The default value is 25.
  order_by: 'ServiceName', # String | The field to order by.
  order_type: DocspaceApiSdk::OperationOrderType::Descending # OperationOrderType | Order direction: Ascending or Descending.
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
| **service_name** | [**Array&lt;String&gt;**](String.md) | The service name list. | [optional] |
| **participant_name** | **String** | The participant name. | [optional] |
| **status** | **OperationStatus** | The operation status to filter by. | [optional] |
| **start_date** | **Time** | Start of the period (inclusive). | [optional] |
| **end_date** | **Time** | End of the period (inclusive). | [optional] |
| **metadata** | [**Hash&lt;String, String&gt;**](String.md) | Metadata key-value pairs to filter by. | [optional] |
| **offset** | **Integer** | The number of items to skip for pagination. The default value is 0. | [optional] |
| **limit** | **Integer** | The maximum number of items to return for pagination. The default value is 25. | [optional] |
| **order_by** | **String** | The field to order by. | [optional] |
| **order_type** | **OperationOrderType** | Order direction: Ascending or Descending. | [optional] |

### Return type

[**CustomerServiceUsageReportWrapper**](CustomerServiceUsageReportWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_customer_service_usage_report

> <DocumentBuilderTaskWrapper> get_customer_service_usage_report

Get the status of the customer service usage report generation

Returns the status of generating a customer service usage report.

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
  # Get the status of the customer service usage report generation
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
  # Get the status of the customer service usage report generation
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

Get the payment account

Returns the URL to the payment account.

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
  back_url: 'https://example.com' # String | The URL where the user will be redirected after payment processing.
}

begin
  # Get the payment account
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
  # Get the payment account
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
| **back_url** | **String** | The URL where the user will be redirected after payment processing. | [optional] |

### Return type

[**StringWrapper**](StringWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_currencies

> <CurrenciesArrayWrapper> get_payment_currencies

Get currencies

Returns the available portal currencies.

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
  # Get currencies
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
  # Get currencies
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

Get quotas

Returns the available portal quotas.

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
  wallet: true, # Boolean | Specifies whether to return the wallet quotas only.
  additional: true # Boolean | Specifies whether to return additional quotas only.
}

begin
  # Get quotas
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
  # Get quotas
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
| **wallet** | **Boolean** | Specifies whether to return the wallet quotas only. | [optional] |
| **additional** | **Boolean** | Specifies whether to return additional quotas only. | [optional] |

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

Returns the URL to the payment page.

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

Get prices

Returns the available portal prices.

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
  # Get prices
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
  # Get prices
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

Get quota payment information

Returns the payment information about the current portal quota.

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
  refresh: true # Boolean | Specifies whether to refresh the payment information cache or not.
}

begin
  # Get quota payment information
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
  # Get quota payment information
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
| **refresh** | **Boolean** | Specifies whether to refresh the payment information cache or not. | [optional] |

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

Returns the list of AI chat model IDs that are restricted (disabled) for the current tenant.  Restricted models cannot be used for AI chat conversations by any user within the portal.  Only DocSpace administrators can access this endpoint.

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

Returns the information about the current subscription and its unused (prorated) balance.

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

Gets the wallet service settings for the tenant.

Retrieves configuration settings related to the wallet service associated with the current tenant.

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
  # Gets the wallet service settings for the tenant.
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
  # Gets the wallet service settings for the tenant.
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

Gets the tenant wallet auto top up settings

Returns the wallet auto top up settings for the current tenant.

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
  # Gets the tenant wallet auto top up settings
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
  # Gets the tenant wallet auto top up settings
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

Get wallet service

Returns the specified wallet service.

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
service = DocspaceApiSdk::TenantWalletService::AISearch # TenantWalletService | The wallet service type.

begin
  # Get wallet service
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
  # Get wallet service
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
| **service** | **TenantWalletService** | The wallet service type. |  |

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

Returns the available wallet services.

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

Move the subscription balance to the wallet and purchase admins

Cancels the current subscription, moves its unused balance to the wallet, and purchases the requested number of  admins from the wallet. If the wallet balance is not enough, it is topped up for the missing amount first  (with several attempts, as the balance may be consumed concurrently).

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
  # Move the subscription balance to the wallet and purchase admins
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
  # Move the subscription balance to the wallet and purchase admins
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

Send a payment request

Sends a request for the portal payment.

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
  # Send a payment request
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
  # Send a payment request
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

Overwrites the entire set of restricted AI model IDs for the current tenant.  The request body must contain the complete desired set — to add a restriction, include the new model alongside existing ones;  to remove one, omit it. An empty set lifts all restrictions. Only portal administrators can perform this action.

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

Set the wallet auto top up settings

Updates the wallet auto top up settings for the current tenant.  Requires the tariff service to be configured and the user to be authorized as a payer.  Returns null if the tariff service is not configured or customer information/balance cannot be retrieved.

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
  # Set the wallet auto top up settings
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
  # Set the wallet auto top up settings
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

Terminate the customer monthly usage report generation

Terminates generating a customer monthly usage report.

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
  # Terminate the customer monthly usage report generation
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
  # Terminate the customer monthly usage report generation
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

Terminate the customer operations report generation

Terminates generating a customer operations report.

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
  # Terminate the customer operations report generation
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
  # Terminate the customer operations report generation
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

Terminate the customer service usage report generation

Terminates generating a customer service usage report.

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
  # Terminate the customer service usage report generation
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
  # Terminate the customer service usage report generation
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

Put money on deposit

Returns the result of putting money on deposit.

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
  # Put money on deposit
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
  # Put money on deposit
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

Update the payment quantity

Updates the payment quantity with the parameters specified in the request.

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
  # Update the payment quantity
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
  # Update the payment quantity
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

Update the wallet payment quantity

Updates the wallet payment quantity with the parameters specified in the request.

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
  # Update the wallet payment quantity
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
  # Update the wallet payment quantity
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

