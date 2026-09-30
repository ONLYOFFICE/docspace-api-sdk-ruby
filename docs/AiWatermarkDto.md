# DocspaceApiSdk::AiWatermarkDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additions** | [**AiWatermarkAdditions**](AiWatermarkAdditions.md) | Which details of the reader and of the room are stamped alongside the text. The values combine, so a number  that is not a member on its own is the sum of several of them, and 0 means that only the text is stamped. |  |
| **text** | **String** | The fixed line drawn over the document, printed before the details selected alongside it. Empty when the room  stamps an image instead. | [optional] |
| **rotate** | **Integer** | How far the stamp is turned, in degrees, with negative values turning it anticlockwise and 0 drawing it  horizontally. |  |
| **image_scale** | **Integer** | How large the image is drawn, as a percentage of its own size. It is 0 for a text watermark, where nothing is  scaled. |  |
| **image_url** | **String** | The address the stamped picture is served from, inside the storage of the room. Empty for a text watermark. | [optional] |
| **image_height** | **Float** | The height the picture is drawn with, in pixels, kept together with the width so that the proportions survive.  It is 0 for a text watermark. |  |
| **image_width** | **Float** | The width the picture is drawn with, in pixels, kept together with the height so that the proportions survive.  It is 0 for a text watermark. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiWatermarkDto.new(
  additions: null,
  text: Confidential,
  rotate: -45,
  image_scale: 100,
  image_url: https://portal.example.com/storage/watermark_a1b2c3.png,
  image_height: 100,
  image_width: 200
)
```
