# DocspaceApiSdk::RoomsNotificationsSettingsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rooms_id** | **Object** |  | [optional] |
| **mute** | **Boolean** | Which way the room goes: `true` adds it to the caller silenced list, `false` takes it off again. While a room  is silenced its activity is left out of the hourly and daily digests, the letters it would send at once are  not sent, and its new-item counters are hidden. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomsNotificationsSettingsRequestDto.new(
  rooms_id: null,
  mute: true
)
```
