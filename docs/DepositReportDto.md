# DocspaceApiSdk::DepositReportDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection** | [**Array&lt;DepositDto&gt;**](DepositDto.md) | The top-ups on this page. It is empty for a page past the end of the list as well as for a period in which  nothing was paid into the wallet. | [optional] |
| **offset** | **Integer** | How many top-ups were skipped before this page, echoed from the request so a client need not remember what it  asked for. | [optional] |
| **limit** | **Integer** | How many top-ups one page may hold, echoed from the request; it is 25 unless another value was asked for. A  full page is not proof that more exist - compare `currentPage` with `totalPage`. | [optional] |
| **total_quantity** | **Integer** | How many top-ups match the filters in total, across every page. | [optional] |
| **total_page** | **Integer** | How many pages those top-ups come to at the current `limit`. | [optional] |
| **current_page** | **Integer** | Which of those pages this one is, as the billing service numbers them. Page through by advancing `offset`  rather than this value, which nothing accepts as an argument. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DepositReportDto.new(
  collection: [{id=15342, date=2025-03-14T10:30:00Z, amount=100.0, currency=USD, status=Completed, hasInvoice=true}],
  offset: 0,
  limit: 25,
  total_quantity: 12,
  total_page: 1,
  current_page: 1
)
```
