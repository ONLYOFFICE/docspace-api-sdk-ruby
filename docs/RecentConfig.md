# DocspaceApiSdk::RecentConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder** | **String** | The folder where the document is stored. | [optional] |
| **title** | **String** | The document title that will be displayed in the Open Recent... menu option. | [optional] |
| **url** | **String** | The absolute URL to the document where it is stored. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::RecentConfig.new(
  folder: folder_123,
  title: Report 2026,
  url: https://portal.example.com/files/recent/report2026.docx
)
```
