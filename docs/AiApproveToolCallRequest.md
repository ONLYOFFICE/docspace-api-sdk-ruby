# DocspaceApiSdk::AiApproveToolCallRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | **Object** |  |  |
| **allow_always** | **Boolean** | Persist auto-approve for this tool's name. | [optional] |
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

instance = DocspaceApiSdk::AiApproveToolCallRequest.new(
  result: null,
  allow_always: null,
  thread_id: null,
  message_id: null,
  idx: null,
  message: null,
  action_args: null,
  entity_id: null,
  context_entity_id: null,
  profile_id: null
)
```
