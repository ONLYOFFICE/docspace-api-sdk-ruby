# DocspaceApiSdk::StartNewChatBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | The initial user message to send to the AI assistant. |  |
| **context_folder_id** | **Integer** | The optional collection of file identifiers to attach as context for the AI model. | [optional] |
| **files** | [**Array&lt;ContinueChatBodyFilesInner&gt;**](ContinueChatBodyFilesInner.md) | The list of attached files. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::StartNewChatBody.new(
  message: Hello, can you help me with this document?,
  context_folder_id: 123,
  files: [{"id":1,"type":"file"}]
)
```
