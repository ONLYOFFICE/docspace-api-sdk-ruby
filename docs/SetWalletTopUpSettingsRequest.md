# DocspaceApiSdk::SetWalletTopUpSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether the payment method on file is charged automatically when the wallet balance runs low. | [optional] |
| **min_balance** | **Integer** | The balance below which a top-up is charged, in `currency`. | [optional] |
| **up_to_balance** | **Integer** | The balance a top-up brings the wallet up to, in `currency`. | [optional] |
| **currency** | **String** | The three-letter ISO 4217 code both amounts are expressed in; it has to be the currency of the wallet. | [optional] |
| **low_balance_threshold** | **Integer** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |
| **low_balance_notified** | **Boolean** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |
| **last_modified** | **Time** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetWalletTopUpSettingsRequest.new(
  enabled: true,
  min_balance: 10,
  up_to_balance: 100,
  currency: USD,
  low_balance_threshold: 10,
  low_balance_notified: false,
  last_modified: 2026-01-01T10:00:00
)
```
