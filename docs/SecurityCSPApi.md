# DocspaceApiSdk::SecurityCSPApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**configure_csp**](SecurityCSPApi.md#configure_csp) | **POST** /api/2.0/security/csp | Configure CSP settings |
| [**get_csp_settings**](SecurityCSPApi.md#get_csp_settings) | **GET** /api/2.0/security/csp | Get CSP settings |


## configure_csp

> <CspWrapper> configure_csp(opts)

Configure CSP settings

Replaces the list of external domains the portal's Content Security Policy trusts and returns the policy  header the portal serves to browsers from that moment on. The list in `domains` replaces the stored one, so an  omitted or empty list falls back to the portal's built-in policy, and every entry that is sent becomes an  allowed source for scripts, styles, images, fonts, frames, media and connections at once. An entry may be a  host, a host with a scheme, or a wildcard host such as `*.example.com`; it has to form a valid absolute  address and may contain ASCII characters only, and an entry that does not is refused with 400 before anything  is saved. The caller needs the portal-settings right of a DocSpace administrator, and the request is also  refused with 403 when the header built from the list grows past the size configured for the installation, 15  KB by default. The change applies to the whole portal at once and is idempotent. Read the current state with  `GET api/2.0/security/csp`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/configure-csp/).

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

api_instance = DocspaceApiSdk::Security::CSPApi.new
opts = {
  csp_requests_dto: DocspaceApiSdk::CspRequestsDto.new # CspRequestsDto | 
}

begin
  # Configure CSP settings
  result = api_instance.configure_csp(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::CSPApi->configure_csp: #{e}"
end
```

#### Using the configure_csp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CspWrapper>, Integer, Hash)> configure_csp_with_http_info(opts)

```ruby
begin
  # Configure CSP settings
  data, status_code, headers = api_instance.configure_csp_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CspWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::CSPApi->configure_csp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **csp_requests_dto** | [**CspRequestsDto**](CspRequestsDto.md) |  | [optional] |

### Return type

[**CspWrapper**](CspWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_csp_settings

> <CspWrapper> get_csp_settings

Get CSP settings

Returns the Content Security Policy this portal serves: `domains`, the external hosts an administrator has  allowed, and `header`, the whole policy value built from them together with the portal's own defaults and the  integrations it has switched on. The operation is anonymous and reachable cross-origin - no token is needed -  because the login and editor front-ends read it before anyone has signed in. It is read-only for the caller,  but it does repair the portal's cached policy when the cache has lost it, so a call can rebuild the header  instead of only reading it. The answer honours `If-Modified-Since`: send back the `Last-Modified` value of an  earlier answer and an unchanged policy comes back as an empty not-modified response rather than a body.  `domains` is an empty list on a portal nobody has configured, while `header` is filled from the defaults even  then. Change the allowed domains with `POST api/2.0/security/csp`, which does need a DocSpace administrator.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-csp-settings/).

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

api_instance = DocspaceApiSdk::Security::CSPApi.new

begin
  # Get CSP settings
  result = api_instance.get_csp_settings
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::CSPApi->get_csp_settings: #{e}"
end
```

#### Using the get_csp_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CspWrapper>, Integer, Hash)> get_csp_settings_with_http_info

```ruby
begin
  # Get CSP settings
  data, status_code, headers = api_instance.get_csp_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CspWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::CSPApi->get_csp_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CspWrapper**](CspWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

