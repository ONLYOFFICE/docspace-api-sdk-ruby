# DocspaceApiSdk::CustomerMonthlyUsageReportRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Time** | The beginning of the reported period, inclusive. The months are cut in the portal time zone rather than in  UTC, so spending at the turn of a month falls where the portal sees it; defaults to the portal creation date. | [optional] |
| **end_date** | **Time** | The end of the reported period, inclusive. Cut in the portal time zone in the same way as `startDate`, and  defaults to the moment the call is made. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomerMonthlyUsageReportRequestDto.new(
  start_date: 2025-01-01T00:00:00Z,
  end_date: 2025-12-31T23:59:59Z
)
```
