# DocspaceApiSdk::CheckUploadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **files_title** | **Array&lt;String&gt;** | The list of file titles. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CheckUploadRequest.new(
  files_title: [file1.docx, file2.pdf, file3.xlsx]
)
```
