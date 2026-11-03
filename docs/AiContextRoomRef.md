# DocspaceApiSdk::AiContextRoomRef

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cloud** | **String** | The account the room belongs to; `docspace` for a room of this portal. |  |
| **id** | **String** | The room ID. |  |
| **skills** | [**Array&lt;AiRoomSkill&gt;**](AiRoomSkill.md) | The skills of the room the round may use, as `GET api/2.0/ai/context/get-room-skills` lists them. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::AiContextRoomRef.new(
  cloud: docspace,
  id: 1234,
  skills: []
)
```
