# DocspaceApiSdk::SubscriptionBalanceInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_cost** | **Float** | The total cost of the current billing period (the sum across all subscription items). | [optional] |
| **currency** | **String** | The three-character ISO 4217 currency symbol of the subscription. | [optional] |
| **period_start** | **Time** | The start of the current billing period. | [optional] |
| **period_end** | **Time** | The end of the current billing period. | [optional] |
| **period_used_until** | **Time** | The boundary of the used part of the period (the moment of the request). | [optional] |
| **days_elapsed** | **Integer** | The number of days elapsed since the start of the period (inclusive). | [optional] |
| **remaining_balance** | **Float** | The unused balance of the subscription, in the subscription currency. | [optional] |
| **remaining_balance_in_wallet_currency** | **Float** | The unused balance of the subscription, converted to the wallet currency. | [optional] |
| **wallet_currency** | **String** | The three-character ISO 4217 currency symbol of the wallet. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SubscriptionBalanceInfo.new(
  total_cost: 120.0,
  currency: USD,
  period_start: 2026-06-01T00:00:00Z,
  period_end: 2026-07-01T00:00:00Z,
  period_used_until: 2026-06-23T14:35:00Z,
  days_elapsed: 23,
  remaining_balance: 87.74,
  remaining_balance_in_wallet_currency: 87.74,
  wallet_currency: USD
)
```
