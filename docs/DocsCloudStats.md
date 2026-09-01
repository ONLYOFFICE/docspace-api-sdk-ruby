# DocspaceApiSdk::DocsCloudStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **period_day** | **Integer** | The length of the statistics period in days. | [optional] |
| **editor** | [**DocsCloudUserStats**](DocsCloudUserStats.md) | The statistics for editor users. | [optional] |
| **viewer** | [**DocsCloudUserStats**](DocsCloudUserStats.md) | The statistics for viewer users. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DocsCloudStats.new(
  period_day: 30,
  editor: null,
  viewer: null
)
```
