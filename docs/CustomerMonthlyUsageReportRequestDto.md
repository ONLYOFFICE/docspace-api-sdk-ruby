# DocspaceApiSdk::CustomerMonthlyUsageReportRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Time** | The report start date. | [optional] |
| **end_date** | **Time** | The report end date. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomerMonthlyUsageReportRequestDto.new(
  start_date: 2025-01-01T00:00:00Z,
  end_date: 2025-12-31T23:59:59Z
)
```
