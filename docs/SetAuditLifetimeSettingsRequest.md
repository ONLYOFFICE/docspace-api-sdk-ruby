# DocspaceApiSdk::SetAuditLifetimeSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login_history_life_time** | **Integer** | How many days login events are kept, from 1 to 180. | [optional] |
| **audit_trail_life_time** | **Integer** | How many days audit trail events are kept, from 1 to 180. | [optional] |
| **last_modified** | **Time** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SetAuditLifetimeSettingsRequest.new(
  login_history_life_time: 180,
  audit_trail_life_time: 90,
  last_modified: 2026-01-01T10:00:00
)
```
