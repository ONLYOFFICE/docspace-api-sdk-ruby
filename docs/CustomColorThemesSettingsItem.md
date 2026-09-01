# DocspaceApiSdk::CustomColorThemesSettingsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The custom color theme ID. | [optional] |
| **name** | **String** | The custom color theme name. | [optional] |
| **main** | [**CustomColorThemesSettingsColorItem**](CustomColorThemesSettingsColorItem.md) | The custom color theme main colors. | [optional] |
| **text** | [**CustomColorThemesSettingsColorItem**](CustomColorThemesSettingsColorItem.md) | The custom color theme text colors. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomColorThemesSettingsItem.new(
  id: 1,
  name: blue,
  main: null,
  text: null
)
```
