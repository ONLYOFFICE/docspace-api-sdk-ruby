# DocspaceApiSdk::ExportMessageRequestBodyInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The identifier of the destination folder where the exported document will be saved. |  |
| **title** | **String** | The file name (without extension) to use for the exported document. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ExportMessageRequestBodyInteger.new(
  folder_id: 123,
  title: Message Export
)
```
