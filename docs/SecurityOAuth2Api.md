# DocspaceApiSdk::SecurityOAuth2Api

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**generate_jwt_token**](SecurityOAuth2Api.md#generate_jwt_token) | **GET** /api/2.0/security/oauth2/token | Generate JWT token |


## generate_jwt_token

> <StringWrapper> generate_jwt_token

Generate JWT token

Issues a short-lived JWT that identifies the calling user to the identity service, the component that stores  the OAuth2 applications of this installation and their consents. Any signed-in user may call it, nothing has  to be prepared first, and the token always describes the caller - it cannot be issued on behalf of somebody  else. The token is signed with the installation's own key and carries the user ID, name and e-mail, the portal  ID and address, whether the caller is an administrator or a guest, and whether the portal's developer tools  setting leaves OAuth2 applications open to ordinary users. It expires five minutes after it was issued and is  meant to be presented to the identity service in the `x-signature` header, not to this API: requests to the  portal are authorized with the token that `POST api/2.0/authentication` returns, and this JWT is not accepted  in its place. The call is read-only and gives the token back as a plain string; ask for a fresh one per  exchange instead of storing it.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/generate-jwt-token/).

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

api_instance = DocspaceApiSdk::Security::OAuth2Api.new

begin
  # Generate JWT token
  result = api_instance.generate_jwt_token
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::OAuth2Api->generate_jwt_token: #{e}"
end
```

#### Using the generate_jwt_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringWrapper>, Integer, Hash)> generate_jwt_token_with_http_info

```ruby
begin
  # Generate JWT token
  data, status_code, headers = api_instance.generate_jwt_token_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::OAuth2Api->generate_jwt_token_with_http_info: #{e}"
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

