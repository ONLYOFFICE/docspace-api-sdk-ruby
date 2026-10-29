# DocspaceApiSdk::PortalModuleEventsApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**send_module_event**](PortalModuleEventsApi.md#send_module_event) | **POST** /api/2.0/portal/moduleevents | Send a module event |


## send_module_event

> send_module_event(opts)

Send a module event

Delivers one event from an integration module to the browsers of the portal named by the request host, over  the socket connection every open DocSpace page already keeps. No user session is needed: the caller  identifies itself with the module key in the `X-Module-Key` header, which the installation administrator  issues and allows for a list of portals. Set exactly one addressee - `user`, the e-mail of a portal user,  reaches only that user's open sessions without any subscription, and `room` reaches everyone in the portal  subscribed to `plugin-{module}-{room}`. Browsers receive `plugin:{module}:{event}` with `{ message }`, the  module name taken from the key, never from the body. The call only hands the event over: nothing is stored,  a user with no open session never sees it, and a repeated call delivers it again. Keep `message` a signal to  re-read, such as an unread count. The body is limited to 64 KB. A missing or unknown key fails with 401, a  portal the key is not allowed for with 403, an unknown or inactive user with 404, and invalid names or not  exactly one addressee with 400.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/send-module-event/).

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

api_instance = DocspaceApiSdk::Portal::ModuleEventsApi.new
opts = {
  x_module_key: 'mk_Q2hhdE1vZHVsZUtleTIwMjYtMTAtMjM', # String | The secret key the installation administrator issued to the module. It is not a user or portal credential:  the module the event belongs to is the one this key is configured for, so the key is the module's identity.
  send_module_event_request: DocspaceApiSdk::SendModuleEventRequest.new # SendModuleEventRequest | The event to deliver.
}

begin
  # Send a module event
  api_instance.send_module_event(opts)
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::ModuleEventsApi->send_module_event: #{e}"
end
```

#### Using the send_module_event_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> send_module_event_with_http_info(opts)

```ruby
begin
  # Send a module event
  data, status_code, headers = api_instance.send_module_event_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Portal::ModuleEventsApi->send_module_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_module_key** | **String** | The secret key the installation administrator issued to the module. It is not a user or portal credential:  the module the event belongs to is the one this key is configured for, so the key is the module's identity. | [optional] |
| **send_module_event_request** | [**SendModuleEventRequest**](SendModuleEventRequest.md) | The event to deliver. | [optional] |

### Return type

nil (empty response body)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

