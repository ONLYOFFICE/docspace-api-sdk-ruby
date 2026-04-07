# DocspaceApiSdk::SecurityActiveConnectionsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_all_active_connections**](SecurityActiveConnectionsApi.md#get_all_active_connections) | **GET** /api/2.0/security/activeconnections | Get active connections |
| [**log_out_active_connection**](SecurityActiveConnectionsApi.md#log_out_active_connection) | **PUT** /api/2.0/security/activeconnections/logout/{loginEventId} | Log out from the connection |
| [**log_out_all_active_connections_change_password**](SecurityActiveConnectionsApi.md#log_out_all_active_connections_change_password) | **PUT** /api/2.0/security/activeconnections/logoutallchangepassword | Log out and change password |
| [**log_out_all_active_connections_for_user**](SecurityActiveConnectionsApi.md#log_out_all_active_connections_for_user) | **PUT** /api/2.0/security/activeconnections/logoutall/{userId} | Log out for the user by ID |
| [**log_out_all_except_this_connection**](SecurityActiveConnectionsApi.md#log_out_all_except_this_connection) | **PUT** /api/2.0/security/activeconnections/logoutallexceptthis | Log out from all connections except the current one |


## get_all_active_connections

> <ActiveConnectionsWrapper> get_all_active_connections

Get active connections

Returns all the active connections to the portal.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-all-active-connections/).

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

api_instance = DocspaceApiSdk::Security::ActiveConnectionsApi.new

begin
  # Get active connections
  result = api_instance.get_all_active_connections
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::ActiveConnectionsApi->get_all_active_connections: #{e}"
end
```

#### Using the get_all_active_connections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActiveConnectionsWrapper>, Integer, Hash)> get_all_active_connections_with_http_info

```ruby
begin
  # Get active connections
  data, status_code, headers = api_instance.get_all_active_connections_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActiveConnectionsWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::ActiveConnectionsApi->get_all_active_connections_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ActiveConnectionsWrapper**](ActiveConnectionsWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## log_out_active_connection

> <BooleanWrapper> log_out_active_connection(login_event_id)

Log out from the connection

Logs out from the connection with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-active-connection/).

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

api_instance = DocspaceApiSdk::Security::ActiveConnectionsApi.new
login_event_id = 12345 # Integer | The ID of the specific login event.

begin
  # Log out from the connection
  result = api_instance.log_out_active_connection(login_event_id)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::ActiveConnectionsApi->log_out_active_connection: #{e}"
end
```

#### Using the log_out_active_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BooleanWrapper>, Integer, Hash)> log_out_active_connection_with_http_info(login_event_id)

```ruby
begin
  # Log out from the connection
  data, status_code, headers = api_instance.log_out_active_connection_with_http_info(login_event_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BooleanWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::ActiveConnectionsApi->log_out_active_connection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login_event_id** | **Integer** | The ID of the specific login event. |  |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## log_out_all_active_connections_change_password

> <StringWrapper> log_out_all_active_connections_change_password

Log out and change password

Logs out from all the active connections for the current user and changes their password.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-all-active-connections-change-password/).

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

api_instance = DocspaceApiSdk::Security::ActiveConnectionsApi.new

begin
  # Log out and change password
  result = api_instance.log_out_all_active_connections_change_password
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::ActiveConnectionsApi->log_out_all_active_connections_change_password: #{e}"
end
```

#### Using the log_out_all_active_connections_change_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> log_out_all_active_connections_change_password_with_http_info

```ruby
begin
  # Log out and change password
  data, status_code, headers = api_instance.log_out_all_active_connections_change_password_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::ActiveConnectionsApi->log_out_all_active_connections_change_password_with_http_info: #{e}"
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


## log_out_all_active_connections_for_user

> log_out_all_active_connections_for_user(user_id)

Log out for the user by ID

Logs out from all the active connections for the user with the ID specified in the request.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-all-active-connections-for-user/).

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

api_instance = DocspaceApiSdk::Security::ActiveConnectionsApi.new
user_id = '00000000-0000-0000-0000-000000000000' # String | The user ID extracted from the route parameters.

begin
  # Log out for the user by ID
  api_instance.log_out_all_active_connections_for_user(user_id)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::ActiveConnectionsApi->log_out_all_active_connections_for_user: #{e}"
end
```

#### Using the log_out_all_active_connections_for_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> log_out_all_active_connections_for_user_with_http_info(user_id)

```ruby
begin
  # Log out for the user by ID
  data, status_code, headers = api_instance.log_out_all_active_connections_for_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::ActiveConnectionsApi->log_out_all_active_connections_for_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | The user ID extracted from the route parameters. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## log_out_all_except_this_connection

> <StringWrapper> log_out_all_except_this_connection

Log out from all connections except the current one

Logs out from all the active connections except the current connection.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/log-out-all-except-this-connection/).

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

api_instance = DocspaceApiSdk::Security::ActiveConnectionsApi.new

begin
  # Log out from all connections except the current one
  result = api_instance.log_out_all_except_this_connection
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::ActiveConnectionsApi->log_out_all_except_this_connection: #{e}"
end
```

#### Using the log_out_all_except_this_connection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> log_out_all_except_this_connection_with_http_info

```ruby
begin
  # Log out from all connections except the current one
  data, status_code, headers = api_instance.log_out_all_except_this_connection_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::ActiveConnectionsApi->log_out_all_except_this_connection_with_http_info: #{e}"
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

