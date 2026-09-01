# DocspaceApiSdk::AiRoomDataLifetimeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_permanently** | **Boolean** | Specifies whether to permanently delete the room data or not. | [optional] |
| **period** | [**AiRoomDataLifetimePeriod**](AiRoomDataLifetimePeriod.md) | Specifies the time period type of the room data lifetime. | [optional] |
| **value** | **Integer** | Specifies the time period value of the room data lifetime. | [optional] |
| **enabled** | **Boolean** | Specifies whether the room data lifetime setting is enabled or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiRoomDataLifetimeDto.new(
  delete_permanently: true,
  period: null,
  value: 33,
  enabled: true
)
```
