# DocspaceApiSdk::OAuth20DiscoveryApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**handle_options**](OAuth20DiscoveryApi.md#handle_options) | **OPTIONS** /.well-known/oauth-authorization-server |  |


## handle_options

> Object handle_options



For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/handle-options/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

api_instance = DocspaceApiSdk::OAuth20::DiscoveryApi.new

begin
  
  result = api_instance.handle_options
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::DiscoveryApi->handle_options: #{e}"
end
```

#### Using the handle_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> handle_options_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.handle_options_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling OAuth20::DiscoveryApi->handle_options_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

