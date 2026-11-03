# DocspaceApiSdk::AiRegenerateStreamRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | Target thread (must already exist). |  |
| **message_id** | **String** | The user message to re-roll from: everything stored after it is deleted. When omitted, or no longer in the thread, the last user message is used. | [optional] |
| **keep_count** | **Integer** | How many messages from the start of the thread to keep, used when `messageId` does not resolve. The message at `keepCount - 1` has to be a user message; otherwise the value is ignored. | [optional] |
| **expected_length** | **Integer** | The thread length the caller saw when it computed `keepCount`. When it differs from the stored length, `keepCount` is discarded and the last user message is used instead. | [optional] |
| **action_args** | [**AiActionArgs**](AiActionArgs.md) | Per-request options of the round: extra tools, reasoning, a prompt override and the connected context. | [optional] |
| **entity_id** | **String** | Optional entity (room) scope for profile resolution. | [optional] |
| **context_entity_id** | **String** | The folder or room the user is in. Tools run against it and the model is told it is the user's location; falls back to `entityId` when omitted. | [optional] |
| **profile_id** | **String** | Session-level profile override for this request only. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiRegenerateStreamRequest.new(
  thread_id: null,
  message_id: null,
  keep_count: null,
  expected_length: null,
  action_args: null,
  entity_id: null,
  context_entity_id: null,
  profile_id: null
)
```
