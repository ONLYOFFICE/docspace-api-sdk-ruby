# DocspaceApiSdk::AiToolCallData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | Thread the assistant message belongs to. |  |
| **message_id** | **String** | Storage id of the assistant message holding the tool call. |  |
| **idx** | **Float** | Index of the tool-call content part inside `message.content`. |  |
| **message** | [**AiThreadMessageLike**](AiThreadMessageLike.md) | A copy of the assistant message as it was when the tool call surfaced. Optional and ignored: the round resumes from the stored message. Leave it out - a long conversation's copy can push the body past the size limit. | [optional] |
| **action_args** | [**AiActionArgs**](AiActionArgs.md) | Per-request options of the round: extra tools, reasoning, a prompt override and the connected context. | [optional] |
| **entity_id** | **String** | Optional entity (room) scope for profile resolution. | [optional] |
| **context_entity_id** | **String** | The folder or room the user is in. Tools run against it and the model is told it is the user's location; falls back to `entityId` when omitted. | [optional] |
| **profile_id** | **String** | Session-level profile override for this request only. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiToolCallData.new(
  thread_id: 11111111-1111-1111-1111-111111111111,
  message_id: 22222222-2222-2222-2222-222222222222,
  idx: 0,
  message: {role=assistant, content=},
  action_args: {isReasoning=false},
  entity_id: 1234,
  context_entity_id: null,
  profile_id: 00000000-0000-0000-0000-000000000000
)
```
