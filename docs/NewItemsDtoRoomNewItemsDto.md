# DocspaceApiSdk::NewItemsDtoRoomNewItemsDto

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Time** | The date and time when the new item was created. |  |
| **items** | [**Array&lt;RoomNewItemsDto&gt;**](RoomNewItemsDto.md) | The list of items. |  |

## Example

```ruby
require 'docspace-api-sdk'

instance = DocspaceApiSdk::NewItemsDtoRoomNewItemsDto.new(
  date: 2025-01-01T00:00:00Z,
  items: null
)
```
