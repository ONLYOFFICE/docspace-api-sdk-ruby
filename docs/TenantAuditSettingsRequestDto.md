# DocspaceApiSdk::TenantAuditSettingsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **settings** | [**SetAuditLifetimeSettingsRequest**](SetAuditLifetimeSettingsRequest.md) | The login history and audit trail lifetimes to store. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantAuditSettingsRequestDto.new(
  settings: null
)
```
