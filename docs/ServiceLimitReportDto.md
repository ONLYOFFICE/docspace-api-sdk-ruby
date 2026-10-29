# DocspaceApiSdk::ServiceLimitReportDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection** | [**Array&lt;ServiceLimitDto&gt;**](ServiceLimitDto.md) | The limits of this page, one per user; empty when no limit applies to any user or the page is past the end. | [optional] |
| **offset** | **Integer** | The number of limits skipped before this page. | [optional] |
| **limit** | **Integer** | The page size the page was read with. | [optional] |
| **total_page** | **Integer** | The number of pages the whole list takes at this page size. | [optional] |
| **current_page** | **Integer** | The number of this page, starting from 1. | [optional] |
| **total_quantity** | **Integer** | The number of users with a limit in force across all pages. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ServiceLimitReportDto.new(
  collection: [{id=42, serviceGroupName=ai-services, customerAccountNumber=12345, scope=Custom, userId=3f2504e0-4f89-11d3-9a0c-0305e82c3301, amountValue=40, currency=USD, quantityValue=null, serviceUnit=null, period=Day, periodEnd=2026-10-18T23:59:59Z, usageFrom=null, enabled=true, created=2026-09-01T10:30:00Z, modified=2026-09-15T08:00:00Z, usage={periodStart=2026-10-18T00:00:00Z, periodEnd=2026-10-18T23:59:59Z, amountConsumed=12.5, amountAvailable=27.5, quantityConsumed=0, quantityAvailable=null}}],
  offset: 0,
  limit: 25,
  total_page: 3,
  current_page: 1,
  total_quantity: 60
)
```
