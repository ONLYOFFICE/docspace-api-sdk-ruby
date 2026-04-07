# DocspaceApiSdk::EditHistoryUrl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The document identifier of the previous version of the document. | [optional] |
| **url** | **String** | The url address of the previous version of the document. | [optional] |
| **file_type** | **String** | The document extension. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EditHistoryUrl.new(
  key: doc_v2_20260101,
  url: https://files.example.com/history/doc_v2_20260101.docx,
  file_type: .docx
)
```
