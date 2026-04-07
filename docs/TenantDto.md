# DocspaceApiSdk::TenantDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **affiliate_id** | **String** | The affiliate ID. | [optional] |
| **tenant_alias** | **String** | The tenant alias. | [optional] |
| **calls** | **Boolean** | Specifies if the calls are available for this tenant or not. | [optional] |
| **campaign** | **String** | The tenant campaign. | [optional] |
| **creation_date_time** | **Time** | The tenant creation date and time. | [optional][readonly] |
| **hosted_region** | **String** | The hosted region. | [optional] |
| **tenant_id** | **Integer** | The tenant ID. | [optional][readonly] |
| **industry** | [**TenantIndustry**](TenantIndustry.md) |  | [optional] |
| **language** | **String** | The tenant language. | [optional] |
| **last_modified** | **Time** | The date and time when the tenant was last modified. | [optional] |
| **mapped_domain** | **String** | The tenant mapped domain. | [optional] |
| **name** | **String** | The tenant name. | [optional] |
| **owner_id** | **String** | The tenant owner ID. | [optional] |
| **payment_id** | **String** | The tenant payment ID. | [optional] |
| **spam** | **Boolean** | Specifies if the ONLYOFFICE newsletter is allowed or not. | [optional] |
| **status** | [**TenantStatus**](TenantStatus.md) |  | [optional] |
| **status_change_date** | **Time** | The date and time when the tenant status was changed. | [optional][readonly] |
| **time_zone** | **String** | The tenant time zone. | [optional] |
| **trusted_domains** | **Array&lt;String&gt;** | The list of tenant trusted domains. | [optional] |
| **trusted_domains_raw** | **String** | The tenant trusted domains in the string format. | [optional] |
| **trusted_domains_type** | [**TenantTrustedDomainsType**](TenantTrustedDomainsType.md) |  | [optional] |
| **version** | **Integer** | The tenant version | [optional] |
| **version_changed** | **Time** | The date and time when the tenant version was changed. | [optional] |
| **region** | **String** | The tenant AWS region. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantDto.new(
  affiliate_id: AFF12345,
  tenant_alias: my-company,
  calls: true,
  campaign: WINTER2024,
  creation_date_time: 2024-01-15T10:30Z,
  hosted_region: EU,
  tenant_id: 1,
  industry: null,
  language: en-US,
  last_modified: 2024-02-10T14:20Z,
  mapped_domain: mycompany.example.com,
  name: My Company,
  owner_id: 00000000-0000-0000-0000-000000000001,
  payment_id: PAY123456789,
  spam: false,
  status: null,
  status_change_date: 2024-01-15T10:30Z,
  time_zone: America/New_York,
  trusted_domains: ["example.com","trusted.com"],
  trusted_domains_raw: example.com,trusted.com,
  trusted_domains_type: null,
  version: 2,
  version_changed: 2024-02-01T09:00Z,
  region: us-east-1
)
```
