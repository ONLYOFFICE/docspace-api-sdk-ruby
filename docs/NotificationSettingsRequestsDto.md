# DocspaceApiSdk::NotificationSettingsRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**NotificationType**](NotificationType.md) | The notification to be configured. |  |
| **is_enabled** | **Boolean** | Specifies if the specified notification type is enabled or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::NotificationSettingsRequestsDto.new(
  type: null,
  is_enabled: true
)
```
