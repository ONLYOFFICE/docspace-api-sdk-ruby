# DocspaceApiSdk::AdditionalWhiteLabelSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_docs_enabled** | **Boolean** | Whether the sample documents that ONLYOFFICE ships may be placed in a new user's Documents. Unlike the link  flags below it depends on nothing that has to be configured, so its built-in value is always `true`. |  |
| **help_center_enabled** | **Boolean** | Whether the interface may offer the Help Center entry. It is `false` both when the entry was switched off  for the installation and when the installation configures no Help Center address at all; the addresses  themselves are not part of this answer and arrive in `externalResources` of `GET api/2.0/settings`. |  |
| **feedback_and_support_enabled** | **Boolean** | Whether the interface may offer the Feedback and Support entry, `false` for the same two reasons as  `helpCenterEnabled`. |  |
| **user_forum_enabled** | **Boolean** | Whether the interface may offer the user forum entry, `false` for the same two reasons as  `helpCenterEnabled`. |  |
| **video_guides_enabled** | **Boolean** | Whether the interface may offer the Video Guides entry, `false` for the same two reasons as  `helpCenterEnabled`. |  |
| **license_agreements_enabled** | **Boolean** | Whether the interface may offer the License Agreements entry, `false` for the same two reasons as  `helpCenterEnabled`. |  |
| **is_default** | **Boolean** | Whether all six flags still hold the values the installation starts out with. It turns `false` as soon as  one of them is saved differently and `true` again after `DELETE api/2.0/settings/rebranding/additional`.  Because a link flag starts out off when no address is configured for it, `true` does not mean every entry  is on. |  |

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
