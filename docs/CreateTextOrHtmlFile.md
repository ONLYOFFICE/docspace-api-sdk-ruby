# DocspaceApiSdk::CreateTextOrHtmlFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The file title for text or HTML file. |  |
| **content** | **String** | The text or HTML file contents. | [optional] |
| **create_new_if_exist** | **Boolean** | Specifies whether to create a new text or HTML file if it exists or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::CreateTextOrHtmlFile.new(
  title: Document.txt,
  content: This is the file content,
  create_new_if_exist: false
)
```
