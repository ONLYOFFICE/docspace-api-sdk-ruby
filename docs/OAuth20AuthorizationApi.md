# DocspaceApiSdk::OAuth20AuthorizationApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authorize_o_auth**](OAuth20AuthorizationApi.md#authorize_o_auth) | **GET** /oauth2/authorize | Start the authorization flow |
| [**exchange_token**](OAuth20AuthorizationApi.md#exchange_token) | **POST** /oauth2/token | Exchange the authorization code |
| [**submit_consent**](OAuth20AuthorizationApi.md#submit_consent) | **POST** /oauth2/authorize | Submit the consent decision |


## authorize_o_auth

> authorize_o_auth(response_type, client_id, redirect_uri, scope)

Start the authorization flow

Starts the OAuth2 authorization code flow for the client named by client_id. The caller has to present the portal signature cookie, and a request without a valid one is not refused with 401 or 403 but redirected to the portal login page, carrying the client ID so the flow can resume after signing in. When the user has not yet consented to the requested scopes the browser is redirected to the consent page; once the consent exists the browser is redirected to the client's redirect URI with the authorization code and, when one was sent, the original state. A caller that cannot follow redirects may send the X-Disable-Redirect header, and then the response is 200 with an empty body and the target URL in the X-Redirect-URI header. The code returned here is exchanged for tokens at the token endpoint.

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
response_type = 'code' # String | The OAuth 2.0 response type. Only code is supported: this server issues an authorization code, never a token, from this endpoint.
client_id = '6c7cf17b-1bd3-47d5-94c6-be2d3570e168' # String | The identifier the client was given when it was registered. It selects both the client shown on the consent screen and the set of redirect URIs the request is checked against.
redirect_uri = 'https://example.com' # String | Where to send the user once authorization is complete. It has to be one of the redirect URIs registered for the client, otherwise the request is refused.
scope = 'files:read' # String | The permissions being asked for, as a space-separated list. Every scope has to be one the client is registered for, and the consent screen lists exactly these.

begin
  # Start the authorization flow
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
  # Start the authorization flow
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
| **response_type** | **String** | The OAuth 2.0 response type. Only code is supported: this server issues an authorization code, never a token, from this endpoint. |  |
| **client_id** | **String** | The identifier the client was given when it was registered. It selects both the client shown on the consent screen and the set of redirect URIs the request is checked against. |  |
| **redirect_uri** | **String** | Where to send the user once authorization is complete. It has to be one of the redirect URIs registered for the client, otherwise the request is refused. |  |
| **scope** | **String** | The permissions being asked for, as a space-separated list. Every scope has to be one the client is registered for, and the consent screen lists exactly these. |  |

### Return type

nil (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## exchange_token

> <ExchangeToken200Response> exchange_token(opts)

Exchange the authorization code

Exchanges an authorization code for an access token. The request is form-encoded and has to carry the grant type, the code, the same redirect URI that was used to obtain the code, and the client credentials: the client authenticates itself here rather than through the portal signature cookie the authorization endpoint uses. The response carries the access token, its type and its lifetime in seconds, plus a refresh token when the client is configured for the refresh token grant. Client authentication that fails is answered with 401, while a malformed, unknown or expired code is answered with 400. The code is single use, so replaying it fails.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/exchange-token/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'
# setup authorization
DocspaceApiSdk.configure do |config|
  # Configure API key authorization: cookieAuth
  config.api_key['asc_auth_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['asc_auth_key'] = 'Bearer'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DocspaceApiSdk::OAuth20::AuthorizationApi.new
opts = {
  grant_type: 'grant_type_example', # String | Which exchange is being performed: authorization_code to redeem a code, refresh_token to renew an access token.
  code: 'code_example', # String | The authorization code returned by the authorization endpoint. It may be redeemed once.
  redirect_uri: 'redirect_uri_example', # String | The same redirect URI that was used to obtain the code. The exchange fails when it differs.
  client_id: 'client_id_example', # String | The identifier of the client redeeming the code.
  client_secret: 'client_secret_example' # String | The secret of the client redeeming the code. It is omitted by a public client, which proves itself with a PKCE code verifier instead.
}

begin
  # Exchange the authorization code
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
  # Exchange the authorization code
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
| **grant_type** | **String** | Which exchange is being performed: authorization_code to redeem a code, refresh_token to renew an access token. | [optional] |
| **code** | **String** | The authorization code returned by the authorization endpoint. It may be redeemed once. | [optional] |
| **redirect_uri** | **String** | The same redirect URI that was used to obtain the code. The exchange fails when it differs. | [optional] |
| **client_id** | **String** | The identifier of the client redeeming the code. | [optional] |
| **client_secret** | **String** | The secret of the client redeeming the code. It is omitted by a public client, which proves itself with a PKCE code verifier instead. | [optional] |

### Return type

[**ExchangeToken200Response**](ExchangeToken200Response.md)

### Authorization

[cookieAuth](../README.md#cookieAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## submit_consent

> submit_consent(opts)

Submit the consent decision

Submits the user's consent decision for the scopes an authorization request asked for. It is the form post the consent page makes, so it carries the client ID, the state and the agreed scopes as multipart form data, along with the same portal signature cookie the authorization request needed. On success the browser is redirected to the client's redirect URI with an authorization code, or, when the request carries the X-Disable-Redirect header, answered 200 with that URL in the X-Redirect-URI header. The consent is stored per user and client, so a later authorization request for the same scopes no longer stops at the consent page.

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
  client_id: 'client_id_example', # String | The client the consent is being given to. It has to be the same client the authorization request named.
  state: 'state_example', # String | The opaque value carried through from the authorization request, returned unchanged on the redirect so the client can match the answer to its request.
  scope: 'scope_example' # String | The scopes the user agreed to, as a space-separated list. Anything the user declined is left out, so this may be narrower than what was requested.
}

begin
  # Submit the consent decision
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
  # Submit the consent decision
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
| **client_id** | **String** | The client the consent is being given to. It has to be the same client the authorization request named. | [optional] |
| **state** | **String** | The opaque value carried through from the authorization request, returned unchanged on the redirect so the client can match the answer to its request. | [optional] |
| **scope** | **String** | The scopes the user agreed to, as a space-separated list. Anything the user declined is left out, so this may be narrower than what was requested. | [optional] |

### Return type

nil (empty response body)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: Not defined

