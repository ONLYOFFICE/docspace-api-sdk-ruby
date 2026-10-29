# DocspaceApiSdk::AiApproveToolCallRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | **Object** |  |  |
| **allow_always** | **Boolean** | Persist auto-approve for this tool's name. | [optional] |
| **thread_id** | **String** | Thread the assistant message belongs to. |  |
| **message_id** | **String** | Storage id of the assistant message holding the tool call. |  |
| **idx** | **Float** | Index of the tool-call content part inside `message.content`. |  |
| **message** | [**AiThreadMessageLike**](AiThreadMessageLike.md) | Snapshot of the assistant message at the time the tool call surfaced. Optional and ignored: the engine resumes from the stored message, and the copy inflated the body past the parser limit (Bug 84608). | [optional] |
| **action_args** | [**AiActionArgs**](AiActionArgs.md) | Per-request engine options: extra tools, reasoning, prompt override. | [optional] |
| **entity_id** | **String** | Optional entity (room) scope for profile resolution. | [optional] |
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
  profile_id: null
)
```
