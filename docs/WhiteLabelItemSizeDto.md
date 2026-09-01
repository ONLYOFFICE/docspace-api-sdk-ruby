# DocspaceApiSdk::WhiteLabelItemSizeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aspect_ratio** | **Boolean** | Specifies whether the size is an aspect ratio. | [optional] |
| **fill_area** | **Boolean** | Specifies whether the logo is resized based on the smallest fitting dimension. | [optional] |
| **greater** | **Boolean** | Specifies whether the logo is resized only if it is greater than the size. | [optional] |
| **height** | **Integer** | The logo height, in pixels. | [optional] |
| **ignore_aspect_ratio** | **Boolean** | Specifies whether the logo is resized without preserving the aspect ratio. | [optional] |
| **is_percentage** | **Boolean** | Specifies whether the width and height are expressed as percentages. | [optional] |
| **less** | **Boolean** | Specifies whether the logo is resized only if it is less than the size. | [optional] |
| **limit_pixels** | **Boolean** | Specifies whether the logo is resized using a pixel area count limit. | [optional] |
| **width** | **Integer** | The logo width, in pixels. | [optional] |
| **x** | **Integer** | The X offset from the origin, in pixels. | [optional] |
| **y** | **Integer** | The Y offset from the origin, in pixels. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WhiteLabelItemSizeDto.new(
  aspect_ratio: false,
  fill_area: false,
  greater: false,
  height: 48,
  ignore_aspect_ratio: false,
  is_percentage: false,
  less: false,
  limit_pixels: false,
  width: 422,
  x: 0,
  y: 0
)
```
