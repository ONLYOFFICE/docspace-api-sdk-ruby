# DocspaceApiSdk::ConvertSpreadsheetLayoutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ignore_print_area** | **Boolean** | Whether the print area chosen in the spreadsheet is ignored; false converts only that area. | [optional] |
| **orientation** | **String** | The page orientation of the output PDF file: portrait or landscape. | [optional] |
| **fit_to_height** | **Integer** | The number of pages the converted area is fitted into in height; 0 does not fit it. | [optional] |
| **scale** | **Integer** | The scale of the output PDF file, in percent. | [optional] |
| **fit_to_width** | **Integer** | The number of pages the converted area is fitted into in width; 0 does not fit it. | [optional] |
| **headings** | **Boolean** | Whether the row and column headings are printed in the output PDF file. | [optional] |
| **grid_lines** | **Boolean** | Whether the grid lines are printed in the output PDF file. | [optional] |
| **margins** | [**ConvertSpreadsheetMarginsRequest**](ConvertSpreadsheetMarginsRequest.md) | The margins of the output PDF file. | [optional] |
| **page_size** | [**ConvertSpreadsheetPageSizeRequest**](ConvertSpreadsheetPageSizeRequest.md) | The page size of the output PDF file. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConvertSpreadsheetLayoutRequest.new(
  ignore_print_area: false,
  orientation: landscape,
  fit_to_height: 0,
  scale: 100,
  fit_to_width: 1,
  headings: false,
  grid_lines: false,
  margins: null,
  page_size: null
)
```
