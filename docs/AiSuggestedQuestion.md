# DocspaceApiSdk::AiSuggestedQuestion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **question** | **String** | The question as it is shown to the user. |  |
| **prompt** | **String** | The prompt sent to the chat when the user picks the question. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiSuggestedQuestion.new(
  question: Which region had the most responses?,
  prompt: Group the submissions by region and show the count for each.
)
```
