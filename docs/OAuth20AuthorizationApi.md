# DocspaceApiSdk::OAuth20AuthorizationApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authorize_o_auth**](OAuth20AuthorizationApi.md#authorize_o_auth) | **GET** /oauth2/authorize | OAuth2 Authorization Endpoint |
| [**exchange_token**](OAuth20AuthorizationApi.md#exchange_token) | **POST** /oauth2/token | OAuth2 Token Endpoint |
| [**submit_consent**](OAuth20AuthorizationApi.md#submit_consent) | **POST** /oauth2/authorize | OAuth2 consent endpoint |


## authorize_o_auth

> authorize_o_auth(response_type, client_id, redirect_uri, scope)

OAuth2 Authorization Endpoint

Initiates the OAuth2 authorization flow.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/authorize-o-auth/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: x-signature
  config.api_key['x-signature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-signature'] = 'Bearer'
end

api_instance = DocspaceApiSdk::OAuth20::AuthorizationApi.new
response_type = 'code' # String | The OAuth 2.0 response type, must be 'code' for authorization code flow.
client_id = '6c7cf17b-1bd3-47d5-94c6-be2d3570e168' # String | The client identifier issued to the client during registration.
redirect_uri = 'https://example.com' # String | The URL to redirect to after authorization is complete.
scope = 'files:read' # String | The space-separated list of requested scope permissions.

begin
  # OAuth2 Authorization Endpoint
  api_instance.authorize_o_auth(response_type, client_id, redirect_uri, scope)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::AuthorizationApi->authorize_o_auth: #{e}"
end
```

#### Using the authorize_o_auth_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> authorize_o_auth_with_http_info(response_type, client_id, redirect_uri, scope)

```ruby
begin
  # OAuth2 Authorization Endpoint
  data, status_code, headers = api_instance.authorize_o_auth_with_http_info(response_type, client_id, redirect_uri, scope)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::AuthorizationApi->authorize_o_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response_type** | **String** | The OAuth 2.0 response type, must be 'code' for authorization code flow. |  |
| **client_id** | **String** | The client identifier issued to the client during registration. |  |
| **redirect_uri** | **String** | The URL to redirect to after authorization is complete. |  |
| **scope** | **String** | The space-separated list of requested scope permissions. |  |

### Return type

nil (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## exchange_token

> <ExchangeToken200Response> exchange_token(opts)

OAuth2 Token Endpoint

Exchange authorization code for access token

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/exchange-token/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::OAuth20::AuthorizationApi.new
opts = {
  grant_type: 'grant_type_example', # String | The OAuth2 grant type, must be 'authorization_code' for the authorization code flow.
  code: 'code_example', # String | A temporary authorization code that is sent to the client to be exchanged for a token.
  redirect_uri: 'redirect_uri_example', # String | The URL where the user will be redirected after successful or unsuccessful authentication.
  client_id: 'client_id_example', # String | The client identifier issued to the client during registration.
  client_secret: 'client_secret_example' # String | The client secret issued to the client during registration.
}

begin
  # OAuth2 Token Endpoint
  result = api_instance.exchange_token(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::AuthorizationApi->exchange_token: #{e}"
end
```

#### Using the exchange_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExchangeToken200Response>, Integer, Hash)> exchange_token_with_http_info(opts)

```ruby
begin
  # OAuth2 Token Endpoint
  data, status_code, headers = api_instance.exchange_token_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExchangeToken200Response>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::AuthorizationApi->exchange_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_type** | **String** | The OAuth2 grant type, must be 'authorization_code' for the authorization code flow. | [optional] |
| **code** | **String** | A temporary authorization code that is sent to the client to be exchanged for a token. | [optional] |
| **redirect_uri** | **String** | The URL where the user will be redirected after successful or unsuccessful authentication. | [optional] |
| **client_id** | **String** | The client identifier issued to the client during registration. | [optional] |
| **client_secret** | **String** | The client secret issued to the client during registration. | [optional] |

### Return type

[**ExchangeToken200Response**](ExchangeToken200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## submit_consent

> submit_consent(opts)

OAuth2 consent endpoint

Sends consent approval

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/submit-consent/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: x-signature
  config.api_key['x-signature'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-signature'] = 'Bearer'
end

api_instance = DocspaceApiSdk::OAuth20::AuthorizationApi.new
opts = {
  client_id: 'client_id_example', # String | The client identifier issued to the client during registration.
  state: 'state_example', # String | The random string used to solve the CSRF vulnerability problem.
  scope: 'scope_example' # String | The space-separated list of requested scope permissions.
}

begin
  # OAuth2 consent endpoint
  api_instance.submit_consent(opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::AuthorizationApi->submit_consent: #{e}"
end
```

#### Using the submit_consent_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> submit_consent_with_http_info(opts)

```ruby
begin
  # OAuth2 consent endpoint
  data, status_code, headers = api_instance.submit_consent_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::AuthorizationApi->submit_consent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | The client identifier issued to the client during registration. | [optional] |
| **state** | **String** | The random string used to solve the CSRF vulnerability problem. | [optional] |
| **scope** | **String** | The space-separated list of requested scope permissions. | [optional] |

### Return type

nil (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not defined

