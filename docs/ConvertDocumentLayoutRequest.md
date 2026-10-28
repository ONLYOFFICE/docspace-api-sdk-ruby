# DocspaceApiSdk::ConvertDocumentLayoutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **draw_place_holders** | **Boolean** | Whether an empty form field shows its placeholder text in the result; false leaves it blank. | [optional] |
| **draw_form_highlight** | **Boolean** | Whether form fields keep their highlight colour in the result; false draws them without it. | [optional] |
| **is_print** | **Boolean** | Whether the print mode is turned on. It only applies to a docx converted into pdf: with the print mode off  the highlight flag does nothing and the placeholder flag saves the forms in the pdf. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConvertDocumentLayoutRequest.new(
  draw_place_holders: true,
  draw_form_highlight: false,
  is_print: true
)
```
