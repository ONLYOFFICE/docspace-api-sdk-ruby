# DocspaceApiSdk::ReportDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection** | [**Array&lt;OperationDto&gt;**](OperationDto.md) | A collection of operations. | [optional] |
| **offset** | **Integer** | The report data offset. | [optional] |
| **limit** | **Integer** | The report data limit. | [optional] |
| **total_quantity** | **Integer** | The total quantity of operations in the report. | [optional] |
| **total_page** | **Integer** | The total number of pages in the report. | [optional] |
| **current_page** | **Integer** | The current page number of the report. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ReportDto.new(
  collection: [{"id":"op1","type":"payment"}],
  offset: 1,
  limit: 1,
  total_quantity: 1,
  total_page: 1,
  current_page: 1
)
```
