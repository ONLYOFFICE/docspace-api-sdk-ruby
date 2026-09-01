# DocspaceApiSdk::FileReferenceData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_key** | **String** | The unique document identifier used by the service to get a link to the file. | [optional] |
| **instance_id** | **String** | The unique system identifier. | [optional] |
| **room_id** | **String** | Room ID | [optional] |
| **can_edit_room** | **Boolean** | Specifies if the room can be edited out or not. | [optional] |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::FileReferenceData.new(
  file_key: doc_2026_02_001,
  instance_id: 00000000-0000-0000-0000-000000000000,
  room_id: 1,
  can_edit_room: true
)
```
