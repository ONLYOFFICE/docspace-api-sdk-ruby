# DocspaceApiSdk::DocsCloudUserStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Integer** | The number of active users. | [optional] |
| **internal** | **Integer** | The number of internal users. | [optional] |
| **external** | **Integer** | The number of external users. | [optional] |
| **remaining** | **Integer** | The number of remaining users before the limit is reached. | [optional] |
| **critical_remaining** | **Boolean** | Whether the number of remaining users is critically low. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudUserStats.new(
  active: 10,
  internal: 8,
  external: 2,
  remaining: 90,
  critical_remaining: false
)
```
