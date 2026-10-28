# DocspaceApiSdk::AiThreadsRegenerateTitleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** |  |  |
| **profile** | [**AiProfile**](AiProfile.md) | Profile used to regenerate the title. |  |
| **entity_meta** | [**AiThreadsOpenOrCreateRequestEntityMeta**](AiThreadsOpenOrCreateRequestEntityMeta.md) |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiThreadsRegenerateTitleRequest.new(
  thread_id: null,
  profile: null,
  entity_meta: null
)
```
