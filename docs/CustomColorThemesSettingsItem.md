# DocspaceApiSdk::CustomColorThemesSettingsItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The custom color theme ID. | [optional] |
| **name** | **String** | The custom color theme name. | [optional] |
| **main** | [**CustomColorThemesSettingsColorItem**](CustomColorThemesSettingsColorItem.md) |  | [optional] |
| **text** | [**CustomColorThemesSettingsColorItem**](CustomColorThemesSettingsColorItem.md) |  | [optional] |

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
