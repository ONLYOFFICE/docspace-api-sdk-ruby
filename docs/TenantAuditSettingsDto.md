# DocspaceApiSdk::TenantAuditSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login_history_life_time** | **Integer** | How many days login events are kept, from 1 to 180; 180 when the portal never changed it. | [optional] |
| **audit_trail_life_time** | **Integer** | How many days audit trail events are kept, from 1 to 180; 180 when the portal never changed it. | [optional] |
| **last_modified** | **Time** | When the pair was last stored; when it never was, the moment it was read instead. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantAuditSettingsDto.new(
  login_history_life_time: 180,
  audit_trail_life_time: 90,
  last_modified: 2026-01-01T00:00:00Z
)
```
