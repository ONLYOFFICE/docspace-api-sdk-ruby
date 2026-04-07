# DocspaceApiSdk::EditHistoryDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The document ID. | [optional] |
| **key** | **String** | The document identifier used to unambiguously identify the document file. | [optional] |
| **version** | **Integer** | The document version number. | [optional] |
| **version_group** | **Integer** | The document version group. | [optional] |
| **user** | [**EditHistoryAuthor**](EditHistoryAuthor.md) |  | [optional] |
| **created** | [**ApiDateTime**](ApiDateTime.md) |  | [optional] |
| **changes_history** | **String** | The file history changes in the string format. | [optional] |
| **changes** | [**Array&lt;EditHistoryChangesWrapper&gt;**](EditHistoryChangesWrapper.md) | The list of file history changes. | [optional] |
| **server_version** | **String** | The current server version number. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::EditHistoryDto.new(
  id: 123,
  key: doc-key-abc123,
  version: 2,
  version_group: 1,
  user: null,
  created: null,
  changes_history: Changes history text,
  changes: [{"user":{"id":"123","name":"John Doe"},"created":"2021-01-01T00:00:00Z"}],
  server_version: 8.0.1
)
```
