# DocspaceApiSdk::TenantAiAccessSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Specifies whether AI functionality is enabled for the tenant.  When set to `false`, all AI features (chat, agents, vectorization) are disabled tenant-wide. | [optional] |
| **last_modified** | **Time** | The timestamp indicating when the settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantAiAccessSettings.new(
  enabled: true,
  last_modified: 1990-01-01T00:00Z
)
```
