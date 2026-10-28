# DocspaceApiSdk::AiSendCustomRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_stream** | **Boolean** | Stream the reply (ndjson) when true, else return a single message. |  |
| **system_prompt** | **String** | Caller-supplied system prompt for this one-turn call. |  |
| **user_message** | [**AiThreadMessageLike**](AiThreadMessageLike.md) |  |  |
| **action_args** | [**AiActionArgs**](AiActionArgs.md) | Per-request engine options: extra tools, reasoning, prompt override. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiSendCustomRequest.new(
  is_stream: null,
  system_prompt: null,
  user_message: null,
  action_args: null
)
```
