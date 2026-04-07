# DocspaceApiSdk::CustomColorThemesSettingsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **themes** | [**Array&lt;CustomColorThemesSettingsItem&gt;**](CustomColorThemesSettingsItem.md) | The list of the custom color themes. | [optional] |
| **selected** | **Integer** | Specifies whether the custom color theme is selected. | [optional] |
| **limit** | **Integer** | The maximum number of the custom color themes. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomColorThemesSettingsDto.new(
  themes: [{"id":1,"name":"Custom Theme"}],
  selected: 1,
  limit: 1
)
```
