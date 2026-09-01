# DocspaceApiSdk::Run

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fill** | **Array&lt;Integer&gt;** | The fill color of the text run in RGB format. | [optional] |
| **text** | **String** | The run text. | [optional] |
| **font_size** | **String** | The font size of the text run in points. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::Run.new(
  fill: [124, 124, 124],
  text: CONFIDENTIAL,
  font_size: 26
)
```
