# DocspaceApiSdk::WalletServiceDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The quota ID. |  |
| **title** | **String** | The quota title. |  |
| **price** | [**PriceDto**](PriceDto.md) |  |  |
| **non_profit** | **Boolean** | Specifies if the quota is nonprofit or not. |  |
| **free** | **Boolean** | Specifies if the quota is free or not. |  |
| **trial** | **Boolean** | Specifies if the quota is trial or not. |  |
| **features** | [**Array&lt;TenantQuotaFeatureDto&gt;**](TenantQuotaFeatureDto.md) | The list of tenant quota features. |  |
| **users_quota** | [**TenantEntityQuotaSettings**](TenantEntityQuotaSettings.md) |  | [optional] |
| **rooms_quota** | [**TenantEntityQuotaSettings**](TenantEntityQuotaSettings.md) |  | [optional] |
| **ai_agents_quota** | [**TenantEntityQuotaSettings**](TenantEntityQuotaSettings.md) |  | [optional] |
| **tenant_custom_quota** | [**TenantQuotaSettings**](TenantQuotaSettings.md) |  | [optional] |
| **due_date** | **Time** | The due date. | [optional] |
| **inner_services** | [**Array&lt;WalletServiceDto&gt;**](WalletServiceDto.md) | The list of inner services. | [optional] |
| **service_name** | **String** | The service name. | [optional] |

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
  due_date: 2024-01-15T10:30Z,
  inner_services: [{"title":"File Storage","size":1073741824}],
  service_name: backup
)
```
