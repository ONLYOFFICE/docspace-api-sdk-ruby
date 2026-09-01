# DocspaceApiSdk::AiThreadsAppendUserMessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** |  |  |
| **message** | [**AiThreadMessageLike**](AiThreadMessageLike.md) | Message to persist (id/createdAt are storage-assigned). |  |
| **profile_id** | **String** |  | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiThreadsAppendUserMessageRequest.new(
  thread_id: null,
  message: null,
  profile_id: null
)
```
