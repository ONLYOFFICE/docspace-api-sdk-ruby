# DocspaceApiSdk::SecurityFirebaseApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**doc_register_pusn_notification_device**](SecurityFirebaseApi.md#doc_register_pusn_notification_device) | **POST** /api/2.0/settings/push/docregisterdevice | Save the Documents Firebase device token |
| [**subscribe_documents_push_notification**](SecurityFirebaseApi.md#subscribe_documents_push_notification) | **PUT** /api/2.0/settings/push/docsubscribe | Subscribe to Documents push notification |


## doc_register_pusn_notification_device

> <FireBaseUserWrapper> doc_register_pusn_notification_device(opts)

Save the Documents Firebase device token

Saves the Firebase device token specified in the request for the Documents application.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/doc-register-pusn-notification-device/).

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

api_instance = DocspaceApiSdk::Security::FirebaseApi.new
opts = {
  firebase_requests_dto: DocspaceApiSdk::FirebaseRequestsDto.new # FirebaseRequestsDto | 
}

begin
  # Save the Documents Firebase device token
  result = api_instance.doc_register_pusn_notification_device(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::FirebaseApi->doc_register_pusn_notification_device: #{e}"
end
```

#### Using the doc_register_pusn_notification_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FireBaseUserWrapper>, Integer, Hash)> doc_register_pusn_notification_device_with_http_info(opts)

```ruby
begin
  # Save the Documents Firebase device token
  data, status_code, headers = api_instance.doc_register_pusn_notification_device_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FireBaseUserWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::FirebaseApi->doc_register_pusn_notification_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firebase_requests_dto** | [**FirebaseRequestsDto**](FirebaseRequestsDto.md) |  | [optional] |

### Return type

[**FireBaseUserWrapper**](FireBaseUserWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## subscribe_documents_push_notification

> <FireBaseUserWrapper> subscribe_documents_push_notification(opts)

Subscribe to Documents push notification

Subscribes to the Documents push notification.

For more information, see [api.onlyoffice.com](https://api.onlyoffice.com/docspace/api-backend/usage-api/subscribe-documents-push-notification/).

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

api_instance = DocspaceApiSdk::Security::FirebaseApi.new
opts = {
  firebase_requests_dto: DocspaceApiSdk::FirebaseRequestsDto.new # FirebaseRequestsDto | 
}

begin
  # Subscribe to Documents push notification
  result = api_instance.subscribe_documents_push_notification(opts)
  p result
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::FirebaseApi->subscribe_documents_push_notification: #{e}"
end
```

#### Using the subscribe_documents_push_notification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FireBaseUserWrapper>, Integer, Hash)> subscribe_documents_push_notification_with_http_info(opts)

```ruby
begin
  # Subscribe to Documents push notification
  data, status_code, headers = api_instance.subscribe_documents_push_notification_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FireBaseUserWrapper>
rescue DocspaceApiSdk::ApiError => e
  puts "Error when calling Security::FirebaseApi->subscribe_documents_push_notification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firebase_requests_dto** | [**FirebaseRequestsDto**](FirebaseRequestsDto.md) |  | [optional] |

### Return type

[**FireBaseUserWrapper**](FireBaseUserWrapper.md)

### Authorization

[Basic](../README.md#Basic), [OAuth2](../README.md#OAuth2), [ApiKeyBearer](../README.md#ApiKeyBearer), [asc_auth_key](../README.md#asc_auth_key), [Bearer](../README.md#Bearer), [OpenId](../README.md#OpenId)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

