# DocspaceApiSdk::WhiteLabelItemSizeDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aspect_ratio** | **Boolean** | Whether the numbers are to be read as an aspect ratio rather than as pixels. Always `false` on the sizes  this API reports. | [optional] |
| **fill_area** | **Boolean** | Whether an image would be scaled to cover the box rather than to fit inside it. Always `false` here. | [optional] |
| **greater** | **Boolean** | Whether scaling would apply only to an image larger than the box. Always `false` here. | [optional] |
| **height** | **Integer** | The height of the box in pixels - one of the two fields of this object that carry information. | [optional] |
| **ignore_aspect_ratio** | **Boolean** | Whether scaling would be allowed to distort the image. Always `false` here. | [optional] |
| **is_percentage** | **Boolean** | Whether `width` and `height` are to be read as percentages. Always `false` here, so both are pixels. | [optional] |
| **less** | **Boolean** | Whether scaling would apply only to an image smaller than the box. Always `false` here. | [optional] |
| **limit_pixels** | **Boolean** | Whether the box is to be read as a total pixel-area budget instead of as two dimensions. Always `false`  here. | [optional] |
| **width** | **Integer** | The width of the box in pixels - the other field of this object that carries information. | [optional] |
| **x** | **Integer** | The horizontal offset of the box from the origin. Always `0` here. | [optional] |
| **y** | **Integer** | The vertical offset of the box from the origin. Always `0` here. | [optional] |

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
