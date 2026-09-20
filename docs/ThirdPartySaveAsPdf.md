# DocspaceApiSdk::ThirdPartySaveAsPdf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **String** | The folder the PDF is created in; the caller has to be allowed to create files there. |  |
| **title** | **String** | The name of the PDF, without an extension - `.pdf` is appended. Left empty, the name of the source file is  reused with its extension replaced. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ThirdPartySaveAsPdf.new(
  folder_id: 1,
  title: My Document
)
```
