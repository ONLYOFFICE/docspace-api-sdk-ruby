# DocspaceApiSdk::CapabilitiesApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_portal_capabilities**](CapabilitiesApi.md#get_portal_capabilities) | **GET** /api/2.0/capabilities | Get portal capabilities |


## get_portal_capabilities

> <CapabilitiesWrapper> get_portal_capabilities

Get portal capabilities

Returns the sign-in methods this portal offers, which a login client needs before anyone has signed in: LDAP  authentication and its domain, the external identity providers to show, the SAML single sign-on URL and its  label, and whether the built-in identity server is available. No token is needed and nothing has to be called  first - the operation is open to unauthenticated callers, answers even while the portal's payment has lapsed,  and is read-only and idempotent. `providers` holds provider keys such as `google` or `facebook`, ordered for  the country detected from the caller's IP address and reduced to the ones this installation has configured;  pass one of them as `provider` to `POST api/2.0/authentication`. An empty `providers` means external sign-in  is off and an empty `ssoUrl` means single sign-on is off; a capability whose settings cannot be read is  reported as disabled rather than failing the call, so a false flag means the method is not offered, not that  it is unknown. The answer describes the portal and never a user, and carries none of the configuration behind  these methods: an administrator reads that from `GET api/2.0/settings/ssov2` and  `GET api/2.0/settings/authservice`.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-capabilities/).

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

api_instance = DocspaceApiSdk::Capabilities::CapabilitiesApi.new

begin
  # Get portal capabilities
  result = api_instance.get_portal_capabilities
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Capabilities::CapabilitiesApi->get_portal_capabilities: #{e}"
end
```

#### Using the get_portal_capabilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapabilitiesWrapper>, Integer, Hash)> get_portal_capabilities_with_http_info

```ruby
begin
  # Get portal capabilities
  data, status_code, headers = api_instance.get_portal_capabilities_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapabilitiesWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Capabilities::CapabilitiesApi->get_portal_capabilities_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CapabilitiesWrapper**](CapabilitiesWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

