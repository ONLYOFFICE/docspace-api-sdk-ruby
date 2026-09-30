# DocspaceApiSdk::EditHistoryUrl

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The document key of that revision. When the file has no earlier revision the portal generates a fresh key for  the template it falls back to, so the value is not always one an earlier revision ever had. | [optional] |
| **url** | **String** | The address that revision's content is served from. It is meant for the editing service and carries its own  key, which is valid for a limited time. | [optional] |
| **file_type** | **String** | The format of that revision, as an extension without the leading dot. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EditHistoryUrl.new(
  key: doc_v2_20260101,
  url: https://files.example.com/history/doc_v2_20260101.docx,
  file_type: docx
)
```
