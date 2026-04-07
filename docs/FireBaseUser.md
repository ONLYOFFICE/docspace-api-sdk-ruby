# DocspaceApiSdk::FireBaseUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The Firebase user ID. | [optional] |
| **user_id** | **String** | The user ID. | [optional] |
| **tenant_id** | **Integer** | The tenant ID. | [optional] |
| **firebase_device_token** | **String** | The Firebase device token. | [optional] |
| **application** | **String** | The Firebase application. | [optional] |
| **is_subscribed** | **Boolean** | Specifies if the user is subscribed to the push notifications or not. | [optional] |
| **tenant** | [**DbTenant**](DbTenant.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FireBaseUser.new(
  id: 1,
  user_id: 00000000-0000-0000-0000-000000000000,
  tenant_id: 1,
  firebase_device_token: token123,
  application: web,
  is_subscribed: true,
  tenant: null
)
```
