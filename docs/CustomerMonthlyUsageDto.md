# DocspaceApiSdk::CustomerMonthlyUsageDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **year** | **Integer** | The year the month belongs to. Months are cut in the portal time zone, so a movement at the edge of a  month falls where the portal sees it and not where UTC does. | [optional] |
| **month** | **Integer** | The month itself, January being 1. Only months that had spending appear at all, so a gap in the list is a  month with nothing in it rather than missing data. | [optional] |
| **currency** | **String** | The currency `totalAmount` is expressed in, as a three-letter ISO 4217 code - the accounting currency of  the wallet. | [optional] |
| **total_amount** | **Float** | What the month came to across every service, as a positive amount spent rather than a signed balance. | [optional] |
| **operation_count** | **Integer** | How many separate movements that total was added up from, for a client that wants to show the weight  behind a figure. The movements themselves are in `GET api/2.0/portal/payment/customer/operations`. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomerMonthlyUsageDto.new(
  year: 2025,
  month: 1,
  currency: USD,
  total_amount: 199.98,
  operation_count: 3
)
```
