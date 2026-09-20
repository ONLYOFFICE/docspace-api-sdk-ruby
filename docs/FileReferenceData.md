# DocspaceApiSdk::FileReferenceData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_key** | **String** | The id of the document inside the portal named below. | [optional] |
| **instance_id** | **String** | The portal the document lives in. A reference whose value is not this portal cannot be resolved by the file  key and falls back to the path or the link. | [optional] |
| **room_id** | **String** | The room the document lies in. It is filled in only for a document opened in a virtual data room, and stays  empty everywhere else. | [optional] |
| **can_edit_room** | **Boolean** | Whether the caller may manage the room named above; it is only meaningful together with it. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileReferenceData.new(
  file_key: 512,
  instance_id: 1,
  room_id: 42,
  can_edit_room: true
)
```
