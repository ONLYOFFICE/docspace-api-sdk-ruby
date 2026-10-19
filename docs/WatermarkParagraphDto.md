# DocspaceApiSdk::WatermarkParagraphDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **align** | **Integer** | The paragraph align. | [optional] |
| **runs** | [**Array&lt;WatermarkTextRunDto&gt;**](WatermarkTextRunDto.md) | The list of text runs from the paragraph. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::WatermarkParagraphDto.new(
  align: 2,
  runs: [{fill=[124, 124, 124], text=CONFIDENTIAL, fontSize=26}]
)
```
