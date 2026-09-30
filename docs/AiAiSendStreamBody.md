# DocspaceApiSdk::AiAiSendStreamBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | Target thread; a new one is created (with an auto title) when omitted. | [optional] |
| **user_message** | [**AiThreadMessageLike**](AiThreadMessageLike.md) | The user turn to send. |  |
| **action_args** | [**AiAiActionArgs**](AiAiActionArgs.md) | Per-request engine options: extra tools, reasoning, prompt override. | [optional] |
| **entity_id** | **String** | Optional entity (room) scope for profile resolution. | [optional] |
| **profile_id** | **String** | Session-level profile override for this request only. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAiSendStreamBody.new(
  thread_id: 11111111-1111-1111-1111-111111111111,
  user_message: {role=user, content=Summarise the attached contract.},
  action_args: {isReasoning=false},
  entity_id: 1234,
  profile_id: 00000000-0000-0000-0000-000000000000
)
```
