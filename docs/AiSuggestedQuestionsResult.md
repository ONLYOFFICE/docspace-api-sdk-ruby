# DocspaceApiSdk::AiSuggestedQuestionsResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | `ready` - the questions are there; `pending` - they are being generated and arrive over the socket, ask again later; `unavailable` - the attachment is not a form that can have any. |  |
| **questions** | [**Array&lt;AiSuggestedQuestion&gt;**](AiSuggestedQuestion.md) | The questions; empty unless `status` is `ready`. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiSuggestedQuestionsResult.new(
  status: null,
  questions: null
)
```
