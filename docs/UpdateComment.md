# DocspaceApiSdk::UpdateComment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Integer** | The version the comment belongs to, as reported by `GET api/2.0/files/file/{fileId}/edit/history`. A version  that does not exist is rejected as an invalid request. |  |
| **comment** | **String** | The note that explains what changed in that version, as the version history shows it. An empty text clears the  note, and a longer one is cut rather than refused, so read the stored text from the answer. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateComment.new(
  version: 1,
  comment: This is a comment
)
```
