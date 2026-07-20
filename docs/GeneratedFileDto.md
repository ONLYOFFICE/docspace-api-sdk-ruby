# DocspaceApiSdk::GeneratedFileDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the created file. | [optional] |
| **title** | **String** | The file title, including extension. |  |
| **extension** | **String** | The file extension. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::GeneratedFileDto.new(
  id: 42,
  title: Report.docx,
  extension: .docx
)
```
