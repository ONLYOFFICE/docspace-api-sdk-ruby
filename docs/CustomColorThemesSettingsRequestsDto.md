# DocspaceApiSdk::CustomColorThemesSettingsRequestsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **theme** | [**CustomColorThemesSettingsItem**](CustomColorThemesSettingsItem.md) | The custom color theme configuration. | [optional] |
| **selected** | **Integer** | Specifies the optional value indicating the selected custom color theme. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomColorThemesSettingsRequestsDto.new(
  theme: null,
  selected: 1
)
```
