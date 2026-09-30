# DocspaceApiSdk::SecurityActiveConnectionsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_all_active_connections**](SecurityActiveConnectionsApi.md#get_all_active_connections) | **GET** /api/2.0/security/activeconnections | Get active connections |
| [**log_out_active_connection**](SecurityActiveConnectionsApi.md#log_out_active_connection) | **PUT** /api/2.0/security/activeconnections/logout/{loginEventId} | Log out one connection |
| [**log_out_all_active_connections_change_password**](SecurityActiveConnectionsApi.md#log_out_all_active_connections_change_password) | **PUT** /api/2.0/security/activeconnections/logoutallchangepassword | Log out and reset password |
| [**log_out_all_active_connections_for_user**](SecurityActiveConnectionsApi.md#log_out_all_active_connections_for_user) | **PUT** /api/2.0/security/activeconnections/logoutall/{userId} | Log out a user everywhere |
| [**log_out_all_except_this_connection**](SecurityActiveConnectionsApi.md#log_out_all_except_this_connection) | **PUT** /api/2.0/security/activeconnections/logoutallexceptthis | Log out other connections |


## get_all_active_connections

> <ActiveConnectionsWrapper> get_all_active_connections

Get active connections

Lists the connections the calling user currently has open on this portal - one item per successful sign-in  that is still active - so a client can show where the account is signed in and close what does not belong  there. Any signed-in user may call it, nothing has to be called first, and the answer always covers the caller  alone: the operation is read-only, idempotent and cannot show another user's connections. Items cover the last  year and are ordered newest sign-in first, with the caller's own connection moved to the top and its browser,  platform, IP address and location refreshed from the current request. `loginEvent` is the ID of that own  connection and is `0` when the request was authenticated with a token in the `Authorization` header instead of  the portal cookie; nothing is then marked as current, and a user with no stored connections gets a single item  describing the current request. `country` and `city` are resolved from the IP address and stay empty when it  cannot be located. Pass an item's `id` to `PUT api/2.0/security/activeconnections/logout/{loginEventId}` to  end that one connection.

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

Log out one connection

Closes one active connection: the sign-in behind `loginEventId` is marked inactive, the token and cookie tied  to it stop working, the client holding it is disconnected and a logout entry is written to the portal audit  trail. Take `loginEventId` from the `id` of an item of `GET api/2.0/security/activeconnections`, which also  reports in `loginEvent` which connection the caller is using, so a client can avoid closing its own. A user  may close their own connections, while closing somebody else's requires a DocSpace administrator and any other  caller is refused with 403. The call is mutating, destructive for that one session and idempotent, and it  leaves every other connection of the user alone - `PUT api/2.0/security/activeconnections/logoutallexceptthis`  is the way to close the rest in one go. Only `true` means the connection was open and has just been closed;  `false` comes back when this portal has no such active connection, including one that was already closed, and  after any other failure.

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
login_event_id = 12345 # Integer | The sign-in to act on, by login event ID. Take it from the `id` of an item of  `GET api/2.0/security/activeconnections`, which also marks the connection the caller is using, so a client  can avoid picking its own.

begin
  # Log out one connection
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
  # Log out one connection
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
| **login_event_id** | **Integer** | The sign-in to act on, by login event ID. Take it from the `id` of an item of  `GET api/2.0/security/activeconnections`, which also marks the connection the caller is using, so a client  can avoid picking its own. |  |

### Return type

[**BooleanWrapper**](BooleanWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## log_out_all_active_connections_change_password

> <StringWrapper> log_out_all_active_connections_change_password

Log out and reset password

Closes every active connection of the calling user and returns the link that user has to open to set a new  password - the answer to a suspicious sign-in seen in `GET api/2.0/security/activeconnections`. Any signed-in  user may call it for their own account and nothing has to be called first; the same clean-up for somebody else  is `PUT api/2.0/security/activeconnections/logoutall/{userId}`. The call is mutating and destructive for  sessions - every token and cookie issued to the user before it stops working and the clients holding them are  disconnected - and it is not idempotent: the request is written to the portal audit trail, which invalidates  the link any earlier call returned, and the caller's own client is handed a fresh cookie in the response and  stays signed in through a new connection. The password itself is not changed here, and the link is handed back  to the caller rather than mailed to the user: the URL carries a time-limited `PasswordChange` key, which the  confirmation page it opens - or `PUT api/2.0/people/{userid}/password` - needs to accept the new password. A  failure is swallowed instead of reported, so an empty body with status 200 means nothing was done and the call  has to be repeated.

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
  # Log out and reset password
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
  # Log out and reset password
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

Log out a user everywhere

Closes every active connection of one portal user: the connections are marked inactive, every token and cookie  issued to that user before the call stops working, the clients holding them are disconnected and a logout  entry is written to the portal audit trail. Nothing has to be called first; `userId` is the portal user ID  that `GET api/2.0/people` returns. A user may pass their own ID, while ending somebody else's connections  requires a DocSpace administrator and any other caller is refused with 403. The call is mutating, destructive  for those sessions and idempotent - a user with nothing open is not an error - and it returns no content, so  the state afterwards is read from `GET api/2.0/security/activeconnections`. A caller who ends their own  connections is handed a fresh cookie in the response and stays signed in through a new connection. Nothing  else about the user changes: the account stays enabled and the password stays valid, and to keep the current  connection alive instead use `PUT api/2.0/security/activeconnections/logoutallexceptthis`.

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
user_id = '00000000-0000-0000-0000-000000000000' # String | The portal account the operation acts on, by user ID as `GET api/2.0/people` reports it. Acting on an account  other than the caller's own generally needs administrator rights.

begin
  # Log out a user everywhere
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
  # Log out a user everywhere
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
| **user_id** | **String** | The portal account the operation acts on, by user ID as `GET api/2.0/people` reports it. Acting on an account  other than the caller's own generally needs administrator rights. |  |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## log_out_all_except_this_connection

> <StringWrapper> log_out_all_except_this_connection

Log out other connections

Closes every active connection of the calling user except the one this request was made with, so the current  client keeps working while every other browser and device is signed out. Any signed-in user may call it for  their own account and nothing has to be called first. The connection to keep is the one behind the portal  authentication cookie: a request authenticated with a token in the `Authorization` header has none, and then  every connection of the user is closed, including the one that token belongs to - read `loginEvent` from  `GET api/2.0/security/activeconnections` first to see which connection, if any, will survive. The call is  mutating and destructive for the other sessions, and idempotent: the tokens behind them stop working, their  clients are disconnected at once and a logout entry is written to the portal audit trail. It answers with the  display name of the calling user, while an empty answer with status 200 means the attempt failed and nothing  can be assumed about what was closed.

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
  # Log out other connections
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
  # Log out other connections
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

