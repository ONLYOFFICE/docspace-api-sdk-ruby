# DocspaceApiSdk::AiAiToolCallData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | Thread the assistant message belongs to. |  |
| **message_id** | **String** | Storage id of the assistant message holding the tool call. |  |
| **idx** | **Float** | Index of the tool-call content part inside `message.content`. |  |
| **message** | [**AiThreadMessageLike**](AiThreadMessageLike.md) | Snapshot of the assistant message at the time the tool call surfaced. |  |
| **action_args** | [**AiAiActionArgs**](AiAiActionArgs.md) | Per-request engine options: extra tools, reasoning, prompt override. | [optional] |
| **entity_id** | **String** | Optional entity (room) scope for profile resolution. | [optional] |
| **profile_id** | **String** | Session-level profile override for this request only. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAiToolCallData.new(
  thread_id: 11111111-1111-1111-1111-111111111111,
  message_id: 22222222-2222-2222-2222-222222222222,
  idx: 0,
  message: {role=assistant, content=},
  action_args: {isReasoning=false},
  entity_id: 1234,
  profile_id: 00000000-0000-0000-0000-000000000000
)
```
