# DocspaceApiSdk::ConvertSpreadsheetMarginsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **left** | **String** | The left margin of the output PDF file. | [optional] |
| **right** | **String** | The right margin of the output PDF file. | [optional] |
| **top** | **String** | The top margin of the output PDF file. | [optional] |
| **bottom** | **String** | The bottom margin of the output PDF file. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConvertSpreadsheetMarginsRequest.new(
  left: 0.7in,
  right: 0.7in,
  top: 0.75in,
  bottom: 0.75in
)
```
