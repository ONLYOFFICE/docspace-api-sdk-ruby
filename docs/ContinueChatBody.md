# DocspaceApiSdk::ContinueChatBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | The user message to append to the conversation. |  |
| **context_folder_id** | **Integer** | The optional collection of file identifiers to attach as context for the AI model. | [optional] |
| **files** | [**Array&lt;ContinueChatBodyFilesInner&gt;**](ContinueChatBodyFilesInner.md) | The list of attached files. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::ContinueChatBody.new(
  message: Summarize this document for me,
  context_folder_id: 123,
  files: [{"id":1,"type":"file"}]
)
```
