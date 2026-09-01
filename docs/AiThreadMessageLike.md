# DocspaceApiSdk::AiThreadMessageLike

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Storage-assigned message id (absent on inbound drafts). | [optional] |
| **role** | **String** | Message author role. |  |
| **content** | [**AiThreadMessageLikeContent**](AiThreadMessageLikeContent.md) |  |  |
| **created_at** | **String** | Creation timestamp, ISO-8601 on the wire. | [optional] |
| **status** | [**AiThreadMessageLikeStatus**](AiThreadMessageLikeStatus.md) |  | [optional] |
| **metadata** | **Object** | Arbitrary per-message metadata. | [optional] |
| **attachments** | **Array&lt;Object&gt;** | Attachments linked to the message. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiThreadMessageLike.new(
  id: null,
  role: null,
  content: null,
  created_at: null,
  status: null,
  metadata: null,
  attachments: null
)
```
