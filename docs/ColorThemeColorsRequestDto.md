# DocspaceApiSdk::ColorThemeColorsRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accent** | **String** | The accent colour, as a hex code. | [optional] |
| **buttons** | **String** | The button colour, as a hex code. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ColorThemeColorsRequestDto.new(
  accent: #4781D1,
  buttons: #5299E0
)
```
