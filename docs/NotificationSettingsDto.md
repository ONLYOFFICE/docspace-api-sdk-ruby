# DocspaceApiSdk::NotificationSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**NotificationType**](NotificationType.md) | Which kind of notification the flag belongs to, echoed from the request. It is published as a number:  badges, room activity, the daily feed, and the tips. | [optional] |
| **is_enabled** | **Boolean** | Whether the caller receives that kind of notification. It describes the caller's own account and nobody  else's; a fresh account has the badges on and the other three off, because those are subscriptions that  only `POST api/2.0/settings/notification` creates. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::NotificationSettingsDto.new(
  type: null,
  is_enabled: true
)
```
