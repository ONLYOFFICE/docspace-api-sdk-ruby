# DocspaceApiSdk::DepositDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The identifier of the top-up, which is what `GET api/2.0/portal/payment/customer/deposits/{id}/invoice` takes  to read its invoice. | [optional] |
| **date** | [**ApiDateTime**](ApiDateTime.md) | When the top-up was booked, as an ISO 8601 timestamp that carries its own offset: that of the portal's time  zone, written as `Z` for a portal in UTC - the zone in which `startDate` and `endDate` without an offset are  read. | [optional] |
| **amount** | **Float** | The amount that went into the wallet, in `currency`. | [optional] |
| **currency** | **String** | The currency `amount` is expressed in, as a three-letter ISO 4217 code - the accounting currency of the  wallet. | [optional] |
| **status** | [**OperationStatus**](OperationStatus.md) | How the top-up ended. A pending one is still being settled and may change later, so only a completed one has  actually raised the balance. | [optional] |
| **has_invoice** | **Boolean** | Whether the billing provider holds an invoice for the payment behind the top-up, which is when  `GET api/2.0/portal/payment/customer/deposits/{id}/invoice` can open it. It is `false` for a top-up whose  payment came without one, and asking for its invoice then fails with 404. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DepositDto.new(
  id: 15342,
  date: null,
  amount: 100.0,
  currency: USD,
  status: null,
  has_invoice: true
)
```
