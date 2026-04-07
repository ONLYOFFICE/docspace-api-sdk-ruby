# DocspaceApiSdk::SecurityLoginHistoryApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_login_history_report**](SecurityLoginHistoryApi.md#create_login_history_report) | **POST** /api/2.0/security/audit/login/report | Generate the login history report |
| [**get_last_login_events**](SecurityLoginHistoryApi.md#get_last_login_events) | **GET** /api/2.0/security/audit/login/last | Get login history |
| [**get_login_events_by_filter**](SecurityLoginHistoryApi.md#get_login_events_by_filter) | **GET** /api/2.0/security/audit/login/filter | Get filtered login events |


## create_login_history_report

> <StringWrapper> create_login_history_report

Generate the login history report

Generates the login history report.

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

begin
  # Generate the login history report
  result = api_instance.create_login_history_report
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::LoginHistoryApi->create_login_history_report: #{e}"
end
```

#### Using the create_login_history_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> create_login_history_report_with_http_info

```ruby
begin
  # Generate the login history report
  data, status_code, headers = api_instance.create_login_history_report_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::LoginHistoryApi->create_login_history_report_with_http_info: #{e}"
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
  from: DocspaceApiSdk::ApiDateTime.new, # ApiDateTime | The starting date and time for filtering login events.
  to: DocspaceApiSdk::ApiDateTime.new, # ApiDateTime | The ending date and time for filtering login events.
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
| **from** | **ApiDateTime** | The starting date and time for filtering login events. | [optional] |
| **to** | **ApiDateTime** | The ending date and time for filtering login events. | [optional] |
| **count** | **Integer** | The number of login events to retrieve in the query. | [optional] |
| **start_index** | **Integer** | The starting index for fetching a subset of login events from the query results. | [optional] |

### Return type

[**LoginEventArrayWrapper**](LoginEventArrayWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

