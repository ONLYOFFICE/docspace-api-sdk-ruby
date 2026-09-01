# DocspaceApiSdk::TenantAuditSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login_history_life_time** | **Integer** | The login history lifetime. | [optional] |
| **audit_trail_life_time** | **Integer** | The audit trail lifetime. | [optional] |
| **last_modified** | **Time** | The timestamp indicating when the settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantAuditSettings.new(
  login_history_life_time: 180,
  audit_trail_life_time: 180,
  last_modified: 1990-01-01T00:00:00Z
)
```
