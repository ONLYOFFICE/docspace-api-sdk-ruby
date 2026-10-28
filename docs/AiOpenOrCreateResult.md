# DocspaceApiSdk::AiOpenOrCreateResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The thread that was opened, or the one just created. |  |
| **title** | **String** | Empty string for existing threads — the engine doesn't re-fetch. |  |
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
