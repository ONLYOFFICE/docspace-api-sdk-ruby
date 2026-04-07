# DocspaceApiSdk::NotificationSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**NotificationType**](NotificationType.md) |  | [optional] |
| **is_enabled** | **Boolean** | Specifies if the notification type is enabled or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::NotificationSettingsDto.new(
  type: null,
  is_enabled: true
)
```
