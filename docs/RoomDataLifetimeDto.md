# DocspaceApiSdk::RoomDataLifetimeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_permanently** | **Boolean** | Specifies whether to permanently delete the room data or not. | [optional] |
| **period** | [**RoomDataLifetimePeriod**](RoomDataLifetimePeriod.md) | Specifies the time period type of the room data lifetime. | [optional] |
| **value** | **Integer** | Specifies the time period value of the room data lifetime. | [optional] |
| **enabled** | **Boolean** | Specifies whether the room data lifetime setting is enabled or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RoomDataLifetimeDto.new(
  delete_permanently: true,
  period: null,
  value: 33,
  enabled: true
)
```
