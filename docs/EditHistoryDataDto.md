# DocspaceApiSdk::EditHistoryDataDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **changes_url** | **String** | The URL address of the file with the document changes data. | [optional] |
| **key** | **String** | The document identifier used to unambiguously identify the document file. |  |
| **previous** | [**EditHistoryUrl**](EditHistoryUrl.md) |  | [optional] |
| **token** | **String** | The encrypted signature added to the parameter in the form of a token. | [optional] |
| **url** | **String** | The URL address of the current document version. |  |
| **version** | **Integer** | The document version number. |  |
| **file_type** | **String** | The document extension. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EditHistoryDataDto.new(
  changes_url: https://example.com/changes,
  key: doc1,
  previous: null,
  token: token,
  url: https://example.com/file.docx,
  version: 1,
  file_type: docx
)
```
