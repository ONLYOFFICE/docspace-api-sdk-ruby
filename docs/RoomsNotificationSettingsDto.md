# DocspaceApiSdk::RoomsNotificationSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disabled_rooms** | **Array&lt;Object&gt;** | The list of rooms with the disabled notifications. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomsNotificationSettingsDto.new(
  disabled_rooms: [1, 2, 3]
)
```
