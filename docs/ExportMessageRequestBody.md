# DocspaceApiSdk::ExportMessageRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | [**ExportChatRequestBodyFolderId**](ExportChatRequestBodyFolderId.md) |  |  |
| **title** | **String** | The file name (without extension) to use for the exported document. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ExportMessageRequestBody.new(
  folder_id: null,
  title: Message Export
)
```
