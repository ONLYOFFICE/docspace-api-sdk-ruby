# DocspaceApiSdk::TenantQuota

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **Integer** | The tenant ID. | [optional] |
| **name** | **String** | The tenant name. | [optional] |
| **price** | **Float** | The tenant price. | [optional] |
| **price_currency_symbol** | **String** | The tenant price currency symbol. | [optional] |
| **price_iso_currency_symbol** | **String** | The tenant price three-character ISO 4217 currency symbol. | [optional] |
| **product_id** | **String** | The tenant product ID. | [optional] |
| **service_name** | **String** | The service name. | [optional] |
| **service_group** | **String** | The service group. | [optional] |
| **visible** | **Boolean** | Specifies if the tenant quota is visible or not. | [optional] |
| **wallet** | **Boolean** | Specifies if the tenant quota applies to the wallet or not | [optional] |
| **due_date** | **Time** | The quota due date. | [optional] |
| **features** | **String** | The tenant quota features. | [optional] |
| **max_file_size** | **Integer** | The tenant maximum file size. | [optional] |
| **max_total_size** | **Integer** | The tenant maximum total size. | [optional] |
| **count_user** | **Integer** | The number of portal users. | [optional] |
| **count_room_admin** | **Integer** | The number of portal room administrators. | [optional] |
| **users_in_room** | **Integer** | The number of room users. | [optional] |
| **count_room** | **Integer** | The number of rooms. | [optional] |
| **non_profit** | **Boolean** | Specifies if the tenant quota is nonprofit or not. | [optional] |
| **trial** | **Boolean** | Specifies if the tenant quota is trial or not. | [optional] |
| **free** | **Boolean** | Specifies if the tenant quota is free or not. | [optional] |
| **update** | **Boolean** | Specifies if the tenant quota is updated or not. | [optional] |
| **audit** | **Boolean** | Specifies if the audit trail is available or not. | [optional] |
| **docs_edition** | **Boolean** | Specifies if ONLYOFFICE Docs is included in the tenant quota or not. | [optional] |
| **ldap** | **Boolean** | Specifies if the LDAP settings are available or not. | [optional] |
| **sso** | **Boolean** | Specifies if the SSO settings are available or not. | [optional] |
| **statistic** | **Boolean** | Specifies if the statistics settings are available or not. | [optional] |
| **branding** | **Boolean** | Specifies if the branding settings are available or not. | [optional] |
| **customization** | **Boolean** | Specifies if the customization settings are available or not. | [optional] |
| **lifetime** | **Boolean** | Specifies if the license has the lifetime settings or not. | [optional] |
| **automation_api** | **Boolean** | Specifies if the Automation API is available or not. | [optional] |
| **custom** | **Boolean** | Specifies if the custom domain URL is available or not. | [optional] |
| **restore** | **Boolean** | Specifies if the restore is enabled or not. | [optional] |
| **oauth** | **Boolean** | Specifies if Oauth is available or not. | [optional] |
| **content_search** | **Boolean** | Specifies if the content search is available or not. | [optional] |
| **third_party** | **Boolean** | Specifies if the third-party accounts linking is available or not. | [optional] |
| **year** | **Boolean** | Specifies if the tenant quota is yearly subscription or not. | [optional] |
| **count_free_backup** | **Integer** | The number of free backups within a month. | [optional] |
| **backup** | **Boolean** | Specifies if the backup enabled as a wallet service or not. | [optional] |
| **count_ai_agent** | **Integer** | The number of AI agents. | [optional] |
| **ai_tools** | **Boolean** | Specifies if the AI tools enabled as a wallet service or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantQuota.new(
  tenant_id: 1,
  name: Default,
  price: 10.0,
  price_currency_symbol: $,
  price_iso_currency_symbol: USD,
  product_id: 64,
  service_name: backup,
  service_group: services,
  visible: true,
  wallet: true,
  due_date: null,
  features: audit,ldap,sso,
  max_file_size: 25000000,
  max_total_size: 25000000000,
  count_user: 100,
  count_room_admin: 10,
  users_in_room: 50,
  count_room: 500,
  non_profit: false,
  trial: false,
  free: false,
  update: false,
  audit: true,
  docs_edition: true,
  ldap: true,
  sso: true,
  statistic: true,
  branding: true,
  customization: true,
  lifetime: false,
  automation_api: true,
  custom: false,
  restore: true,
  oauth: true,
  content_search: true,
  third_party: true,
  year: true,
  count_free_backup: 1,
  backup: true,
  count_ai_agent: 5,
  ai_tools: true
)
```
