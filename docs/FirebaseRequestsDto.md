# DocspaceApiSdk::FirebaseRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **firebase_device_token** | **String** | The Firebase device token. | [optional] |
| **is_subscribed** | **Boolean** | Specifies whether the user is subscribed to the push notifications or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FirebaseRequestsDto.new(
  firebase_device_token: dGhpc2lzYXRva2Vu...,
  is_subscribed: true
)
```
