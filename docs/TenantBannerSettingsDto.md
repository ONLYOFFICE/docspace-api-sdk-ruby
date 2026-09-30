# DocspaceApiSdk::TenantBannerSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hidden** | **Boolean** | Whether the promotional banners are hidden from every user of the portal. The flag is only honoured on a  self-hosted installation; a SaaS portal keeps showing the banners whatever is stored here. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantBannerSettingsDto.new(
  hidden: true
)
```
