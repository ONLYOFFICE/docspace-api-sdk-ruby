# DocspaceApiSdk::ConvertPdfRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form** | **Boolean** | Whether the result is a fillable PDF form: true keeps the form fields of the source as fields to fill in,  false saves a plain PDF. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ConvertPdfRequest.new(
  form: true
)
```
