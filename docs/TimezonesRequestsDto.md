# DocspaceApiSdk::TimezonesRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The IANA identifier of the time zone. This is the value the portal time zone is set to, so pass it on  unchanged to `PUT api/2.0/settings/timeandlanguage`. |  |
| **display_name** | **String** | The label to show for the zone, carrying its UTC offset as it stood when the list was built. The offset is a  snapshot rather than a rule, so a zone observing daylight saving reads differently at other times of the  year; sort and match on `id` instead. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TimezonesRequestsDto.new(
  id: America/New_York,
  display_name: (UTC-05:00) Eastern Time (US and Canada)
)
```
