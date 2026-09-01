# DocspaceApiSdk::AiAiRegenerateStreamRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | Target thread (must already exist). |  |
| **action_args** | [**AiAiActionArgs**](AiAiActionArgs.md) | Per-request engine options: extra tools, reasoning, prompt override. | [optional] |
| **entity_id** | **String** | Optional entity (room) scope for profile resolution. | [optional] |
| **profile_id** | **String** | Session-level profile override for this request only. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiAiRegenerateStreamRequest.new(
  thread_id: null,
  action_args: null,
  entity_id: null,
  profile_id: null
)
```
