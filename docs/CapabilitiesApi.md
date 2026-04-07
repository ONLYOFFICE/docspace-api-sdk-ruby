# DocspaceApiSdk::CapabilitiesApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_portal_capabilities**](CapabilitiesApi.md#get_portal_capabilities) | **GET** /api/2.0/capabilities | Get portal capabilities |


## get_portal_capabilities

> <CapabilitiesWrapper> get_portal_capabilities

Get portal capabilities

Returns the information about portal capabilities.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/get-portal-capabilities/).

### Examples

```ruby
require 'time'
require 'docspace-api-sdk'

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

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

