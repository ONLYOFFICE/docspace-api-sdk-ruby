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
  id: 22222222-2222-2222-2222-222222222222,
  role: user,
  content: null,
  created_at: 2026-01-01T00:00:00.000Z,
  status: null,
  metadata: {},
  attachments: [55555555-5555-5555-5555-555555555555]
)
```
