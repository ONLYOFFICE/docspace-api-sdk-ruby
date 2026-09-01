# DocspaceApiSdk::FeedbackConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The absolute URL to the website address which will be opened when clicking the Feedback & Support menu button. | [optional] |
| **visible** | **Boolean** | Shows or hides the Feedback & Support menu button. | [optional][readonly] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FeedbackConfig.new(
  url: https://portal.example.com/support,
  visible: true
)
```
