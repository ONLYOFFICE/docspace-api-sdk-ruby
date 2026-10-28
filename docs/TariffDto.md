# DocspaceApiSdk::TariffDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **open_source** | **Boolean** | Whether the installation runs the open-source build, which has no paid plan at all. This flag and the two  below describe the build rather than the subscription, and all three are left empty for a caller without  the portal-settings right. | [optional] |
| **enterprise** | **Boolean** | Whether the installation runs on an Enterprise licence file, which is what makes the licence operations  under `api/2.0/settings/license` usable. | [optional] |
| **developer** | **Boolean** | Whether the installation runs on a Developer licence, an Enterprise licence meant for embedding rather  than for production use. | [optional] |
| **id** | **Integer** | The identifier of the subscription record itself, for quoting when a charge has to be traced. It is filled  in for a caller with the portal-settings right only, and nothing accepts it as an argument. | [optional] |
| **state** | [**TariffState**](TariffState.md) | How the subscription stands: on trial, paid, inside the grace period that follows the due date, or unpaid.  It is the one field every caller gets, whatever their role, so a client can warn about payment without  needing administrator rights. | [optional] |
| **due_date** | [**ApiDateTime**](ApiDateTime.md) | When the current period ends, in the portal time zone. It is filled in for a room or DocSpace  administrator only, and set to the largest value a date can hold for a subscription that never ends. | [optional] |
| **delay_due_date** | [**ApiDateTime**](ApiDateTime.md) | When the grace period after `dueDate` runs out and the portal is cut off, in the portal time zone. Filled  in under the same conditions as `dueDate`, and equal to it when the plan grants no grace period. | [optional] |
| **license_date** | [**ApiDateTime**](ApiDateTime.md) | When the licence file behind the subscription was issued, in the portal time zone. It is meaningful on a  server installation and filled in for a caller with the portal-settings right only. | [optional] |
| **customer_id** | **String** | The account in the billing system the subscription is charged to, empty for a portal that has never been  billed. Filled in for a caller with the portal-settings right only. | [optional] |
| **quotas** | [**Array&lt;TariffQuotaDto&gt;**](TariffQuotaDto.md) | The quotas the subscription is made of - the plan itself and its add-ons - with the overdue ones listed  alongside the current ones, so an entry here is not proof that it is still being paid for; read each  entry's own `state` for that. Filled in for a caller with the portal-settings right only. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TariffDto.new(
  open_source: false,
  enterprise: true,
  developer: false,
  id: 1,
  state: null,
  due_date: null,
  delay_due_date: null,
  license_date: null,
  customer_id: 00000000-0000-0000-0000-000000000001,
  quotas: [{id=1, quantity=500}]
)
```
