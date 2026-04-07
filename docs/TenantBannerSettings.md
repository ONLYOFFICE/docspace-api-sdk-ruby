# DocspaceApiSdk::TenantBannerSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hidden** | **Boolean** | The banners visibility flag. | [optional] |
| **last_modified** | **Time** | The timestamp indicating when the settings were last modified. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::TenantBannerSettings.new(
  hidden: false,
  last_modified: 1990-01-01T00:00Z
)
```
