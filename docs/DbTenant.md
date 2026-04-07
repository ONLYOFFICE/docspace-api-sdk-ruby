# DocspaceApiSdk::DbTenant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The tenant ID. | [optional] |
| **name** | **String** | The tenant name. | [optional] |
| **_alias** | **String** | The tenant alias. | [optional] |
| **mapped_domain** | **String** | Mapped domain | [optional] |
| **version** | **Integer** | The tenant version. | [optional] |
| **version_changed** | **Time** | The Version_changed field. | [optional] |
| **version_changed** | **Time** | The date and time when the version was changed. | [optional] |
| **language** | **String** | The tenant language. | [optional] |
| **time_zone** | **String** | The tenant time zone. | [optional] |
| **trusted_domains_raw** | **String** | The tenant trusted domains raw. | [optional] |
| **trusted_domains_enabled** | [**TenantTrustedDomainsType**](TenantTrustedDomainsType.md) |  | [optional] |
| **status** | [**TenantStatus**](TenantStatus.md) |  | [optional] |
| **status_changed** | **Time** | The date and time when the tenant status was changed. | [optional] |
| **status_changed_hack** | **Time** | The hacked date and time when the tenant status was changed. | [optional] |
| **creation_date_time** | **Time** | The tenant creation date. | [optional] |
| **owner_id** | **String** | The tenant owner ID. | [optional] |
| **payment_id** | **String** | The tenant payment ID. | [optional] |
| **industry** | [**TenantIndustry**](TenantIndustry.md) |  | [optional] |
| **last_modified** | **Time** | The date and time when the tenant was last modified. | [optional] |
| **calls** | **Boolean** | Specifies if the calls are available for the current tenant or not. | [optional] |
| **partner** | [**DbTenantPartner**](DbTenantPartner.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DbTenant.new(
  id: 1,
  name: Tenant,
  _alias: tenant,
  mapped_domain: tenant.example.com,
  version: 5,
  version_changed: 2025-01-01T10:00Z,
  version_changed: 2025-01-01T10:00Z,
  language: en-US,
  time_zone: UTC,
  trusted_domains_raw: tenant.exapmle.com, example.com,
  trusted_domains_enabled: null,
  status: null,
  status_changed: 2025-01-01T12:00Z,
  status_changed_hack: 2025-01-01T12:00Z,
  creation_date_time: 2025-01-01T12:00Z,
  owner_id: 00000000-0000-0000-0000-000000000000,
  payment_id: pay_1234567890,
  industry: null,
  last_modified: 2025-02-01T08:30Z,
  calls: true,
  partner: null
)
```
