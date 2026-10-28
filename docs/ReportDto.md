# DocspaceApiSdk::ReportDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection** | [**Array&lt;OperationDto&gt;**](OperationDto.md) | The movements on this page - top-ups, charges, refunds and corrections alike, newest first. It is empty  for a page past the end of the report as well as for a period in which nothing happened. | [optional] |
| **offset** | **Integer** | How many movements were skipped before this page, echoed from the request so a client need not remember  what it asked for. | [optional] |
| **limit** | **Integer** | How many movements one page may hold, echoed from the request; it is 25 unless another value was asked  for. A full page is not proof that more exist - compare `currentPage` with `totalPage`. | [optional] |
| **total_quantity** | **Integer** | How many movements match the filters in total, across every page. | [optional] |
| **total_page** | **Integer** | How many pages those movements come to at the current `limit`. | [optional] |
| **current_page** | **Integer** | Which of those pages this one is, as the billing service numbers them. Page through by advancing `offset`  rather than this value, which nothing accepts as an argument. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ReportDto.new(
  collection: [{service=disk-storage, debit=14.0}],
  offset: 0,
  limit: 25,
  total_quantity: 137,
  total_page: 6,
  current_page: 1
)
```
