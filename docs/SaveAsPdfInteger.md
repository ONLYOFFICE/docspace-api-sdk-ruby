# DocspaceApiSdk::SaveAsPdfInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The folder ID to save the file as PDF. |  |
| **title** | **String** | The file title to save as PDF. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::SaveAsPdfInteger.new(
  folder_id: 1,
  title: My Document
)
```
