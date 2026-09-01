# DocspaceApiSdk::AiWatermarkDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additions** | [**AiWatermarkAdditions**](AiWatermarkAdditions.md) | Specifies whether to display in the watermark: username, user email, user ip-adress, current date, and room name. |  |
| **text** | **String** | The watermark text. | [optional] |
| **rotate** | **Integer** | The watermark text and image rotate. |  |
| **image_scale** | **Integer** | The watermark image scale. |  |
| **image_url** | **String** | The watermark image url. | [optional] |
| **image_height** | **Float** | The watermark image height. |  |
| **image_width** | **Float** | The watermark image width. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiWatermarkDto.new(
  additions: null,
  text: Confidential,
  rotate: 45,
  image_scale: 100,
  image_url: http://localhost/watermark.png,
  image_height: 100,
  image_width: 200
)
```
