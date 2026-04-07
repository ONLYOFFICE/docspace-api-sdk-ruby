# DocspaceApiSdk::WatermarkDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additions** | [**WatermarkAdditions**](WatermarkAdditions.md) |  |  |
| **text** | **String** | The watermark text. | [optional] |
| **rotate** | **Integer** | The watermark text and image rotate. |  |
| **image_scale** | **Integer** | The watermark image scale. |  |
| **image_url** | **String** | The watermark image url. | [optional] |
| **image_height** | **Float** | The watermark image height. |  |
| **image_width** | **Float** | The watermark image width. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WatermarkDto.new(
  additions: null,
  text: Confidential,
  rotate: 45,
  image_scale: 100,
  image_url: http://localhost/watermark.png,
  image_height: 100.0,
  image_width: 200.0
)
```
