# DocspaceApiSdk::OAuth20DiscoveryApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**handle_options**](OAuth20DiscoveryApi.md#handle_options) | **OPTIONS** /.well-known/oauth-authorization-server | Probe the discovery endpoint |


## handle_options

> handle_options

Probe the discovery endpoint

Answers the CORS preflight for the OAuth 2.0 Authorization Server metadata endpoint. The endpoint needs no authentication and reads nothing from the request: it always answers 200 with an empty body, and the CORS headers are added by the surrounding filter chain rather than by this handler. It changes no state, and it does not return the authorization server metadata document - issue a GET against the same path for that.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/handle-options/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::OAuth20::DiscoveryApi.new

begin
  # Probe the discovery endpoint
  api_instance.handle_options
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::DiscoveryApi->handle_options: #{e}"
end
```

#### Using the handle_options_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> handle_options_with_http_info

```ruby
begin
  # Probe the discovery endpoint
  data, status_code, headers = api_instance.handle_options_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::DiscoveryApi->handle_options_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

