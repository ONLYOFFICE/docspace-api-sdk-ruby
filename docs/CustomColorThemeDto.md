# DocspaceApiSdk::CustomColorThemeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The theme id; the built-in themes have the lowest ids. | [optional] |
| **name** | **String** | The theme name; empty for a custom theme. | [optional] |
| **main** | [**ColorThemeColorsDto**](ColorThemeColorsDto.md) | The accent and button colours of the interface. | [optional] |
| **text** | [**ColorThemeColorsDto**](ColorThemeColorsDto.md) | The colours of the text shown on the accent and on the buttons. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CustomColorThemeDto.new(
  id: 1,
  name: blue,
  main: null,
  text: null
)
```
