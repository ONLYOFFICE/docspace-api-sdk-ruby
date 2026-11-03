# DocspaceApiSdk::AiThreadsAppendUserMessage200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | [**AiThreadMessageLike**](AiThreadMessageLike.md) | The stored message itself - with its storage-assigned `id` and `createdAt` - despite the field name, which is kept for the clients that already read it. The message ID is `messageId.id`. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiThreadsAppendUserMessage200Response.new(
  message_id: null
)
```
