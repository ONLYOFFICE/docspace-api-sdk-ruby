# DocspaceApiSdk::TenantWalletSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Specifies whether automatic top-up for the tenant wallet is enabled. | [optional] |
| **min_balance** | **Integer** | The minimum wallet balance at which automatic top-up will be triggered. Must be between 5 and 1000. | [optional] |
| **up_to_balance** | **Integer** | The maximum wallet balance at which automatic top-up will be triggered. Must be between 6 and 5000. | [optional] |
| **currency** | **String** | The three-character ISO 4217 currency symbol. | [optional] |
| **last_modified** | **Time** | The date and time when the tenant wallet settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantWalletSettings.new(
  enabled: true,
  min_balance: 10,
  up_to_balance: 100,
  currency: USD,
  last_modified: 1990-01-01T00:00Z
)
```
