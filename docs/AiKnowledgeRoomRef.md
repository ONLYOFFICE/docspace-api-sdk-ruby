# DocspaceApiSdk::AiKnowledgeRoomRef

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud** | **String** | The account the room belongs to; `docspace` for a room of this portal. |  |
| **id** | **String** | The room ID; anything that is not a positive integer is ignored. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiKnowledgeRoomRef.new(
  cloud: docspace,
  id: 1234
)
```
