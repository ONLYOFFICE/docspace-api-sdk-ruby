# DocspaceApiSdk::RoomsNotificationsSettingsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rooms_id** | **Object** |  | [optional] |
| **mute** | **Boolean** | Specifies whether the notifications will be delivered to the specified room or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomsNotificationsSettingsRequestDto.new(
  rooms_id: null,
  mute: true
)
```
