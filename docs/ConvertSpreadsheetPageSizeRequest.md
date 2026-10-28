# DocspaceApiSdk::ConvertSpreadsheetPageSizeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **height** | **String** | The page height of the output PDF file. | [optional] |
| **width** | **String** | The page width of the output PDF file. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConvertSpreadsheetPageSizeRequest.new(
  height: 11.69in,
  width: 8.27in
)
```
