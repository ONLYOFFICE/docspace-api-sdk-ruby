# DocspaceApiSdk::TenantQuotaSettingsRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **Integer** | The ID of the tenant whose quota is being configured. |  |
| **quota** | **Integer** | The storage quota limit in bytes allocated to the tenant. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantQuotaSettingsRequestsDto.new(
  tenant_id: 1,
  quota: 1048576
)
```
