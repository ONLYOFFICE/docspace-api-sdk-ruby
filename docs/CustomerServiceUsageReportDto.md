# DocspaceApiSdk::CustomerServiceUsageReportDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection** | [**Array&lt;CustomerServiceUsageDto&gt;**](CustomerServiceUsageDto.md) | A collection of service usage statistics. | [optional] |
| **offset** | **Integer** | The report data offset. | [optional] |
| **limit** | **Integer** | The report data limit. | [optional] |
| **total_quantity** | **Integer** | The total quantity of records in the report. | [optional] |
| **total_page** | **Integer** | The total number of pages in the report. | [optional] |
| **current_page** | **Integer** | The current page number of the report. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomerServiceUsageReportDto.new(
  collection: [{service=backup, totalAmount=49.99}],
  offset: 0,
  limit: 25,
  total_quantity: 1,
  total_page: 1,
  current_page: 1
)
```
