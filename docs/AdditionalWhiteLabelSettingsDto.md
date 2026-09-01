# DocspaceApiSdk::AdditionalWhiteLabelSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_docs_enabled** | **Boolean** | Specifies if the sample documents are displayed or hidden. |  |
| **help_center_enabled** | **Boolean** | Specifies if the Help Center link is available or not. |  |
| **feedback_and_support_enabled** | **Boolean** | Specifies if the Feedback & Support link is available or not. |  |
| **user_forum_enabled** | **Boolean** | Specifies if the user forum is available or not. |  |
| **video_guides_enabled** | **Boolean** | Specifies if the Video Guides link is available or not. |  |
| **license_agreements_enabled** | **Boolean** | Specifies if the License Agreements link is available or not. |  |
| **is_default** | **Boolean** | Specifies if the additional white label settings are default or not. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AdditionalWhiteLabelSettingsDto.new(
  start_docs_enabled: true,
  help_center_enabled: true,
  feedback_and_support_enabled: true,
  user_forum_enabled: true,
  video_guides_enabled: true,
  license_agreements_enabled: true,
  is_default: false
)
```
