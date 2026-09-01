# DocspaceApiSdk::AiAiSendRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_type** | [**AiActionType**](AiActionType.md) | Which AI action to run — selects the assignment slot and action. |  |
| **user_message** | [**AiThreadMessageLike**](AiThreadMessageLike.md) | The user turn to send. |  |
| **action_args** | [**AiAiActionArgs**](AiAiActionArgs.md) | Per-request engine options: extra tools, reasoning, prompt override. | [optional] |
| **entity_id** | **String** | Optional entity (room) scope for profile resolution. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAiSendRequest.new(
  action_type: null,
  user_message: null,
  action_args: null,
  entity_id: null
)
```
