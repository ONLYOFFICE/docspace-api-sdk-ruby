# DocspaceApiSdk::WatermarkRequestDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Specifies whether watermarks are on or off. | [optional] |
| **additions** | [**WatermarkAdditions**](WatermarkAdditions.md) |  | [optional] |
| **text** | **String** | The watermark text. | [optional] |
| **rotate** | **Integer** | The watermark text and image rotate angle. | [optional] |
| **image_scale** | **Integer** | The watermark image scale. | [optional] |
| **image_url** | **String** | The path to the temporary image file. | [optional] |
| **image_height** | **Float** | The watermark image height. | [optional] |
| **image_width** | **Float** | The watermark image width. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WatermarkRequestDto.new(
  enabled: true,
  additions: null,
  text: Confidential,
  rotate: -45,
  image_scale: 100,
  image_url: /tmp/watermark.png,
  image_height: 100.0,
  image_width: 200.0
)
```
