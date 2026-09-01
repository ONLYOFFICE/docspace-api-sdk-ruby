# DocspaceApiSdk::AdditionalWhiteLabelSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_docs_enabled** | **Boolean** | Specifies if the sample documents are displayed or hidden. | [optional] |
| **help_center_enabled** | **Boolean** | Specifies if the Help Center link is available or not. | [optional] |
| **feedback_and_support_enabled** | **Boolean** | Specifies if the Feedback & Support link is available or not. | [optional] |
| **user_forum_enabled** | **Boolean** | Specifies if the user forum is available or not. | [optional] |
| **video_guides_enabled** | **Boolean** | Specifies if the Video Guides link is available or not. | [optional] |
| **license_agreements_enabled** | **Boolean** | Specifies if the License Agreements link is available or not. | [optional] |
| **last_modified** | **Time** | The timestamp indicating when the settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AdditionalWhiteLabelSettings.new(
  start_docs_enabled: true,
  help_center_enabled: true,
  feedback_and_support_enabled: true,
  user_forum_enabled: true,
  video_guides_enabled: true,
  license_agreements_enabled: true,
  last_modified: 1990-01-01T00:00:00Z
)
```
