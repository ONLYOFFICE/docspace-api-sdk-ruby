# DocspaceApiSdk::AiExportTextToDocxRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Document title (also the file name). |  |
| **content** | **String** | Markdown content to convert. |  |
| **folder_id** | [**AiExportTextToDocxRequestFolderId**](AiExportTextToDocxRequestFolderId.md) |  |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiExportTextToDocxRequest.new(
  title: null,
  content: null,
  folder_id: null
)
```
