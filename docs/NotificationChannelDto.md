# DocspaceApiSdk::NotificationChannelDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The notification channel name. |  |
| **is_enabled** | **Boolean** | Specifies whether the notification channel is enabled. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::NotificationChannelDto.new(
  name: Email,
  is_enabled: true
)
```
