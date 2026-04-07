# DocspaceApiSdk::DraftLocationInteger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder_id** | **Integer** | The InProcess folder ID of the draft. | [optional] |
| **folder_title** | **String** | The InProcess folder title of the draft. | [optional] |
| **file_id** | **Integer** | The draft ID. | [optional] |
| **file_title** | **String** | The draft title. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::DraftLocationInteger.new(
  folder_id: 10,
  folder_title: Draft Folder,
  file_id: 123,
  file_title: Draft Document
)
```
