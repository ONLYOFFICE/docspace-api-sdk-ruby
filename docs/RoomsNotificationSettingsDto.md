# DocspaceApiSdk::RoomsNotificationSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disabled_rooms** | **Array&lt;Object&gt;** | The identifiers of the silenced rooms, in the order they were added, and belonging to the caller's own  account alone. They are kept as opaque values, so a numeric identifier of a portal room and a string  identifier of a room on a connected third-party account both appear here, and an identifier stays on the  list after its room is deleted. An empty list means nothing is silenced. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomsNotificationSettingsDto.new(
  disabled_rooms: [1, 2, 3]
)
```
