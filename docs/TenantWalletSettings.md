# DocspaceApiSdk::TenantWalletSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Specifies whether automatic top-up for the tenant wallet is enabled. | [optional] |
| **min_balance** | **Integer** | The minimum wallet balance at which automatic top-up will be triggered. Must be between 5 and 1000. | [optional] |
| **up_to_balance** | **Integer** | The maximum wallet balance at which automatic top-up will be triggered. Must be between 6 and 5000. | [optional] |
| **currency** | **String** | The three-character ISO 4217 currency symbol. | [optional] |
| **low_balance_threshold** | **Integer** | The wallet balance below which a low-balance notification is sent. Set internally, not user-configurable. | [optional] |
| **low_balance_notified** | **Boolean** | Specifies whether a low-balance notification has already been sent for the current dip below ASC.Core.Tenants.TenantWalletSettings.LowBalanceThreshold. | [optional] |
| **last_modified** | **Time** | The date and time when the tenant wallet settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantWalletSettings.new(
  enabled: true,
  min_balance: 10,
  up_to_balance: 100,
  currency: USD,
  low_balance_threshold: 1,
  low_balance_notified: false,
  last_modified: 1990-01-01T00:00:00Z
)
```
