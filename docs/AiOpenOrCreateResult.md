# DocspaceApiSdk::AiOpenOrCreateResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The thread that was opened, or the one just created. |  |
| **title** | **String** | The title generated for a thread this call created; an empty string when it opened an existing thread. |  |
| **prior_messages** | [**Array&lt;AiThreadMessageLike&gt;**](AiThreadMessageLike.md) | The messages already in the thread - empty for a thread that was just created. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiOpenOrCreateResult.new(
  thread_id: null,
  title: null,
  prior_messages: null
)
```
