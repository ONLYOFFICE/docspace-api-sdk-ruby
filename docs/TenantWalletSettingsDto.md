# DocspaceApiSdk::TenantWalletSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether the payment method on file is charged automatically when the wallet balance runs low. | [optional] |
| **min_balance** | **Integer** | The balance below which a top-up is charged, in `currency`; 0 while top-up has never been configured. | [optional] |
| **up_to_balance** | **Integer** | The balance a top-up brings the wallet up to, in `currency`; 0 while top-up has never been configured. | [optional] |
| **currency** | **String** | The three-letter ISO 4217 code both amounts are expressed in, or `null` while top-up has never been configured. | [optional] |
| **low_balance_threshold** | **Integer** | The wallet balance below which the portal sends its low-balance warning. The portal maintains it; it cannot be  set by a request. | [optional] |
| **low_balance_notified** | **Boolean** | Whether the low-balance warning has already been sent for the current dip below `lowBalanceThreshold`. The  portal maintains it, and switching top-up on re-arms it. | [optional] |
| **last_modified** | **Time** | When the settings were last stored; when they were never stored, the moment they were read instead. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantWalletSettingsDto.new(
  enabled: true,
  min_balance: 10,
  up_to_balance: 100,
  currency: USD,
  low_balance_threshold: 1,
  low_balance_notified: false,
  last_modified: 2026-01-01T00:00:00Z
)
```
