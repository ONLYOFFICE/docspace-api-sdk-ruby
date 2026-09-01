# DocspaceApiSdk::AiAttachmentsLinkToMessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **Array&lt;String&gt;** | Attachment ids to bind. |  |
| **message_id** | **String** | Owning message id. |  |
| **thread_id** | **String** | Owning thread id. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAttachmentsLinkToMessageRequest.new(
  ids: null,
  message_id: null,
  thread_id: null
)
```
