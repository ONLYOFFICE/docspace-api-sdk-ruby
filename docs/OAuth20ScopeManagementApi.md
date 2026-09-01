# DocspaceApiSdk::OAuth20ScopeManagementApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_scopes**](OAuth20ScopeManagementApi.md#get_scopes) | **GET** /api/2.0/scopes | List available OAuth2 scopes |


## get_scopes

> <ScopeResponse> get_scopes

List available OAuth2 scopes

Retrieves a list of all available OAuth2 scopes for the specified tenant. The scopes define the permissions that can be requested by OAuth2 clients. The list is ordered alphabetically, with the 'openid' scope always appearing first.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-scopes/).

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

api_instance = DocspaceApiSdk::OAuth20::ScopeManagementApi.new

begin
  # List available OAuth2 scopes
  result = api_instance.get_scopes
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ScopeManagementApi->get_scopes: #{e}"
end
```

#### Using the get_scopes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScopeResponse>, Integer, Hash)> get_scopes_with_http_info

```ruby
begin
  # List available OAuth2 scopes
  data, status_code, headers = api_instance.get_scopes_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScopeResponse>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::ScopeManagementApi->get_scopes_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ScopeResponse**](ScopeResponse.md)

### Authorization

[x-signature](../README.md#x-signature)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

