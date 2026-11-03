# DocspaceApiSdk::AiSendRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_type** | [**AiActionType**](AiActionType.md) | Which AI action to run — selects the assignment slot and action. |  |
| **user_message** | [**AiThreadMessageLike**](AiThreadMessageLike.md) | The user turn to send. |  |
| **action_args** | [**AiActionArgs**](AiActionArgs.md) | Per-request options of the round: extra tools, reasoning, a prompt override and the connected context. | [optional] |
| **entity_id** | **String** | Optional entity (room) scope for profile resolution. | [optional] |
| **context_entity_id** | **String** | The folder or room the user is in. Tools run against it and the model is told it is the user's location; falls back to `entityId` when omitted. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiSendRequest.new(
  action_type: null,
  user_message: null,
  action_args: null,
  entity_id: null,
  context_entity_id: null
)
```
