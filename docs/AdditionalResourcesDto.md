# DocspaceApiSdk::AdditionalResourcesDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_docs_enabled** | **Boolean** | Whether the sample documents that ONLYOFFICE ships may be placed in a new user's Documents. Unlike the link  flags below it depends on nothing that has to be configured, so its built-in value is always `true`. | [optional] |
| **help_center_enabled** | **Boolean** | Whether the interface may offer the Help Center entry. It is `false` both when the entry was switched off  for the installation and when the installation configures no Help Center address at all; the addresses  themselves are not part of this answer and arrive in `externalResources` of `GET api/2.0/settings`. | [optional] |
| **feedback_and_support_enabled** | **Boolean** | Whether the interface may offer the Feedback and Support entry, `false` for the same two reasons as  `helpCenterEnabled`. | [optional] |
| **user_forum_enabled** | **Boolean** | Whether the interface may offer the user forum entry, `false` for the same two reasons as  `helpCenterEnabled`. | [optional] |
| **video_guides_enabled** | **Boolean** | Whether the interface may offer the Video Guides entry, `false` for the same two reasons as  `helpCenterEnabled`. | [optional] |
| **license_agreements_enabled** | **Boolean** | Whether the interface may offer the License Agreements entry, `false` for the same two reasons as  `helpCenterEnabled`. | [optional] |
| **last_modified** | **Time** | When these flags were last stored. Flags that were never stored report the moment they were read, and the  answer of the reset operation reports `0001-01-01T00:00:00`. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AdditionalResourcesDto.new(
  start_docs_enabled: true,
  help_center_enabled: true,
  feedback_and_support_enabled: true,
  user_forum_enabled: true,
  video_guides_enabled: true,
  license_agreements_enabled: true,
  last_modified: 2026-01-01T10:00:00
)
```
