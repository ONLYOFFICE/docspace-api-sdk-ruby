# DocspaceApiSdk::FirebaseDeviceDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The id of the registration. | [optional] |
| **user_id** | **String** | The account the device belongs to; always the caller. | [optional] |
| **tenant_id** | **Integer** | The portal the registration belongs to; always the current one. | [optional] |
| **firebase_device_token** | **String** | The Firebase token the device was issued, as it was sent at registration. | [optional] |
| **application** | **String** | The application the registration is for; `doc` for the Documents application. | [optional] |
| **is_subscribed** | **Boolean** | Whether the device is currently sent push notifications. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FirebaseDeviceDto.new(
  id: 1,
  user_id: 00000000-0000-0000-0000-000000000000,
  tenant_id: 1,
  firebase_device_token: fcm-token-123,
  application: doc,
  is_subscribed: true
)
```
