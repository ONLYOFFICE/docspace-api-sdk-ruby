# DocspaceApiSdk::AiThreadsOpenOrCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** |  | [optional] |
| **profile** | [**AiProfile**](AiProfile.md) | Profile the title generation runs on. |  |
| **profile_id** | **String** |  |  |
| **first_message** | [**AiThreadMessageLike**](AiThreadMessageLike.md) | First user message a fresh thread derives its title from. |  |
| **entity_id** | **String** | Opaque scope token persisted on a freshly created thread. | [optional] |
| **entity_meta** | [**AiThreadsOpenOrCreateRequestEntityMeta**](AiThreadsOpenOrCreateRequestEntityMeta.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiThreadsOpenOrCreateRequest.new(
  thread_id: null,
  profile: null,
  profile_id: null,
  first_message: null,
  entity_id: null,
  entity_meta: null
)
```
