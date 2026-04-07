# DocspaceApiSdk::UpdateComment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Integer** | The comment version. |  |
| **comment** | **String** | The comment text. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::UpdateComment.new(
  version: 1,
  comment: This is a comment
)
```
