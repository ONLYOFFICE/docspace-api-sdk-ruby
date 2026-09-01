# DocspaceApiSdk::WatermarkOnDraw

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **width** | **Float** | Defines the watermark width measured in millimeters. | [optional] |
| **height** | **Float** | Defines the watermark height measured in millimeters. | [optional] |
| **margins** | **Array&lt;Integer&gt;** | Defines the watermark margins measured in millimeters. | [optional] |
| **fill** | **String** | Defines the watermark fill color. | [optional] |
| **rotate** | **Integer** | Defines the watermark rotation angle. | [optional] |
| **transparent** | **Float** | Defines the watermark transparency percentage. | [optional] |
| **paragraphs** | [**Array&lt;Paragraph&gt;**](Paragraph.md) | The list of paragraphs of the watermark. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WatermarkOnDraw.new(
  width: 150,
  height: 100,
  margins: [10, 10, 10, 10],
  fill: #FF0000,
  rotate: 45,
  transparent: 0.4,
  paragraphs: [{align=2, runs=[{fill=[124, 124, 124], text=CONFIDENTIAL, fontSize=26}]}]
)
```
