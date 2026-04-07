# DocspaceApiSdk::TimezonesRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The IANA time zone identifier. |  |
| **display_name** | **String** | The user-friendly name for the time zone. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TimezonesRequestsDto.new(
  id: America/New_York,
  display_name: (UTC-05:00) Eastern Time (US and Canada)
)
```
