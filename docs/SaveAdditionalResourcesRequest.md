# DocspaceApiSdk::SaveAdditionalResourcesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_docs_enabled** | **Boolean** | Whether the getting-started documents are offered. | [optional] |
| **help_center_enabled** | **Boolean** | Whether the help center is linked. | [optional] |
| **feedback_and_support_enabled** | **Boolean** | Whether the feedback and support link is shown. | [optional] |
| **user_forum_enabled** | **Boolean** | Whether the user forum is linked. | [optional] |
| **video_guides_enabled** | **Boolean** | Whether the video guides are linked. | [optional] |
| **license_agreements_enabled** | **Boolean** | Whether the license agreements are linked. | [optional] |
| **last_modified** | **Time** | Accepted for compatibility with earlier clients and not read: the server keeps its own value. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SaveAdditionalResourcesRequest.new(
  start_docs_enabled: true,
  help_center_enabled: true,
  feedback_and_support_enabled: true,
  user_forum_enabled: true,
  video_guides_enabled: true,
  license_agreements_enabled: true,
  last_modified: 2026-01-01T10:00:00
)
```
