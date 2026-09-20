# DocspaceApiSdk::CheckUploadRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **files_title** | **Array&lt;String&gt;** | The names to test, extensions included, spelled as they would be sent to the upload. Matching ignores case,  and a name repeated in the list is answered once. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CheckUploadRequest.new(
  files_title: [file1.docx, file2.pdf, file3.xlsx]
)
```
