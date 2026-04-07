# DocspaceApiSdk::TenantQuotaSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enable_quota** | **Boolean** | Specifies if the tenant quota is enabled or not. | [optional] |
| **quota** | **Integer** | The tenant quota. | [optional] |
| **last_recalculate_date** | **Time** | The date of the last tenant quota recalculation. | [optional] |
| **last_modified** | **Time** | The timestamp indicating when the settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantQuotaSettings.new(
  enable_quota: true,
  quota: 10737418240,
  last_recalculate_date: 1990-01-01T00:00Z,
  last_modified: 1990-01-01T00:00Z
)
```
