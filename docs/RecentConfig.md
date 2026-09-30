# DocspaceApiSdk::RecentConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder** | **String** | The folder shown next to the entry, as a readable name rather than an id. | [optional] |
| **title** | **String** | The name shown for the entry. | [optional] |
| **url** | **String** | Where the entry opens. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RecentConfig.new(
  folder: My documents,
  title: Report 2026.docx,
  url: https://portal.example.com/doceditor?fileid=512
)
```
