# DocspaceApiSdk::TenantAiAccessSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Specifies whether AI functionality is enabled for the tenant.  Set to `true` to enable all AI features or `false` to disable them tenant-wide. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantAiAccessSettingsDto.new(
  enabled: false
)
```
