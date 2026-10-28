# DocspaceApiSdk::UpcomingPaymentDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The quota that is going to be charged. When a switch to another quota is scheduled, this is the quota  being switched to, so it can differ from what `GET api/2.0/portal/tariff` reports for today. | [optional] |
| **name** | **String** | The quota's stable key, which is the same identifier the wallet operations use for a service. | [optional] |
| **title** | **String** | The quota name in the portal language, meant to be printed on an invoice preview. | [optional] |
| **unit_of_measure** | **String** | What `quantity` counts, in the portal language - seats, administrators, gigabytes. It is empty for a quota  that is simply on or off. | [optional] |
| **quantity** | **Integer** | How much is going to be charged for, which is the quantity scheduled for the next period when one has been  scheduled and today's quantity otherwise. | [optional] |
| **wallet** | **Boolean** | Whether the charge is paid out of the portal wallet rather than from the subscription. | [optional] |
| **due_date** | [**ApiDateTime**](ApiDateTime.md) | When the charge falls due, in the portal time zone. | [optional] |
| **amount** | **Float** | What the charge comes to: the unit price of the quota multiplied by `quantity`. Taxes are not part of it,  and a quota with no price of its own is not listed at all rather than listed with a zero. | [optional] |
| **currency** | **String** | The currency `amount` is expressed in, as a three-letter ISO 4217 code. It follows the portal's billing  account, so every entry of one answer carries the same code. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpcomingPaymentDto.new(
  id: -11,
  name: storage,
  title: Business plan,
  unit_of_measure: admins,
  quantity: 100,
  wallet: true,
  due_date: null,
  amount: 14,
  currency: USD
)
```
