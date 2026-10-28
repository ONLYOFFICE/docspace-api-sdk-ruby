# DocspaceApiSdk::DocsCloudUsageDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since** | **Time** | The date and time the usage statistics are counted from. | [optional] |
| **active_count** | **Integer** | The number of active users. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudUsageDto.new(
  since: 2024-01-15T10:30:00Z,
  active_count: 10
)
```
