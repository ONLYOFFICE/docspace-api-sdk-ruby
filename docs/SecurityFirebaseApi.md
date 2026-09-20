# DocspaceApiSdk::SecurityFirebaseApi

All URIs are relative to *https://your-docspace.onlyoffice.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**doc_register_pusn_notification_device**](SecurityFirebaseApi.md#doc_register_pusn_notification_device) | **POST** /api/2.0/settings/push/docregisterdevice | Register a push device |
| [**subscribe_documents_push_notification**](SecurityFirebaseApi.md#subscribe_documents_push_notification) | **PUT** /api/2.0/settings/push/docsubscribe | Set push subscription |


## doc_register_pusn_notification_device

> <FireBaseUserWrapper> doc_register_pusn_notification_device(opts)

Register a push device

Registers one mobile device of the calling user for the push notifications of the Documents application, by  storing the Firebase token that device was issued together with the initial `isSubscribed` state. The token is  handed out by Firebase to the mobile client, so obtain it there before calling: nothing here checks it, and it  is kept as an opaque string of up to 255 characters. Every signed-in member registers its own devices,  whatever its role - owner, administrator, user or guest - and a registration is bound to the caller and the  current portal, so another member's devices cannot be touched. The call is safe to repeat, but it is not an  update: a token already registered comes back as it stands and `isSubscribed` from the request is ignored, so  switch an existing registration on or off with `PUT api/2.0/settings/push/docsubscribe` instead. What comes  back is the stored registration, with `application` always `doc` and `isSubscribed` as stored. Only a  subscribed device is sent the room activity messages, such as an invitation to a room, a role change, an  archived room or a new document in a room, and only while the installation itself is configured with Firebase  credentials.

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
  # Register a push device
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
  # Register a push device
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

Set push subscription

Switches the push notifications of the Documents application on or off for one already registered device of  the calling user: send that device's Firebase token together with `isSubscribed` true to let the messages  through or false to stop them. The device has to be registered first with  `POST api/2.0/settings/push/docregisterdevice`, and only the subscription state is written - the token is  matched, never changed. Every signed-in member manages its own devices, whatever its role - owner,  administrator, user or guest - and a token that belongs to another member or to another portal is not matched  at all, so nothing of theirs can be switched. Repeating the call with the same pair leaves the registration as  it is. What comes back is the updated registration, while an empty response means no registration of the  caller carries that token and nothing was stored - register the device and call again. A device switched off  keeps its token stored but is left out of the delivery, and the other devices of the same member are  unaffected. Which kinds of notification the account receives at all is a separate setting, read with  `GET api/2.0/settings/notification/{type}`.

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
  # Set push subscription
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
  # Set push subscription
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

