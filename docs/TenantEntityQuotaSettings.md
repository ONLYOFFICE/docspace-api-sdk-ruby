# DocspaceApiSdk::TenantEntityQuotaSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enable_quota** | **Boolean** | Specifies if the quota is enabled for the tenant entity or not. | [optional] |
| **default_quota** | **Integer** | The default quota of the tenant entity. | [optional] |
| **last_recalculate_date** | **Time** | The date of the last quota recalculation. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantEntityQuotaSettings.new(
  enable_quota: true,
  default_quota: 1000,
  last_recalculate_date: 2024-01-01T00:00:00Z
)
```
