# DocspaceApiSdk::SecurityLoginHistoryApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_login_history_report**](SecurityLoginHistoryApi.md#create_login_history_report) | **POST** /api/2.0/security/audit/login/report | Start the login history report generation |
| [**get_last_login_events**](SecurityLoginHistoryApi.md#get_last_login_events) | **GET** /api/2.0/security/audit/login/last | Get login history |
| [**get_login_events_by_filter**](SecurityLoginHistoryApi.md#get_login_events_by_filter) | **GET** /api/2.0/security/audit/login/filter | Get filtered login events |
| [**get_login_history_report**](SecurityLoginHistoryApi.md#get_login_history_report) | **GET** /api/2.0/security/audit/login/report | Get the login history report generation status |
| [**terminate_login_history_report**](SecurityLoginHistoryApi.md#terminate_login_history_report) | **DELETE** /api/2.0/security/audit/login/report | Terminate the login history report generation |


## create_login_history_report

> <DocumentBuilderTaskWrapper> create_login_history_report(opts)

Start the login history report generation

Starts generating the login history report (XLSX by default, or CSV) and saves it to My documents.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/create-login-history-report/).

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

api_instance = DocspaceApiSdk::Security::LoginHistoryApi.new
opts = {
  format: DocspaceApiSdk::AuditReportFormat::Xlsx # AuditReportFormat | The output file format of the report. Defaults to XLSX.
}

begin
  # Start the login history report generation
  result = api_instance.create_login_history_report(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::LoginHistoryApi->create_login_history_report: #{e}"
end
```

#### Using the create_login_history_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentBuilderTaskWrapper>, Integer, Hash)> create_login_history_report_with_http_info(opts)

```ruby
begin
  # Start the login history report generation
  data, status_code, headers = api_instance.create_login_history_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentBuilderTaskWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::LoginHistoryApi->create_login_history_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **AuditReportFormat** | The output file format of the report. Defaults to XLSX. | [optional] |

### Return type

[**DocumentBuilderTaskWrapper**](DocumentBuilderTaskWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_last_login_events

> <LoginEventArrayWrapper> get_last_login_events

Get login history

Returns all the latest user login activity, including successful logins and error logs.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-last-login-events/).

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

api_instance = DocspaceApiSdk::Security::LoginHistoryApi.new

begin
  # Get login history
  result = api_instance.get_last_login_events
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::LoginHistoryApi->get_last_login_events: #{e}"
end
```

#### Using the get_last_login_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginEventArrayWrapper>, Integer, Hash)> get_last_login_events_with_http_info

```ruby
begin
  # Get login history
  data, status_code, headers = api_instance.get_last_login_events_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginEventArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::LoginHistoryApi->get_last_login_events_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**LoginEventArrayWrapper**](LoginEventArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_login_events_by_filter

> <LoginEventArrayWrapper> get_login_events_by_filter(opts)

Get filtered login events

Returns a list of the login events by the parameters specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-events-by-filter/).

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

api_instance = DocspaceApiSdk::Security::LoginHistoryApi.new
opts = {
  user_id: '00000000-0000-0000-0000-000000000000', # String | The ID of the user whose login events are being queried.
  action: DocspaceApiSdk::MessageAction::LoginSuccess, # MessageAction | The login-related action to filter events by.
  from: Time.parse('2024-01-15T10:30:00Z'), # Time | The starting date and time for filtering login events.
  to: Time.parse('2024-01-15T10:30:00Z'), # Time | The ending date and time for filtering login events.
  count: 1, # Integer | The number of login events to retrieve in the query.
  start_index: 1 # Integer | The starting index for fetching a subset of login events from the query results.
}

begin
  # Get filtered login events
  result = api_instance.get_login_events_by_filter(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::LoginHistoryApi->get_login_events_by_filter: #{e}"
end
```

#### Using the get_login_events_by_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LoginEventArrayWrapper>, Integer, Hash)> get_login_events_by_filter_with_http_info(opts)

```ruby
begin
  # Get filtered login events
  data, status_code, headers = api_instance.get_login_events_by_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LoginEventArrayWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::LoginHistoryApi->get_login_events_by_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The ID of the user whose login events are being queried. | [optional] |
| **action** | **MessageAction** | The login-related action to filter events by. | [optional] |
| **from** | **Time** | The starting date and time for filtering login events. | [optional] |
| **to** | **Time** | The ending date and time for filtering login events. | [optional] |
| **count** | **Integer** | The number of login events to retrieve in the query. | [optional] |
| **start_index** | **Integer** | The starting index for fetching a subset of login events from the query results. | [optional] |

### Return type

[**LoginEventArrayWrapper**](LoginEventArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_login_history_report

> <DocumentBuilderTaskWrapper> get_login_history_report

Get the login history report generation status

Returns the status of generating the login history report.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-login-history-report/).

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

api_instance = DocspaceApiSdk::Security::LoginHistoryApi.new

begin
  # Get the login history report generation status
  result = api_instance.get_login_history_report
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::LoginHistoryApi->get_login_history_report: #{e}"
end
```

#### Using the get_login_history_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentBuilderTaskWrapper>, Integer, Hash)> get_login_history_report_with_http_info

```ruby
begin
  # Get the login history report generation status
  data, status_code, headers = api_instance.get_login_history_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentBuilderTaskWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::LoginHistoryApi->get_login_history_report_with_http_info: #{e}"
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


## terminate_login_history_report

> terminate_login_history_report

Terminate the login history report generation

Terminates generating the login history report.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/terminate-login-history-report/).

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

api_instance = DocspaceApiSdk::Security::LoginHistoryApi.new

begin
  # Terminate the login history report generation
  api_instance.terminate_login_history_report
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::LoginHistoryApi->terminate_login_history_report: #{e}"
end
```

#### Using the terminate_login_history_report_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> terminate_login_history_report_with_http_info

```ruby
begin
  # Terminate the login history report generation
  data, status_code, headers = api_instance.terminate_login_history_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::LoginHistoryApi->terminate_login_history_report_with_http_info: #{e}"
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

