# DocspaceApiSdk::AiRoomDataLifetimeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delete_permanently** | **Boolean** | Decides what happens to a file that has grown too old: it is erased outright, or it is moved to the trash of  the account that created the room, from where it can still be brought back. | [optional] |
| **period** | [**AiRoomDataLifetimePeriod**](AiRoomDataLifetimePeriod.md) | The unit the age is counted in. Months and years are counted as calendar ones, so the same number of them  covers a different number of days depending on when the clean-up runs. | [optional] |
| **value** | **Integer** | How many periods a file may stay in the room, counted from the moment it was last changed rather than from the  moment the rule was set. Files that are already older than this are removed by the next clean-up. | [optional] |
| **enabled** | **Boolean** | Switches the rule on and off. Switching it off erases the rule instead of keeping it aside, so afterwards the  room reports no rule at all and the other three values have to be sent again to bring it back. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiRoomDataLifetimeDto.new(
  delete_permanently: false,
  period: null,
  value: 12,
  enabled: true
)
```
