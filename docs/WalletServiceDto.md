# DocspaceApiSdk::WalletServiceDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The identifier of the quota, which is what the tariff reports as a quota `id` and what a purchase names.  A negative value belongs to a built-in quota rather than one on the price list. |  |
| **title** | **String** | The quota name in the portal language, for printing rather than matching. It is empty when this build  ships no wording for the quota, which is normal for a quota that is not on the public price list. | [optional] |
| **price** | [**PriceDto**](PriceDto.md) | What the quota costs, in the currency resolved for the request. Its `value` is empty for a quota that is  not sold for money, which is what `free`, `trial` and `nonProfit` describe. |  |
| **non_profit** | **Boolean** | Whether this is the non-profit quota, which is granted rather than bought. A portal on it cannot buy any  other plan, so a catalogue asked for plans returns this one alone. |  |
| **free** | **Boolean** | Whether this is the free quota a portal falls back to when nothing is paid for. It has no end date and  the tightest limits of any quota. |  |
| **trial** | **Boolean** | Whether this is the trial quota, which grants the paid limits for a while and then expires. A trial is not  extended by paying - a plan has to be bought instead. |  |
| **features** | [**Array&lt;TenantQuotaFeatureDto&gt;**](TenantQuotaFeatureDto.md) | The features the quota switches on, each with the limit it grants and, on the quota the portal is  actually on, how much of that limit is already used. A feature that is absent is off, so the list is the  whole truth about what the quota includes. |  |
| **users_quota** | [**TenantEntityQuotaSettings**](TenantEntityQuotaSettings.md) | The per-member storage allowance an administrator has set on top of the quota, and whether it is applied  at all. It describes the live portal rather than this quota, so every entry of a catalogue listing repeats  the same values, and it is empty unless the portal is a server installation or its plan includes  statistics. | [optional] |
| **rooms_quota** | [**TenantEntityQuotaSettings**](TenantEntityQuotaSettings.md) | The same kind of per-room storage override, filled in and read the same way as `usersQuota`. | [optional] |
| **ai_agents_quota** | [**TenantEntityQuotaSettings**](TenantEntityQuotaSettings.md) | The same kind of per-agent storage override for AI agents, filled in and read the same way as  `usersQuota`. | [optional] |
| **tenant_custom_quota** | [**TenantQuotaSettings**](TenantQuotaSettings.md) | The storage allowance an administrator has set for the portal as a whole, which caps it below what the  quota grants. Filled in under the same conditions as `usersQuota`. | [optional] |
| **due_date** | **Time** | When the quota runs out, in UTC. It is empty on a quota from the catalogue, which has no date until it is  bought, and on a quota that never expires. | [optional] |
| **inner_services** | [**Array&lt;WalletServiceDto&gt;**](WalletServiceDto.md) | The variants of this service that are folded into it, so a client renders one card per group instead of  one per variant. It is empty when the service has no variants, and always empty in the answer of  `GET api/2.0/portal/payment/walletservice`, which looks one service up on its own. | [optional] |
| **service_name** | **String** | The stable key of the service, which is what the wallet operations take as their `service` argument and  what the usage reports key their entries by. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WalletServiceDto.new(
  id: 1,
  title: Basic Plan,
  price: null,
  non_profit: false,
  free: true,
  trial: false,
  features: [{id=00000000-0000-0000-0000-000000000001, title=Premium Storage}],
  users_quota: null,
  rooms_quota: null,
  ai_agents_quota: null,
  tenant_custom_quota: null,
  due_date: 2024-01-15T10:30:00Z,
  inner_services: [{serviceName=docs-cloud-dev, title=Developer pack}],
  service_name: backup
)
```
