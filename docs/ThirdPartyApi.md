# DocspaceApiSdk::ThirdPartyApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_third_party_code**](ThirdPartyApi.md#get_third_party_code) | **GET** /api/2.0/thirdparty/{provider} | Get the code request |


## get_third_party_code

> <ObjectWrapper> get_third_party_code(provider)

Get the code request

Returns a request to get the confirmation code from URL.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-third-party-code/).

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

api_instance = DocspaceApiSdk::ThirdParty::ThirdPartyApi.new
provider = DocspaceApiSdk::LoginProvider::Facebook # LoginProvider | The identity provider used for authentication.

begin
  # Get the code request
  result = api_instance.get_third_party_code(provider)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling ThirdParty::ThirdPartyApi->get_third_party_code: #{e}"
end
```

#### Using the get_third_party_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectWrapper>, Integer, Hash)> get_third_party_code_with_http_info(provider)

```ruby
begin
  # Get the code request
  data, status_code, headers = api_instance.get_third_party_code_with_http_info(provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling ThirdParty::ThirdPartyApi->get_third_party_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **LoginProvider** | The identity provider used for authentication. |  |

### Return type

[**ObjectWrapper**](ObjectWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

